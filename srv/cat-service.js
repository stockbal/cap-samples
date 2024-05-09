const cds = require("@sap/cds");

module.exports = class CatalogService extends cds.ApplicationService {
  async init() {
    const { Books } = this.entities;

    this.before("NEW", Books.drafts, async (req) => {
      // manual creation of draft entries for 1:1 composition relations
      if (!req.data.distributor) {
        req.data.distributor = { name: "Default Distributor" };
      }
    });

    return super.init();
  }
};