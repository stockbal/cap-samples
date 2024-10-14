import { Book, Books, publish } from "#cds-models/CatalogService";
import { ApplicationService, log } from "@sap/cds";

console.log(Book.keys.ID);

const LOG = log("cat-srv");

export default class CatalogService extends ApplicationService {
  override async init(): Promise<void> {
    this.before("SAVE", Book, async (req) => {
      LOG.info("BEFORE SAVE");

      if (req.data.stock! > 1000) {
        req.error({ code: "422", message: "INVALID_STOCK" });
      }
    });

    this.after("READ", Books, (books) => {
      LOG.info("After READ Books", "$count", books?.$count);
    });

    this.after("each", Books, (book) => {
      LOG.info("After each for book", book?.title, book);
    });

    this.after("READ", Books.drafts, (data, req) => {
      // Note: due to the singular type of Books.drafts and Book.drafts a cast to the plural is required
      const books = data as Books;
      LOG.info(`[Books.drafts]: After ${req.event} '${req.target.name}'`, books);
    });

    this.before("DELETE", Book, async (req) => {
      LOG.info(`Before ${req.event} ${req.target}`);
    });

    this.on(publish, (req) => {
      LOG.info(`Publish book with id ${req.data.bookId} and publisher ${req.data.publisher}`);
    });

    return super.init();
  }
}
