import ExtensionAPI from "sap/fe/templates/ObjectPage/ExtensionAPI";
import FeedListItem from "sap/m/FeedListItem";
import List from "sap/m/List";
import ControllerExtension from "sap/ui/core/mvc/ControllerExtension";
import Context from "sap/ui/model/odata/v4/Context";
import Sorter from "sap/ui/model/Sorter";

let socket: WebSocket;

/**
 * Retrieves correct URL for opening a websocket, depending on the environment
 */
function getWsUrl(opExt: OPExt) {
  // REVISIT: better way to switch between local and productive testing?
  const wsUri = (window.location.host.startsWith("localhost") ? "/" : "") + "ws/conversations";
  // create correct url via help of anchor tag
  const urlAnchor = document.createElement("a");
  urlAnchor.href = opExt.base.getAppComponent().getManifestObject().resolveUri(wsUri);
  urlAnchor.protocol = urlAnchor.href.startsWith("https") ? "wss" : "ws";
  return urlAnchor.href;
}

function registerWebSocket(opExt: OPExt) {
  if (socket) return;
  socket = new WebSocket(getWsUrl(opExt));
  socket.addEventListener("message", message => {
    const payload = JSON.parse(message.data) as {
      event: string;
      data: {
        requestId: string;
      };
    };
    switch (payload.event) {
      case "conversationsUpdated":
        const context = opExt.base.getExtensionAPI().getBindingContext() as Context;

        // update list of conversations if user is currently on the object page of the same app request
        if (context.getProperty("ID") === payload.data.requestId) {
          (
            opExt.base
              .getExtensionAPI()
              .byId(
                "com.appreq.apprequests::AppRequestsObjectPage--fe::CustomSubSection::Conversations--_IDGenList"
              ) as List
          )
            .getBinding("items")
            ?.refresh();
        }
        break;
    }
  });
}

/**
 * @namespace com.appreq.apprequests.ext.controller
 * @controller
 */
export default class OPExt extends ControllerExtension<ExtensionAPI> {
  static overrides = {
    /**
     * Called when a controller is instantiated and its View controls (if available) are already created.
     * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
     * @memberOf com.appreq.apprequests.ext.controller.OPExt
     */
    onInit(this: OPExt) {},
    onPageReady(this: OPExt) {
      registerWebSocket(this);
      try {
        const ID = (this.base.getView().getBindingContext()?.getObject() as { ID: string }).ID;
        const feedList = this.base
          .getExtensionAPI()
          .byId(
            "com.appreq.apprequests::AppRequestsObjectPage--fe::CustomSubSection::Conversations--_IDGenList"
          ) as List;
        feedList.bindItems({
          path: `/AppRequests(ID=${ID},IsActiveEntity=true)/conversations`,
          sorter: new Sorter("createdAt", true),
          template: new FeedListItem({
            sender: "{createdBy}",
            iconInitials: "{initials}",
            senderActive: false,
            timestamp: "{createdAt}",
            text: "{content}"
          })
        });
      } catch (e) {
        console.error(e);
      }
    }
  };
}
