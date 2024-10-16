import ControllerExtension from "sap/ui/core/mvc/ControllerExtension";
import ExtensionAPI from "sap/fe/templates/ObjectPage/ExtensionAPI";
import Context from "sap/ui/model/odata/v4/Context";
import ODataModel from "sap/ui/model/odata/v4/ODataModel";

let socket: WebSocket;

function registerWebSocket(opExt: OPExt) {
  const wsUri = opExt.base.getAppComponent().getManifestObject().resolveUri("/ws/conversation-sync");
  const protocol = window.location.protocol === "https:" ? "wss://" : "ws://";
  socket = new WebSocket(`${protocol}${window.location.host}${wsUri}`);
  socket.addEventListener("message", message => {
    const payload = JSON.parse(message.data) as {
      event: string;
      data: {
        requestId: string;
      };
    };
    switch (payload.event) {
      case "commentCreated":
        // update the page
        const model = opExt.base.getExtensionAPI().getModel() as ODataModel;
        model.getServiceUrl();
        const context = opExt.base.getExtensionAPI().getBindingContext() as Context;

        // request status update
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
