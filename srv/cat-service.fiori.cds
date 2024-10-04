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
    {Value: publishedOn},
    {Value: author_firstName},
    {Value: author_lastName},
    {Value: author_address_zip},
    {Value: author_address_place},
  ],
  FieldGroup #General: {
    $Type: 'UI.FieldGroupType',
    Data : [
      {Value: title},
      {Value: stock},
      {Value: publishedOn},
      {Value: retailPrice}
    ],
  },
  FieldGroup #author : {
    $Type: 'UI.FieldGroupType',
    Data : [
      {Value: author_firstName},
      {Value: author_lastName},
      {Value: author_address_zip},
      {Value: author_address_place}
    ]
  },
  Facets             : [
    {
      $Type : 'UI.ReferenceFacet',
      Label : 'General',
      Target: '@UI.FieldGroup#General',
    },
    {
      $Type : 'UI.ReferenceFacet',
      Label : 'Author',
      Target: '@UI.FieldGroup#author'
    }
  ]
});
