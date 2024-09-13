import { log } from "@sap/cds";
import { BaseService } from "./base-service";
import { Book, Books } from "#cds-models/CatalogService";

export default class CatalogService extends BaseService {
  override async init(): Promise<void> {
    const bookLogger = log("book");

    this.before("SAVE", Book, async (req) => {
      bookLogger.info("BEFORE SAVE");

      if (req.data.stock! > 1000) {
        req.error({ code: "422", message: "INVALID_STOCK" });
      }
    });

    this.afterRead(Books, (_data, req) => {
      bookLogger.info(`After ${req.event} ${req.target}`);
    });

    this.afterReadEach(Book, (book, req) => {
      bookLogger.info(`After ${req.event} ${req.target} with key ${book.ID}`);
    });

    this.afterRead(Books.drafts, (books, req) => {
      bookLogger.info(`After ${req.event} '${req.target.name}'`, books);
    });

    this.before("DELETE", Book, async (req) => {
      bookLogger.info(`Before ${req.event} ${req.target}`);
    });

    return super.init();
  }
}
