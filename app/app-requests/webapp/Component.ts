import BaseComponent from "sap/fe/core/AppComponent";
import compAccess from "./ext/lib/comp-access";

/**
 * @namespace com.appreq.apprequests
 */
export default class Component extends BaseComponent {
  public static metadata = {
    manifest: "json"
  };

  /**
   * The component is initialized by UI5 automatically during the startup of the app and calls the init method once.
   * @public
   * @override
   */
  public init(): void {
    compAccess.setAppComponent(this);
    super.init();
  }
}
