sap.ui.define(
  [
    "sap/fe/core/PageController",
    "sap/m/ColumnListItem",
    "sap/m/Text",
    "sap/ui/model/json/JSONModel"
  ],
  function (PageController, ColumnListItem, Text, JSONModel) {
    "use strict";

    return PageController.extend(
      "de.demo.cap.remote.productcatalogui.controller.FilterBarDefault",
      {
        onAfterRendering: function (oEvent) {
          const view = this.getView();
          const dataModel = new JSONModel({
            products: [],
            showNoData: true,
            showOverlay: false,
            busy: false
          });
          view.setModel(dataModel, "dataModel");
          const conditionsModel = new JSONModel({
            allFilters: [],
            filtersTextInfo: view.byId("FilterBar").getActiveFiltersText()
          });
          view.setModel(conditionsModel, "conditions");
        },
        handlers: {
          onSearch(event) {
            const view = this.getView();
            const table = view.byId("productsTable");
            const params = {};
            const filters = this.getView()
              .getModel("conditions")
              .getProperty("/allFilters");
            const language = sap.ui
              .getCore()
              .getConfiguration()
              .getSAPLogonLanguage();

            table.bindItems({
              path: "/Product",
              parameters: {
                ...params,
                $count: true,
                $orderby: ["Product"],
                $select: ["Product", "ProductType"],
                $expand: {
                  _ProductDescription: {
                    $select: ["ProductDescription"],
                    $filter: `Language eq '${language}'`
                  }
                },
                $filter: `_ProductDescription/any(d:d/Language eq '${language}')`
              },
              filters: filters?.length ? filters : [],
              template: new ColumnListItem({
                cells: [
                  new Text({ text: "{Product}" }),
                  new Text({ text: "{ProductType}" }),
                  new Text({
                    text: "{_ProductDescription/0/ProductDescription}"
                  })
                ]
              })
            });
          },
          onFiltersChanged(event) {
            const view = this.getView();
            const filterBar = view.byId("FilterBar");

            const source = event.getSource();
            const conditionsModel = source.getModel("conditions");
            conditionsModel.setProperty(
              "/allFilters",
              filterBar.getFilters()?.filters || []
            );

            conditionsModel.setProperty(
              "/filtersTextInfo",
              source.getActiveFiltersText()
            );
          }
        }
      }
    );
  }
);
