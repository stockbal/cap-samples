import { type Regions } from "#cds-models/MyService";
import cds, { ApplicationService } from "@sap/cds";

export default class MyService extends ApplicationService {
  async init() {
    const { Regions } = await import("#cds-models/MyService");
    const db = await cds.connect.to("db");

    this.on("READ", Regions, async (req) => {
      // By using a native query we can retrieve all columns of the shared table
      // WARNING: The properties in the result objects will all be in uppercase
      //          e.g. { "REGION": "..", "DESCRIPTION": "..."}
      //          To correct that we can use alias names
      const results = (await db.run(
        `SELECT region as "Region", description as "Description", category as "Category" from com_plain_regions`
      )) as Regions;

      return results;
    });

    return super.init();
  }
}
