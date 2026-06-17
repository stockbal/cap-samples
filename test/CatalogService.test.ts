import cds from "@sap/cds";
import * as utils from "../srv/utils/id";

// @ts-ignore
const { GET, POST, expect, defaults, data } = cds.test(__dirname + "/..");
defaults.auth = { username: "alice", password: "" };

describe("CatalogService OData APIs", () => {
  vi.spyOn(utils, "genid").mockResolvedValue(void 0);

  beforeEach(async () => await data.reset());

  it("serves CatalogService.ListOfBooks", async () => {
    const { data } =
      await GET`/odata/v4/catalog/ListOfBooks ${{ params: { $select: "ID,author" } }}`;
    expect(data.value).to.containSubset([{ ID: 201, author: "Emily Brontë" }]);
  });

  it("executes submitOrder", async () => {
    const { data } = await POST`/odata/v4/catalog/submitOrder ${{
      book: 201,
      quantity: 10,
    }}`;
    // TODO finish this test
    // expect(data.value).to...
  });
});
