import cds from "@sap/cds";

import { Authors, Books } from "#cds-models/AdminService";
import { genid } from "./utils/id";

export class AdminService extends cds.ApplicationService {
  init() {
    this.before("NEW", Authors.drafts, genid);
    this.before("NEW", Books.drafts, genid);
    this.before("CREATE", Authors, genid);
    this.before("CREATE", Books, genid);
    return super.init();
  }
}
