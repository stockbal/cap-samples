import { log } from "@sap/cds";
import { Books, Book } from "#cds-models/CatalogService";
import { BaseService } from "./base-service";

export class CatalogService extends BaseService {
  override async init(): Promise<void> {
    const bookLogger = log("book");

    this.before("SAVE", Book, async (req) => {
      if (req.data.stock && req.data.stock > 1000) {
        req.error({ code: "422", message: "INVALID_STOCK" });
      }
    });

    this.after("READ", Books, async (books: Books, req) => {
      bookLogger.info(`After READ '${req.target.name}'`, books);
    });

    this.before("DELETE", Books, (req) => {
      bookLogger.info("BEFORE DELETE " + req.target);
    });

    this.after("READ", this.drafts(Books), (books: Books, req) => {
      bookLogger.info(`After READ '${req.target.name}'`, books);
    });

    await super.init();
  }
}
