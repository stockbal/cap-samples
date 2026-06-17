import cds from "@sap/cds";

// @ts-ignore
const { GET, POST, defaults } = cds.test(__dirname + "/..");
defaults.auth = { username: "alice", password: "" };

describe("AdminService OData APIs", () => {
  it("serves AdminService.Authors", async () => {
    const { data } =
      await GET`/odata/v4/admin/Authors ${{ params: { $select: "ID,name" } }}`;
    expect(data.value).to.containSubset([{ ID: 101, name: "Emily Brontë" }]);
  });
  it("Creates new Author", async () => {
    await POST`/odata/v4/admin/Authors ${{ name: "George R.R. Martin" }}`;
  });
});
