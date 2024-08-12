/* checksum : 5dd4b9d60762e03d3ea75567518669c0 */
@cds.external : true
@Aggregation.ApplySupported : {
  Transformations: [ 'aggregate', 'groupby', 'filter' ],
  Rollup: #None
}
@Common.ApplyMultiUnitBehaviorForSortingAndFiltering : true
@Capabilities.FilterFunctions : [
  'eq',
  'ne',
  'gt',
  'ge',
  'lt',
  'le',
  'and',
  'or',
  'contains',
  'startswith',
  'endswith',
  'any',
  'all'
]
@Capabilities.SupportedFormats : [ 'application/json', 'application/pdf' ]
@PDF.Features : {
  DocumentDescriptionReference: '../../../../default/iwbep/common/0001/$metadata',
  DocumentDescriptionCollection: 'MyDocumentDescriptions',
  ArchiveFormat: true,
  Border: true,
  CoverPage: true,
  FitToPage: true,
  FontName: true,
  FontSize: true,
  Margin: true,
  Signature: true,
  ResultSizeDefault: 20000,
  ResultSizeMaximum: 20000
}
service ExtAPI {};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Contracts'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity ExtAPI.Contracts {
  key ContractId : String(30) not null;
  @cds.ambiguous : 'missing on condition?'
  _Invoices : Association to many ExtAPI.Invoices {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Custom Entity to read Invoice + PDF'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity ExtAPI.Invoices {
  key InvoiceId : String(30) not null;
  key ContractId : String(30) not null;
  InvoiceNumber : String(30) not null;
  @Core.IsMediaType : true
  MimeType : String(128) not null;
  FileName : String(128) not null;
  @Core.MediaType : MimeType
  @odata.Type : 'Edm.Stream'
  @Core.ContentDisposition : { Filename: FileName }
  @Core.AcceptableMediaTypes : [ 'application/pdf' ]
  FileContent : LargeBinary;
};

