import cds from "@sap/cds";
import { Book } from "#cds-models/CatalogService";
import { DraftEntity } from "../types/util";

describe("Testsuite: Catalog Service", () => {
  const {
    GET,
    POST,
    DELETE,
    data: testData,
  } = cds
    .test("serve", "all", "--in-memory", "--with-mocks")
    .in(`${__dirname}/../..`);

  const DR_ACTIVATE = "CatalogService.draftActivate";

  describe("CRUD Books", () => {
    const BOOKS_PATH = "/odata/v4/catalog/Books";

    beforeEach(() => {
      testData.delete();
    });

    it("+ Create new Book Draft", async () => {
      const { data: newBook } = await POST<Book & DraftEntity>(
        `${BOOKS_PATH}`,
        {
          title: "New Book",
          stock: 10,
        } as Book
      );

      expect(newBook.title).toBe("New Book");
      expect(newBook.IsActiveEntity).toBe(false);
    });

    it("+ Save new Book Draft", async () => {
      const { data: newBook } = await POST<Book>(`${BOOKS_PATH}`, {
        title: "New Book",
        stock: 1000,
      } as Book);

      // read draft
      const { data: draftNewBook } = await GET<Book>(
        `${BOOKS_PATH}(ID=${newBook.ID},IsActiveEntity=false)`
      );

      // activate the draft
      await POST(
        `${BOOKS_PATH}(ID=${draftNewBook.ID},IsActiveEntity=false)/${DR_ACTIVATE}`
      );
      const { data: activeNewBook } = await GET<Book>(
        `${BOOKS_PATH}(ID=${draftNewBook.ID},IsActiveEntity=true)`
      );

      expect(activeNewBook).toBeTruthy();
    });

    it("+ Stock exceeds allowed value", async () => {
      const { data: newBook } = await POST<Book>(`${BOOKS_PATH}`, {
        title: "New Book",
        stock: 2000,
      } as Book);

      // activate the draft
      await expect(
        POST(
          `${BOOKS_PATH}(ID=${newBook.ID},IsActiveEntity=false)/${DR_ACTIVATE}`
        )
      ).rejects.toHaveProperty("response.status", 422);
    });

    it("+ Delete Book", async () => {
      const { data: newBook } = await POST<Book>(`${BOOKS_PATH}`, {
        title: "New Book",
      } as Book);

      // activate the draft
      await POST(
        `${BOOKS_PATH}(ID=${newBook.ID},IsActiveEntity=false)/${DR_ACTIVATE}`
      );
      // delete the active book
      const response = await DELETE(
        `${BOOKS_PATH}(ID=${newBook.ID},IsActiveEntity=true)`
      );

      expect(response.status).toBe(204);
    });
  });
});
