import ControllerExtension from "sap/ui/core/mvc/ControllerExtension";
import ExtensionAPI from "sap/fe/templates/ObjectPage/ExtensionAPI";
import Context from "sap/ui/model/odata/v4/Context";
import ODataModel from "sap/ui/model/odata/v4/ODataModel";

let socket: WebSocket;

function registerWebSocket(opExt: OPExt) {
  // create correct url via help of anchor tag
  const urlAnchor = document.createElement("a");
  // REVISIT: better way to switch between local and productive testing?
  urlAnchor.href = (window.location.host.startsWith("localhost") ? "/" : "") + "ws/conversation-sync";
  const wsUri = urlAnchor.href;
  socket = new WebSocket("ws" + wsUri.substring(4));
  socket.addEventListener("message", message => {
    const payload = JSON.parse(message.data) as {
      event: string;
      data: {
        requestId: string;
      };
    };
    switch (payload.event) {
      case "conversationsUpdated":
        const model = opExt.base.getExtensionAPI().getModel() as ODataModel;
        model.getServiceUrl();
        const context = opExt.base.getExtensionAPI().getBindingContext() as Context;

        // update list of conversations if user is currently on the object page of the same app request
        if (context.getProperty("ID") === payload.data.requestId) {
          context.requestSideEffects(["conversations"]);
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
    onInit(this: OPExt) {
      registerWebSocket(this);
    }
  };
}
