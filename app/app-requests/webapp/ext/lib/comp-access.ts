import Component from "../../Component";

let appComp: Component;

class ComponentAccessor {
  get appComp() {
    return appComp;
  }
  setAppComponent(c: Component) {
    appComp = c;
  }
}

const compAccess = new ComponentAccessor();
export default compAccess;
