import ExtensionAPI from "sap/fe/templates/ObjectPage/ExtensionAPI";
import List from "sap/m/List";
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
  // create correct url via help of anchor tag
  const urlAnchor = document.createElement("a");
  urlAnchor.href = compAccess.appComp.getManifestObject().resolveUri(wsUri);
  urlAnchor.protocol = urlAnchor.href.startsWith("https") ? "wss" : "ws";
  return urlAnchor.href;
}

function registerWebSocket(extApi: ExtensionAPI) {
  if (socket) return;
  socket = new WebSocket(getWsUrl());
  clearInterval(reconnectTimeout);

  // auto reconnection in 10s intervals
  socket.addEventListener("close", () => {
    socket = undefined;
    reconnectTimeout = setInterval(() => {
      registerWebSocket(extApi);
    }, 10000);
  });
  socket.addEventListener("message", message => {
    const payload = JSON.parse(message.data) as {
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
