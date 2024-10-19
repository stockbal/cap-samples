import {
  AppRequests,
  Conversations,
  sendMessage,
} from "#cds-models/AppRequestsService";
import {
  ConversationsService,
  conversationsUpdated,
} from "#cds-models/ConversationsService";
import { Conversation } from "#cds-models/db";
import cds, { ApplicationService } from "@sap/cds";

const LOG = cds.log("app-requests-srv");

export default class AppRequestsService extends ApplicationService {
  async init() {
    this.on(sendMessage, async (req) => {
      const { requestId, msg } = req.data;
      await INSERT.into(Conversations).entries({
        content: msg,
        request_ID: requestId,
      } as Conversation);
      const syncSrv = await cds.connect.to(ConversationsService);
      await syncSrv.emit("conversationsUpdated", {
        requestId: requestId,
      } as conversationsUpdated);
    });
    this.after("READ", Conversations, (conv, req) => {
      if (!conv?.length) return;
      for (const c of conv) {
        if (c.createdBy === req.user.id) {
          c.createdBy = "Me";
        }
        c.initials = c.createdBy?.substring(0, 2)?.toUpperCase() ?? "";
      }
    });
    this.on("DELETE", AppRequests, async (req, next) => {
      await next();
      // delete corresponding conversations
      await DELETE.from(Conversations).where({ request_ID: req.data.ID });
    });
    return super.init();
  }
}
