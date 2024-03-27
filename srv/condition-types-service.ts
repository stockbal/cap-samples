import cds, { ApplicationService } from "@sap/cds";

import {
  Products,
  ProductDescriptions,
  ConditionType,
} from "#cds-models/ConditionTypesService";
import { A_Product_ as ExtProducts } from "#cds-models/API_PRODUCT";

type ODataFunction = "equals" | "startswith" | "endswith" | "contains";

type Filter = {
  type: ODataFunction;
  value: any;
};

export default class ConditionTypesService extends ApplicationService {
  override async init() {
    const extSrv = await cds.connect.to("API_PRODUCT");

    this.on("READ", ProductDescriptions, (req) => {
      return extSrv.run(req.query);
    });

    this.before("SAVE", ConditionType.drafts, async (req) => {
      // manual @assert.target check because no support exists here
      if (req.data.product_Product) {
        const prodData = await extSrv.run(
          SELECT.one
            .from(ExtProducts)
            .columns((a) => a.Product)
            .where({ Product: req.data.product_Product })
        );
        if (!prodData?.Product) {
          throw req.error(
            422,
            `Product ${req.data.product_Product} does not exist`,
            "product_Product"
          );
        }
      }
    });

    this.on("READ", Products, async (req) => {
      let descrFilter = undefined;
      // concrete key is defined so we use the passed product key as 'where' condition
      if ("Product" in req.data) {
        if (req.query.SELECT?.where) req.query.SELECT.where = undefined;
        (req.query as any).where(`Product = '${req.data.Product}'`);
      }

      if (
        Array.isArray(req.query.SELECT?.where) &&
        req.query.SELECT?.where?.length > 0
      ) {
        descrFilter = this.extractDescriptionFilter(req.query.SELECT.where);
      }

      const products = await this.readExternalProducts(req, extSrv);

      return descrFilter?.value
        ? this.filterProducts(products, descrFilter)
        : products;
    });
    await super.init();
  }
  /**
   * Extracts Description filter and removes it from given filters array
   */
  private extractDescriptionFilter(filters: cds.predicate): Filter | undefined {
    let descrFilterIndex = -1;
    let descrFilter: Filter | undefined = undefined;
    let spliceCount = 1;

    for (let i = 0; i < filters.length; i++) {
      if (descrFilterIndex !== -1) break;
      const filter = filters[i];

      if (
        filter?.ref?.length === 1 &&
        filter.ref.findIndex((r) => r === "Description") !== -1
      ) {
        if (filters[i + 1] === "=") {
          descrFilterIndex = i;
          spliceCount = 3;
          descrFilter = {
            type: "equals",
            value: filters[i + 2].val,
          };
          break;
        }
      } else if (Array.isArray(filter.args) && filter.args.length > 0) {
        for (const arg of filter.args) {
          if (
            Array.isArray(arg.ref) &&
            arg.ref.findIndex((r) => r === "Description") !== -1
          ) {
            descrFilterIndex = i;
            break;
          }
        }
        if (descrFilterIndex !== -1) {
          descrFilter = {
            type: filter.func?.toLowerCase() as ODataFunction,
            value: filter.args[1].val.toLowerCase(),
          };
        }
      }
    }
    if (descrFilterIndex !== -1) {
      filters.splice(descrFilterIndex, spliceCount);
      if (filters.length > 0) {
        if (descrFilterIndex === 0) {
          filters.splice(0, 1);
        } else {
          filters.splice(1, 1);
        }
      }
    }
    return descrFilter;
  }

  private async readExternalProducts(
    req: cds.Request,
    extSrv: cds.RemoteService
  ): Promise<Products> {
    const query = SELECT.from(req.target)
      .columns((p) => {
        p.Product, p.to_Description("*");
      })
      .where(req.query.SELECT?.where ?? [])
      .limit(req.query.SELECT?.limit as any)
      .orderBy("Product desc");

    if ((req.query.SELECT as any).count) {
      query.SELECT.count = true;
    }
    let products = (await extSrv.run(query)) as Products;

    return products.map((p) => ({
      Product: p.Product,
      Description: p.to_Description?.filter(
        (d) => d.Language === req.locale.toUpperCase()
      )?.[0]?.ProductDescription,
    }));
  }

  private filterProducts(products: Products, descrFilter: Filter) {
    const { $count } = products as Products & { $count: number };

    const filteredProducts = products.filter((p) => {
      switch (descrFilter.type) {
        case "equals":
          return p.Description && p.Description === descrFilter.value;
        case "startswith":
          return (
            p.Description &&
            p.Description.toLowerCase().startsWith(descrFilter.value)
          );
        case "endswith":
          return (
            p.Description &&
            p.Description.toLowerCase().endsWith(descrFilter.value)
          );
        case "contains":
          return (
            p.Description &&
            new RegExp(`.*${descrFilter.value}.*`, "i").test(p.Description)
          );
      }
    }) as Products & { $count: number };

    if ($count) filteredProducts.$count = filteredProducts.length;
    return filteredProducts;
  }
}
