const cds = require("@sap/cds");

module.exports = cds.service.impl(async function () {
  const { Products } = this.entities;
  // connect to remote service
  const ProductsSrv = await cds.connect.to("CE_PRODUCT_0002");
  this.on("READ", Products, async (req) => {
    return ProductsSrv.send({
      query: req.query,
      headers: {
        apikey: process.env.apiKey,
      },
    });
  });
});
