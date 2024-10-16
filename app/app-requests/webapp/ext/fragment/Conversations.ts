import ExtensionAPI from "sap/fe/templates/ObjectPage/ExtensionAPI";
import { FeedInput$PostEvent } from "sap/m/FeedInput";
import Context from "sap/ui/model/odata/v4/Context";
import ODataModel from "sap/ui/model/odata/v4/ODataModel";

/**
 * Generated event handler.
 *
 * @param this reference to the 'this' that the event handler is bound to.
 * @param event the event object provided by the event provider
 */
async function onPost(this: ExtensionAPI, event: FeedInput$PostEvent) {
  const model = this.getModel() as ODataModel;
  const context = this.getBindingContext() as Context;
  const ID = context?.getProperty("ID");
  const content = event.getParameter("value");

  const binding = model.bindList("/Conversations");
  const newConversation = binding.create({
    content,
    request_ID: ID
  });
  await newConversation.created();

  context.requestSideEffects(["conversations"]);
}

export { onPost };
