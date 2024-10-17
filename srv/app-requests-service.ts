import cds, { ApplicationService } from "@sap/cds";
import { Conversations, AppRequests } from "#cds-models/AppRequestsService";
import {
  ConversationSyncService,
  commentCreated,
} from "#cds-models/ConversationSyncService";

const LOG = cds.log("app-requests-srv");

export default class AppRequestsService extends ApplicationService {
  async init() {
    this.on("CREATE", Conversations, async (req, next) => {
      await next();
      const syncSrv = await cds.connect.to(ConversationSyncService);
      await syncSrv.emit("commentCreated", {
        requestId: req.data?.request_ID,
      } as commentCreated);
    });
    this.on("DELETE", AppRequests, async (req, next) => {
      await next();
      // delete corresponding conversations
      await DELETE.from(Conversations).where({ request_ID: req.data.ID });
    });
    return super.init();
  }
}
