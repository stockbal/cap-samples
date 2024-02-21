import cds, { ApplicationService } from "@sap/cds";
import { Vendors, Products, Product } from "#cds-models/ShopService";
import { Definition } from "@sap/cds/apis/csn";
import { asArray } from "./util/convert";

type SelectQuery = {
  from: { ref: Array<string | { id: string; where: any }> };
  limit?: {
    rows?: {
      val: number;
    };
    offset?: {
      val: number;
    };
  };
  columns?: {
    expand?: string;
    ref: string[];
  }[];
};

const ProductFields = {
  vendor: "vendor",
  vendor_ID: "vendor_ID"
} as const;

export default class ShopService extends ApplicationService {
  private productsSrvDefinition: Definition;
  constructor() {
    // @ts-ignore
    super(...arguments);
    const { Products: ProductsSrvDefinition } = this.entities;
    this.productsSrvDefinition = ProductsSrvDefinition;
  }
  override async init() {
    const bpService = await cds.connect.to("API_BUSINESS_PARTNER");

    // /products(id=,isactiveentity=)/vendor
    this.on("READ", Vendors, async (req, next) => {
      const select = req.query.SELECT as SelectQuery;
      if (this.isVendorExpand(select)) {
        // Get vendor ID from product
        const { vendor_ID } = await this.run(
          SELECT.one
            .from(Products, (p) => (p as any).vendor_ID)
            .where((select.from.ref[0] as any).where)
        );

        // Select vendor via vendor ID
        const cql = SELECT((select.columns ?? "*") as any)
          .from(Vendors)
          .where({ ID: vendor_ID })
          .limit(select.limit?.rows?.val!, select.limit?.offset?.val);
        cql.SELECT.count = !!(select as any).count;
        const supplier = await bpService.run(cql);

        return supplier;
      } else {
        return next();
      }
    });

    this.on("READ", Vendors, async (req) => {
      return bpService.run(req.query);
    });

    // Products?$expand=vendor
    this.on("READ", Products, async (req, next) => {
      const query = req.query.SELECT as SelectQuery;
      if (!query.columns?.length) {
        return next();
      }
      const expandIndex = query.columns?.findIndex(
        ({ expand, ref }) => expand && ref[0] === ProductFields.vendor
      );
      if (!expandIndex || expandIndex < 0) {
        return next();
      }

      // Remove expand from query
      query.columns.splice(expandIndex, 1);

      // Make sure vendor_ID will be returned
      if (
        !query.columns.find((column) =>
          column.ref.find((ref) => ref == ProductFields.vendor_ID)
        )
      ) {
        query.columns.push({ ref: [ProductFields.vendor_ID] });
      }

      const products = await next();
      if (
        !products ||
        (Array.isArray(products) && products.length === 0) ||
        products instanceof Error
      ) {
        return products;
      }

      // Request all associated vendors
      const vendorIds = asArray<Product>(products).map(
        (p: any) => p.vendor_ID as string
      );
      const vendors: { ID: string }[] = await bpService.run(
        SELECT.from(Vendors).where({ ID: vendorIds })
      );

      // Convert in a map for easier lookup
      const vendorsMap: Record<string, any> = {};
      for (const vendor of vendors) {
        vendorsMap[vendor.ID] = vendor;
      }

      // Add vendors to result
      for (const product of asArray<Product>(products)) {
        product.vendor = vendorsMap[(product as any).vendor_ID];
      }

      return products;
    });

    return super.init();
  }

  private isVendorExpand(query: SelectQuery): boolean {
    if (query.from.ref.length !== 2) {
      return false;
    }
    const productsFromClause = query.from.ref[0];
    if (
      !(
        typeof productsFromClause === "object" &&
        productsFromClause.id === this.productsSrvDefinition.name
      )
    ) {
      return false;
    }
    const vendorFromClause = query.from.ref[1];
    if (
      (typeof vendorFromClause === "string" &&
        vendorFromClause === ProductFields.vendor) ||
      (typeof vendorFromClause === "object" &&
        vendorFromClause.id === ProductFields.vendor)
    ) {
      return true;
    }
    return false;
  }
}
