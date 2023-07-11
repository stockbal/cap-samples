import { ApplicationService } from "@sap/cds";
import * as srv from "#cds-models/CatalogService";
import { Books } from "#cds-models/my/bookshop";

export class CatalogService extends ApplicationService {
  override async init(): Promise<void> {
    this.after("READ", srv.Books, async (books: Books) => {
      console.log(books);

      for (let book of books) {
        console.log(book.testest);

        if (book.publishedOn) {
          console.log(
            `Book ${
              book.title
            } created in year: ${book.publishedOn.getFullYear()}`
          );
        }
      }
    });
    await super.init();
  }
}
