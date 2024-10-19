import ExtensionAPI from "sap/fe/templates/ObjectPage/ExtensionAPI";
import { FeedInput$PostEvent } from "sap/m/FeedInput";
import List from "sap/m/List";
import Context from "sap/ui/model/odata/v4/Context";
import ODataContextBinding from "sap/ui/model/odata/v4/ODataContextBinding";
import ODataListBinding from "sap/ui/model/odata/v4/ODataListBinding";
import ODataModel from "sap/ui/model/odata/v4/ODataModel";

function refreshFeed(extApi: ExtensionAPI) {
  ((extApi.byId("_IDGenList") as List).getBinding("items") as ODataListBinding)?.refresh();
}

async function onPost(this: ExtensionAPI, event: FeedInput$PostEvent) {
  const model = this.getModel() as ODataModel;
  const context = this.getBindingContext() as Context;
  const ID = context?.getProperty("ID");
  const content = event.getParameter("value");

  const actionCall = model.bindContext("/sendMessage(...)") as ODataContextBinding;
  actionCall.setParameter("requestId", ID);
  actionCall.setParameter("msg", content);
  try {
    await actionCall.invoke();
    refreshFeed(this);
  } catch (e) {}
}

function onFeedRefresh(this: ExtensionAPI) {
  refreshFeed(this);
}

export { onFeedRefresh, onPost };

