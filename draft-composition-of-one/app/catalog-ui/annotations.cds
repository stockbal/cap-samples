using CatalogService as service from '../../srv/cat-service';

annotate service.Books with @( //

UI: {
  HeaderInfo             : {
    $Type         : 'UI.HeaderInfoType',
    TypeName      : 'Book',
    TypeNamePlural: 'Books',
    Title         : {
      $Type: 'UI.DataField',
      Value: title
    },
  },
  LineItem               : [
    {Value: title},
    {Value: author},
    {
      Value: distributor.name,
      Label: 'Distributor Name'
    }
  ],
  Facets                 : [
    {
      $Type : 'UI.ReferenceFacet',
      Label : 'General',
      Target: '@UI.FieldGroup#General'
    },
    {
      $Type : 'UI.ReferenceFacet',
      Label : 'Distributor',
      Target: '@UI.FieldGroup#Distributor'
    },
  ],
  FieldGroup #General    : {
    $Type: 'UI.FieldGroupType',
    Data : [
      {Value: title},
      {Value: author}
    ]
  },
  FieldGroup #Distributor: {
    $Type: 'UI.FieldGroupType',
    Data : [{Value: distributor.name}]
  },
});
