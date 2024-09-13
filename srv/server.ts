import { Books } from "#cds-models/my/bookshop";
import cds from "@sap/cds";

cds.on("served", async () => {
  // sample select to see top level import works
  await SELECT.one.from(Books);
});
