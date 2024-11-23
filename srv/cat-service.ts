import { Book, Books, publish } from "#cds-models/CatalogService";
import cds from "@sap/cds";
import { setTimeout } from "timers/promises";
import BaseAppService from "./lib/base-service";

export default class CatalogService extends BaseAppService {
  override async init(): Promise<void> {
    this.logger = cds.log("cat-service", "trace");

    this.before("SAVE", Book, (req) => {
      this.logger.info("BEFORE SAVE");

      if (req.data.stock! > 1000) {
        req.error({ code: "422", message: "INVALID_STOCK" });
      }
    });

    this.after("READ", Books, (books) => {
      this.logger.info("After READ Books", "$count", books?.$count);
    });

    this.after("each", Books, (book) => {
      this.logger.info("After each for book", book?.title, book);
    });

    this.after("READ", Books.drafts, (books, req) => {
      this.logger.info(`[Books.drafts]: After ${req.event} '${req.target.name}'`, books);
    });

    this.before("DELETE", Book, (req) => {
      this.logger.info(`Before ${req.event} ${req.target.name}`);
    });

    this.on(publish, async (req) => {
      return this.runAsync(
        "publish books",
        async () => {
          const b = await SELECT.one.from(Books, req.data.bookId!);
          this.logger.info("Perform long running operation...");
          await setTimeout(2000);
          this.logger.info("Publishing book", b.title, "for publisher", req.data.publisher);
        },
        { catchErr: true }
      );
    });

    return super.init();
  }
}
