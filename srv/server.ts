import CatalogService from "#cds-models/CatalogService";
import { Books } from "#cds-models/my/bookshop";
import cds from "@sap/cds";

cds.on("served", async () => {
  // sample select to see top level import works
  console.table(await SELECT.one.from(Books));

  const service = await cds.connect.to(CatalogService);

  console.table(await service.run(SELECT.one.from(Books)));
});
