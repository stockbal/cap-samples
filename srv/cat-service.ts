import { log } from "@sap/cds";
import { Book, Books } from "#cds-models/CatalogService";
import { BaseService } from "./base-service";

export class CatalogService extends BaseService {
  override async init(): Promise<void> {
    const bookLogger = log("book");

    // HINT: not working with jest
    // const { Book, Books } = await import("#cds-models/CatalogService");

    this.before("SAVE", Books, async (req) => {
      bookLogger.info("BEFORE SAVE");

      if ((req.data as Book).stock && (req.data as Book).stock! > 1000) {
        req.error({ code: "422", message: "INVALID_STOCK" });
      }
    });

    this.after("READ", Books, async (books: Books, req) => {
      bookLogger.info(`After READ '${req.target.name}'`, books);
    });

    this.before("DELETE", Book, async (req) => {
      bookLogger.info("BEFORE DELETE " + req.target);
    });

    this.after("READ", this.drafts(Books), (books: Books, req) => {
      bookLogger.info(`After READ '${req.target.name}'`, books);
    });

    return super.init();
  }
}
