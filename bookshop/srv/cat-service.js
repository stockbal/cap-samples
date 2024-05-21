const cds = require("@sap/cds");
const { print } = require("@devepos/common");

module.exports = cds.service.impl(async function () {
  print();
});
