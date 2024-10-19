import Component from "../../Component";

let appComp: Component;

function setAppComponent(c: Component) {
  appComp = c;
}

export { appComp, setAppComponent };
