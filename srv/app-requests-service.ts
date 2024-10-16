import cds, { ApplicationService } from "@sap/cds";
import { Conversations } from "#cds-models/AppRequestsService";
import {
  ConversationSyncService,
  commentCreated,
} from "#cds-models/ConversationSyncService";

const LOG = cds.log("AppRequests");

export default class AppRequestsService extends ApplicationService {
  async init() {
    this.on("CREATE", Conversations, async (req, next) => {
      await next();
      const syncSrv = await cds.connect.to(ConversationSyncService);
      await syncSrv.emit("commentCreated", {
        requestId: req.data?.request_ID,
      } as commentCreated);
    });
    return super.init();
  }
}
