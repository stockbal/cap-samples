import cds, { ApplicationService } from "@sap/cds";

import {
  Products,
  ProductDescriptions,
  ConditionType,
  ConditionTypes,
} from "#cds-models/ConditionTypesService";
import { A_Product_ as ExtProducts } from "#cds-models/API_PRODUCT";

export default class ConditionTypesService extends ApplicationService {
  override async init() {
    const extSrv = await cds.connect.to("API_PRODUCT");

    this.on("READ", ProductDescriptions, (req) => {
      (req.query as any).where(`Language = '${req.locale.toUpperCase()}'`);
      return extSrv.run(req.query);
    });

    this.on("READ", Products, (req) => {
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
    await super.init();
  }
}
