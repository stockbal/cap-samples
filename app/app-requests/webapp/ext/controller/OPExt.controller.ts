import ExtensionAPI from "sap/fe/templates/ObjectPage/ExtensionAPI";
import FeedListItem from "sap/m/FeedListItem";
import List from "sap/m/List";
import ControllerExtension from "sap/ui/core/mvc/ControllerExtension";
import Sorter from "sap/ui/model/Sorter";
import { registerWebSocket } from "../lib/ws";

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
      registerWebSocket(this.base.getExtensionAPI());
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
