import cds from "@sap/cds";
import decompress from "decompress";

export default cds.service.impl(async function () {
  /**
   * Handle File upload as base64 encoded string
   */
  this.on("upload", async (req) => {
    const { file, mime } = req.data;

    const fileBuffer = Buffer.from(file, "base64");

    if (mime === "application/zip") {
      const files = await decompress(fileBuffer);

      console.log(
        `Files contained in passed zip file: ${JSON.stringify(files)}`
      );
    } else if (mime === "text/plain") {
      console.log(`Content of file: ${fileBuffer}`);
    } else {
      return req.error(400, "Unrecognized MIME type");
    }

    return "File was read :)";
  });
});
