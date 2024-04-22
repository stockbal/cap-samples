const cds = require("@sap/cds");

module.exports = class MyService extends cds.ApplicationService {
  async init() {
    const db = await cds.connect.to("db");
    const { Regions } = this.entities;
    const { REGIONS } = db.entities;

    this.on("READ", Regions, async (req) => {
      return db.run(SELECT.from(REGIONS));
    });
    return super.init();
  }
};
