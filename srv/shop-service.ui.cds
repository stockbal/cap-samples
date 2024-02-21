using ShopService as srv from './shop-service';

annotate srv.Products with @( //
UI: {
  HeaderInfo         : {
    TypeName      : 'Product',
    TypeNamePlural: 'Products',
    Title         : {
      $Type: 'UI.DataField',
      Value: name
    },
  },
  SelectionFields    : [
    name,
    category
  ],
  LineItem           : [
    {Value: name},
    {Value: category},
    {Value: vendor_ID},
  // {Value: vendor.fullName}
  ],
  FieldGroup #General: {
    $Type: 'UI.FieldGroupType',
    Data : [
      {Value: name},
      {Value: category},
      {Value: vendor_ID}
    ],
  },
  Facets             : [{
    $Type : 'UI.ReferenceFacet',
    Target: '@UI.FieldGroup#General',
    Label : 'General Data'
  }]
});

annotate srv.Products with {
  vendor @(
    Common.Text     : vendor.fullName,
    Common.ValueList: {
      Label         : 'Vendors',
      CollectionPath: 'Vendors',
      Parameters    : [
        {
          $Type            : 'Common.ValueListParameterInOut',
          LocalDataProperty: vendor_ID,
          ValueListProperty: 'ID'
        },
        {
          $Type            : 'Common.ValueListParameterDisplayOnly',
          ValueListProperty: 'fullName'
        }
      ]
    }
  )
};

annotate srv.Vendors with @Capabilities.SearchRestrictions.Searchable: false;

annotate srv.Vendors with {
  ID @(Common.Text: fullName)
};
