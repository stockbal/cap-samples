import { Book, Books } from "#cds-models/CatalogService";
import { ApplicationService, log } from "@sap/cds";

export default class CatalogService extends ApplicationService {
  override async init(): Promise<void> {
    const bookLogger = log("book");

    this.before("SAVE", Book, async (req) => {
      bookLogger.info("BEFORE SAVE");

      if (req.data.stock! > 1000) {
        req.error({ code: "422", message: "INVALID_STOCK" });
      }
    });

    this.after("each", Books, (data) => {
      console.log("After each Book");
      console.log(data);
    });

    this.after("READ", Books.drafts, (data, req) => {
      const books = data as Books;
      bookLogger.info(`After ${req.event} '${req.target.name}'`, books);
    });

    this.before("DELETE", Book, async (req) => {
      bookLogger.info(`Before ${req.event} ${req.target}`);
    });

    return super.init();
  }
}
