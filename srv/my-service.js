const cds = require("@sap/cds");

module.exports = class MyService extends cds.ApplicationService {
  async init() {
    const db = await cds.connect.to("db");
    const { Regions } = this.entities;

    this.on("READ", Regions, async (req) => {
      // By using a native query we can retrieve all columns of the shared table
      const results = await db.run(`SELECT * from REGIONS`);
      console.table(results);
      return results;
    });
    return super.init();
  }
};
