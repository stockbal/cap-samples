import cds from "@sap/cds";
import { genid } from "./utils/id";

cds.on("bootstrap", () => {
  console.log("Bootstrap event triggered");
});
