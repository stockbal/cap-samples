import { Book, Books, publish } from "#cds-models/CatalogService";
import { ApplicationService, log } from "@sap/cds";

console.log(Book.keys.ID);

export default class CatalogService extends ApplicationService {
  override async init(): Promise<void> {
    const bookLogger = log("book");

    this.before("SAVE", Book, async (req) => {
      bookLogger.info("BEFORE SAVE");

      if (req.data.stock! > 1000) {
        req.error({ code: "422", message: "INVALID_STOCK" });
      }
    });

    this.after("each", Books, (book) => {
      bookLogger.info("After each for book", book?.title);
    });

    this.after("READ", Books.drafts, (data, req) => {
      // Note: due to the singular type of Books.drafts and Book.drafts a cast to the plural is required
      const books = data as Books;
      bookLogger.info(`After ${req.event} '${req.target.name}'`, books);
    });

    this.before("DELETE", Book, async (req) => {
      bookLogger.info(`Before ${req.event} ${req.target}`);
    });

    this.on(Book.actions.buy, (req) => {
      bookLogger.info(`Buying ${req.data.amount} books`);
    });

    this.on(publish, (req) => {
      bookLogger.info(`Publish book with id ${req.data.bookId} and publisher ${req.data.publisher}`);
    });

    return super.init();
  }
}
