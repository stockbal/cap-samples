/**
 * Helper to be able to define how to get the page specific extension API when writing a controller extension.
 */
declare module "sap/ui/core/mvc/ControllerExtension" {
  import AppComponent from "sap/fe/core/AppComponent";
  import View from "sap/ui/core/mvc/View";
  export default class ControllerExtension<API> {
    static overrides: unknown;
    base: {
      getExtensionAPI(): API;
      getView(): View;
      getAppComponent(): AppComponent;
    };
  }
}
