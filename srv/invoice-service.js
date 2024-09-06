const { executeHttpRequest } = require("@sap-cloud-sdk/http-client");
const { ApplicationService } = require("@sap/cds");
const cds = require("@sap/cds");

module.exports = class InvoiceService extends ApplicationService {
  async init() {
    const { Invoices } = this.entities;
    const extSrv = await cds.connect.to("ExtAPI");
    this.on("READ", Invoices, async (req) => {
      if (req.http.req.url.endsWith("/FileContent")) {
        // media handling is not possible in RemoteService so it has to be done manually
        const streamRes = await executeHttpRequest(
          { destinationName: "ABAP_BACKEND" },
          {
            method: "GET",
            // pass the full path to the remote service
            url: req.http.req.url,
            responseType: "stream",
          }
        );

        req.http.res.header(
          "Content-Disposition",
          streamRes.headers["content-disposition"]
        );
        // normally done by CDS Odata runtime, but not possible for Remote entity
        // may only be required if calling API want's to display file directly in browser
        streamRes.data.$mediaContentType = "application/pdf";
        return streamRes.data;
      } else {
        return extSrv.run(req.query);
      }
    });
    return super.init();
  }
};
