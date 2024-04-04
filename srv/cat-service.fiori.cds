using {CatalogService as srv} from './cat-service';

annotate srv.Books with @( //
UI: {
  HeaderInfo         : {
    $Type         : 'UI.HeaderInfoType',
    TypeName      : 'Book',
    TypeNamePlural: 'Books'
  },
  SelectionFields    : [title],
  LineItem           : [
    {Value: title},
    {Value: stock},
    {Value: publishedOn}
  ],
  FieldGroup #General: {
    $Type: 'UI.FieldGroupType',
    Data : [
      {Value: title},
      {Value: stock},
      {Value: publishedOn}
    ],
  },
  Facets             : [{
    $Type : 'UI.ReferenceFacet',
    Target: '@UI.FieldGroup#General',
  }, ],
});
