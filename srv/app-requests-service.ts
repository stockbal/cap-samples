import { AppRequests, Conversations } from "#cds-models/AppRequestsService";
import {
  ConversationSyncService,
  conversationsUpdated,
} from "#cds-models/ConversationSyncService";
import cds, { ApplicationService } from "@sap/cds";

const LOG = cds.log("app-requests-srv");

export default class AppRequestsService extends ApplicationService {
  async init() {
    this.on("CREATE", Conversations, async (req, next) => {
      await next();
      const syncSrv = await cds.connect.to(ConversationSyncService);
      await syncSrv.emit("conversationsUpdated", {
        requestId: req.data?.request_ID,
      } as conversationsUpdated);
    });
    this.on("DELETE", AppRequests, async (req, next) => {
      await next();
      // delete corresponding conversations
      await DELETE.from(Conversations).where({ request_ID: req.data.ID });
    });
    return super.init();
  }
}
