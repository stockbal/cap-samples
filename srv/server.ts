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

  service.on(CatalogService.checkout, (msg) => {
    console.info("Event Checkout", msg.data);
  });

  const { Books: _books } = cds.entities("my.bookshop");

  if (!("author" in _books.elements)) console.log("Books does not have the property 'author'");
  if ("author_firstName" in _books.elements) console.log("Books has the property 'author_firstName'");

  try {
    await SELECT.from(Books).columns("author");
  } catch (error) {
    // expected as named type definitions are also flattened at service/db levels
    console.error(error);
  }

  await service.emit(CatalogService.checkout, { bookId: "4", deepData: { other: "4" } });
  await service.emit(CatalogService.checkout, { bookId: "4", deepData_other: "4" });

  await service.run(SELECT.from(CatalogService.Books).columns((b) => b("*")));
});
