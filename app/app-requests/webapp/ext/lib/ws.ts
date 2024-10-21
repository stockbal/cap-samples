import ExtensionAPI from "sap/fe/templates/ObjectPage/ExtensionAPI";
import List from "sap/m/List";
import WebSocket from "sap/ui/core/ws/WebSocket";
import Context from "sap/ui/model/odata/v4/Context";
import compAccess from "./comp-access";

let socket: WebSocket | undefined;
let reconnectTimeout: number | undefined;

/**
 * Retrieves correct URL for opening a websocket, depending on the environment
 */
function getWsUrl() {
  // REVISIT: better way to switch between local and productive testing?
  const wsUri = (window.location.host.startsWith("localhost") ? "/" : "") + "ws/conversations";
  // resolve relative ws url to the manifest location of the current component
  return compAccess.appComp.getManifestObject().resolveUri(wsUri);
}

function registerWebSocket(extApi: ExtensionAPI) {
  if (socket) return;
  socket = new WebSocket(getWsUrl());
  clearInterval(reconnectTimeout);

  // auto reconnection in 10s intervals
  socket.attachClose(() => {
    socket?.destroy();
    socket = undefined;
    reconnectTimeout = setInterval(() => {
      registerWebSocket(extApi);
    }, 10000);
  });

  socket.attachMessage(e => {
    const data = e.getParameter("data")!;
    const payload = JSON.parse(data) as {
      event: string;
      data: {
        requestId: string;
      };
    };
    switch (payload.event) {
      case "conversationsUpdated":
        const context = extApi.getBindingContext() as Context;

        // update list of conversations if user is currently on the object page of the same app request
        if (context.getProperty("ID") === payload.data.requestId) {
          (
            extApi.byId(
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

export { registerWebSocket };
