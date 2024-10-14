import * as CatalogService from "#cds-models/CatalogService";
import { Books } from "#cds-models/my/bookshop";
import cds from "@sap/cds";

// eslint-disable-next-line @typescript-eslint/no-misused-promises
cds.on("served", async () => {
  // sample select to see top level import works
  console.table(await SELECT.one.from(Books));

  const service = await cds.connect.to(CatalogService.default);

  await service.publish({ bookId: "846dd710-1a64-4104-8774-3746a3a2bbd8", publisher: "Tor" });
  await service.publish("846dd710-1a64-4104-8774-3746a3a2bbd8", "Tor");

  await SELECT.from(CatalogService.Books.drafts).columns("DraftAdministrativeData_DraftUUID");
  console.log(await service.run(SELECT.from(CatalogService.Books).columns((b) => b("*"))));
});
