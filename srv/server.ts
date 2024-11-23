import * as CatalogService from "#cds-models/CatalogService";
import { Books } from "#cds-models/my/bookshop";
import cds from "@sap/cds";

// eslint-disable-next-line @typescript-eslint/no-misused-promises
cds.on("served", async () => {
  // sample select to see top level import works
  console.table(await SELECT.one.from(Books));

  const service = await cds.connect.to(CatalogService.default);

  // eslint-disable-next-line @typescript-eslint/await-thenable
  await service.publish({ bookId: "a6eab5ad-5cb5-4962-bf2e-40da704ef793", publisher: "Tor" });
  // eslint-disable-next-line @typescript-eslint/await-thenable
  await service.publish("a6eab5ad-5cb5-4962-bf2e-40da704ef793", "Tor");

  await SELECT.from(CatalogService.Books.drafts).columns("DraftAdministrativeData_DraftUUID");
  console.log(await service.run(SELECT.from(CatalogService.Books).columns((b) => b("*"))));
});
