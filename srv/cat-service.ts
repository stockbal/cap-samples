import { Books, Book } from "#cds-models/CatalogService";
import { BaseService } from "./base-service";

export class CatalogService extends BaseService {
  override async init(): Promise<void> {
    const bookLogger = cds.log("book");

    this.after("READ", Books, async (books: Books, req) => {
      bookLogger.info(`After READ '${req.target.name}'`, books);
    });

    this.after("READ", this.drafts(Books), (books: Books, req) => {
      bookLogger.info(`After READ '${req.target.name}'`, books);
    });

    await super.init();
  }
}
