const cds = require("@sap/cds");

module.exports = cds.service.impl(async function () {
  const { Product } = this.entities;
  // connect to remote service
  const ProductsSrv = await cds.connect.to("CE_PRODUCT_0002");
  this.on("READ", Product, async (req) => {
    return ProductsSrv.send({
      query: req.query,
      headers: {
        apikey: process.env.apiKey,
      },
    });
  });
});
