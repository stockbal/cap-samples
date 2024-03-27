/* checksum : 7094e33cd41c10b8e869199cfc8b5628 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service API_PRODUCT {};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Produkt'
entity API_PRODUCT.A_Product {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produktart'
  ProductType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Werksüb. ProdStatus'
  @sap.quickinfo : 'Werksübergreifender Produktstatus'
  CrossPlantStatus : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Gültig ab'
  @sap.quickinfo : 'Datum, ab dem der werksübergreifende MatStatus gültig ist'
  CrossPlantStatusValidityDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Angelegt am'
  @sap.quickinfo : 'Erstellungsdatum'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Angelegt von'
  @sap.quickinfo : 'Name des Sachbearbeiters, der das Objekt hinzugefügt hat'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Letzte Änderung'
  @sap.quickinfo : 'Datum der letzten Änderung'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Geändert von'
  @sap.quickinfo : 'Name des Sachbearbeiters, der das Objekt geändert hat.'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangedByUser : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Zuletzt geändert'
  @sap.quickinfo : 'Änderungszeitstempel'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDateTime : Timestamp;
  @sap.label : 'Zum Löschen gekennz.'
  @sap.quickinfo : 'Löschkennzeichen'
  IsMarkedForDeletion : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alte Produktnummer'
  ProductOldID : String(40);
  @sap.unit : 'WeightUnit'
  @sap.label : 'Bruttogewicht'
  GrossWeight : Decimal(13, 3);
  @sap.label : 'Bestellmengeneinheit'
  @sap.semantics : 'unit-of-measure'
  PurchaseOrderQuantityUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bezugsquelle'
  SourceOfSupply : String(1);
  @sap.label : 'Gewichtseinheit'
  @sap.semantics : 'unit-of-measure'
  WeightUnit : String(3);
  @sap.unit : 'WeightUnit'
  @sap.label : 'Nettogewicht'
  NetWeight : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'UrsprLand/Region'
  @sap.quickinfo : 'Ursprungsland/-region des Materials (IHK-Ursprung)'
  CountryOfOrigin : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Wettbewerber'
  CompetitorID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produktgruppe'
  ProductGroup : String(9);
  @sap.label : 'Basismengeneinheit'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Allg. PosTypengruppe'
  @sap.quickinfo : 'Allgemeine Positionstypengruppe'
  ItemCategoryGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkthierarchie'
  ProductHierarchy : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sparte'
  Division : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Variable BME'
  @sap.quickinfo : 'Variable Bestellmengeneinheit aktiv'
  VarblPurOrdUnitIsActive : String(1);
  @sap.label : 'Volumeneinheit'
  @sap.semantics : 'unit-of-measure'
  VolumeUnit : String(3);
  @sap.unit : 'VolumeUnit'
  @sap.label : 'Volumen'
  MaterialVolume : Decimal(13, 3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'ANP Code'
  ANPCode : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Marke'
  Brand : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bezugsvorschrift'
  @sap.quickinfo : 'Bezugvorschrift'
  ProcurementRule : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Gültig ab'
  @sap.quickinfo : 'Datum gültig ab'
  ValidityStartDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dispositionsstufe'
  LowLevelCode : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sammelmaterial'
  @sap.quickinfo : 'Materialnummer des Sammelmaterials bei Lotmaterialien'
  ProdNoInGenProdInPrepackProd : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Serialnummernprofil'
  SerialIdentifierAssgmtProfile : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Größe/Abmessung'
  SizeOrDimensionText : String(32);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Normbezeichnung'
  @sap.quickinfo : 'Normbezeichnung (z.B. DIN)'
  IndustryStandardName : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'GTIN'
  @sap.quickinfo : 'Global Trade Item Number (EAN/UPC/GTIN)'
  ProductStandardID : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'EAN-Typ'
  @sap.quickinfo : 'Nummerntyp der Europäischen Artikelnummer'
  InternationalArticleNumberCat : String(2);
  @sap.label : 'Konfigurierbar'
  @sap.quickinfo : 'Produkt ist konfigurierbar'
  ProductIsConfigurable : Boolean;
  @sap.label : 'Chargenverwaltung'
  @sap.quickinfo : 'Kennzeichen für Chargenpflicht'
  IsBatchManagementRequired : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ext. Produktgruppe'
  @sap.quickinfo : 'Externe Produktgruppe'
  ExternalProductGroup : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Werksübergr. KP'
  @sap.quickinfo : 'Werksübergreifendes konfigurierbares Produkt'
  CrossPlantConfigurableProduct : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Serialisierungsebene'
  @sap.quickinfo : 'Ebene der Eindeutigkeit für Serialnummer'
  SerialNoExplicitnessLevel : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Herstellerteilenr.'
  @sap.quickinfo : 'Herstellerteilenummer'
  ProductManufacturerNumber : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Hersteller'
  @sap.quickinfo : 'Nummer eines Herstellers'
  ManufacturerNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'HerstTeileprofil'
  @sap.quickinfo : 'Herstellerteileprofil'
  ManufacturerPartProfile : String(4);
  @sap.label : 'QM in Besch. aktiv'
  @sap.quickinfo : 'QM in der Beschaffung aktiv'
  QltyMgmtInProcmtIsActive : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Branche'
  IndustrySector : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Änderungsnummer'
  ChangeNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Revisionsstand'
  MaterialRevisionLevel : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Handhabungskennz.'
  @sap.quickinfo : 'Handhabungskennzeichen'
  HandlingIndicator : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lager-Materialgruppe'
  WarehouseProductGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lager-Raumbedingung'
  WarehouseStorageCondition : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard-HU-Typ'
  StandardHandlingUnitType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Serialnummernprofil'
  SerialNumberProfile : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Anpassungsprof.'
  @sap.quickinfo : 'Anpassungsprofil'
  AdjustmentProfile : String(3);
  @sap.label : 'Bevorzugte ME'
  @sap.quickinfo : 'Bevorzugte Alternativmengeneinheit für Lagervorgänge'
  @sap.semantics : 'unit-of-measure'
  PreferredUnitOfMeasure : String(3);
  @sap.label : 'Diebstahlgefährdet'
  IsPilferable : Boolean;
  @sap.label : 'Gefahrstoffrelevant'
  IsRelevantForHzdsSubstances : Boolean;
  @sap.label : 'Quarantänezeit'
  QuarantinePeriod : Decimal(3, 0);
  @sap.label : 'Zeiteinheit'
  @sap.quickinfo : 'Zeiteinheit für Quarantänezeit'
  @sap.semantics : 'unit-of-measure'
  TimeUnitForQuarantinePeriod : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Qualitätsprüfgruppe'
  QualityInspectionGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Berechtigungsgruppe'
  AuthorizationGroup : String(4);
  @sap.label : 'CAD-Kz.'
  @sap.quickinfo : 'CAD-Kennzeichen'
  DocumentIsCreatedByCAD : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Handling-Unit-Typ'
  HandlingUnitType : String(4);
  @sap.label : 'Eigengew. variabel'
  @sap.quickinfo : 'Eigengewicht variabel'
  HasVariableTareWeight : Boolean;
  @sap.unit : 'UnitForMaxPackagingDimensions'
  @sap.label : 'Maximale Packlänge'
  @sap.quickinfo : 'Maximale Packlänge eine Packmaterials'
  MaximumPackagingLength : Decimal(15, 3);
  @sap.unit : 'UnitForMaxPackagingDimensions'
  @sap.label : 'Maximale Packbreite'
  @sap.quickinfo : 'Maximal erlaubte Packbreite eines Packmaterials'
  MaximumPackagingWidth : Decimal(15, 3);
  @sap.unit : 'UnitForMaxPackagingDimensions'
  @sap.label : 'Maximale Packhöhe'
  @sap.quickinfo : 'Maximale Packhöhe eine Packmaterials'
  MaximumPackagingHeight : Decimal(15, 3);
  @sap.label : 'Maßeinheit'
  @sap.quickinfo : 'Maßeinheit für maximale Packlänge/-breite/-höhe'
  @sap.semantics : 'unit-of-measure'
  UnitForMaxPackagingDimensions : String(3);
  to_Description : Association to many API_PRODUCT.A_ProductDescription on $self.Product = to_Description.Product;
  @cds.ambiguous : 'missing on condition?'
  to_Plant : Association to many API_PRODUCT.A_ProductPlant {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductBasicText : Association to many API_PRODUCT.A_ProductBasicText {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductInspectionText : Association to many API_PRODUCT.A_ProductInspectionText {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductProcurement : Association to API_PRODUCT.A_ProductProcurement {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductPurchaseText : Association to many API_PRODUCT.A_ProductPurchaseText {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductQualityMgmt : Association to API_PRODUCT.A_ProductQualityMgmt {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductSales : Association to API_PRODUCT.A_ProductSales {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductSalesTax : Association to many API_PRODUCT.A_ProductSalesTax {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductStorage : Association to API_PRODUCT.A_ProductStorage {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductUnitsOfMeasure : Association to many API_PRODUCT.A_ProductUnitsOfMeasure {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesDelivery : Association to many API_PRODUCT.A_ProductSalesDelivery {  };
  @cds.ambiguous : 'missing on condition?'
  to_Valuation : Association to many API_PRODUCT.A_ProductValuation {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Grundtext'
entity API_PRODUCT.A_ProductBasicText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Materialnummer'
  key Product : String(40) not null;
  @sap.label : 'Sprachenschlüssel'
  key Language : String(2) not null;
  @sap.label : 'Zeichenfolge'
  @sap.heading : ''
  LongText : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Produktbeschreibung'
entity API_PRODUCT.A_ProductDescription {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.label : 'Sprachenschlüssel'
  key Language : String(2) not null;
  @sap.label : 'Produktbeschreibung'
  ProductDescription : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Prüftext'
entity API_PRODUCT.A_ProductInspectionText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Materialnummer'
  key Product : String(40) not null;
  @sap.label : 'Sprachenschlüssel'
  key Language : String(2) not null;
  @sap.label : 'Zeichenfolge'
  @sap.heading : ''
  LongText : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Materialnebenbuchkonto'
entity API_PRODUCT.A_ProductMLAccount {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Materialnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bewertungskreis'
  key ValuationArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bewertungsart'
  key ValuationType : String(10) not null;
  @sap.label : 'WhrTyp/BewertSicht'
  @sap.quickinfo : 'Externer Währungstyp und Bewertungssicht'
  key CurrencyRole : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Währung'
  @sap.quickinfo : 'Währungsschlüssel'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Preissteuerung'
  @sap.quickinfo : 'Preissteuerungskennzeichen'
  ProductPriceControl : String(1);
  @sap.label : 'Preiseinheit'
  PriceUnitQty : Decimal(5, 0);
  @sap.unit : 'Currency'
  @sap.label : 'Per. VPreis'
  @sap.quickinfo : 'Periodischer Verrechnungspreis'
  MovingAveragePrice : Decimal(12, 3);
  @sap.unit : 'Currency'
  @sap.label : 'Standardpreis'
  StandardPrice : Decimal(12, 3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Material-Ledger-Preise'
entity API_PRODUCT.A_ProductMLPrices {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Materialnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bewertungskreis'
  key ValuationArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bewertungsart'
  key ValuationType : String(10) not null;
  @sap.label : 'WhrTyp/BewertSicht'
  @sap.quickinfo : 'Externer Währungstyp und Bewertungssicht'
  key CurrencyRole : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Währung'
  @sap.quickinfo : 'Währungsschlüssel'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.unit : 'Currency'
  @sap.label : 'Zukünftiger Preis'
  FuturePrice : Decimal(12, 3);
  @sap.display.format : 'Date'
  @sap.label : 'Preis gültig ab'
  @sap.quickinfo : 'Datum ab dem der zukünftige BewertPreis gültig sein soll'
  FuturePriceValidityStartDate : Date;
  @sap.unit : 'Currency'
  @sap.label : 'Kosten'
  PlannedPrice : Decimal(24, 3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Werksdaten'
entity API_PRODUCT.A_ProductPlant {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Materialnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Werk'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Einkäufergruppe'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'UrsprLand/Region'
  @sap.quickinfo : 'Ursprungsland/-region des Materials (IHK-Ursprung)'
  CountryOfOrigin : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ursprungsregion'
  @sap.quickinfo : 'Ursprungsregion des Materials (IHK-Ursprung)'
  RegionOfOrigin : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lagerort'
  @sap.quickinfo : 'Produktionslagerort'
  ProductionInvtryManagedLoc : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Materialstatus'
  @sap.quickinfo : 'Werksspezifischer Materialstatus'
  ProfileCode : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Gültig ab'
  @sap.quickinfo : 'Datum, ab dem der werksspezifische Materialstatus gültig ist'
  ProfileValidityStartDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Verfügbarkeitsprüf.'
  @sap.quickinfo : 'Prüfgruppe für Verfügbarkeitsprüfung'
  AvailabilityCheckType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'GeschJahresvariante'
  @sap.quickinfo : 'Geschäftsjahresvariante'
  FiscalYearVariant : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Periodenkennzeichen'
  PeriodType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profitcenter'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Statist. Warennummer'
  @sap.quickinfo : 'Statistische Warennummer'
  Commodity : String(17);
  @sap.label : 'WE-Bearbeitungszeit'
  @sap.quickinfo : 'Bearbeitungszeit für Wareneingang in Tagen'
  GoodsReceiptDuration : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pflegestatus'
  MaintenanceStatusName : String(15);
  @sap.label : 'LV Werksebene'
  @sap.quickinfo : 'Material auf Werksebene zum Löschen vormerken'
  IsMarkedForDeletion : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dispomerkmal'
  @sap.quickinfo : 'Dispositionsmerkmal'
  MRPType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Disponent'
  MRPResponsible : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ABC-Kennzeichen'
  ABCIndicator : String(1);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Mindestlosgröße'
  MinimumLotSizeQuantity : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Maximale Losgröße'
  MaximumLotSizeQuantity : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Feste Losgröße'
  FixedLotSizeQuantity : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Steuerungscode'
  @sap.quickinfo : 'Steuerungscode für Verbrauchssteuern im Außenhandel'
  ConsumptionTaxCtrlCode : String(16);
  @sap.label : 'Kuppelprodukt'
  IsCoProduct : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Konfigurierb.Produkt'
  @sap.quickinfo : 'Konfigurierbares Produkt'
  ProductIsConfigurable : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'BestFindGruppe'
  @sap.quickinfo : 'Bestandsfindungsgruppe'
  StockDeterminationGroup : String(4);
  @sap.unit : 'BaseUnit'
  StockInTransferQuantity : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  StockInTransitQuantity : Decimal(13, 3);
  @sap.label : 'Buchen in Q-Bestand'
  @sap.quickinfo : 'Hat Buchung in Qualitätsprüfbestand'
  HasPostToInspectionStock : Boolean;
  @sap.label : 'Chargenpflicht (Wrk)'
  @sap.quickinfo : 'Kennzeichen: Chargenpflicht für Werk'
  IsBatchManagementRequired : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Serialnummernprofil'
  SerialNumberProfile : String(4);
  @sap.label : 'Neg. Bestände Werk'
  @sap.quickinfo : 'Negative Bestände im Werk zulässig'
  IsNegativeStockAllowed : Boolean;
  @sap.unit : 'BaseUnit'
  GoodsReceiptBlockedStockQty : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Konsisteuerung'
  @sap.quickinfo : 'Konsignationssteuerung'
  HasConsignmentCtrl : String(1);
  @sap.display.format : 'NonNegative'
  FiscalYearCurrentPeriod : String(4);
  @sap.display.format : 'NonNegative'
  FiscalMonthCurrentPeriod : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Beschaffungsart'
  ProcurementType : String(1);
  @sap.label : 'Chargenführung'
  @sap.quickinfo : 'Kennzeichen für Chargenführung (intern)'
  IsInternalBatchManaged : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material: CFOP-Typ'
  ProductCFOPCategory : String(2);
  @sap.label : 'Relv. f. Verbrauchssteuer'
  @sap.quickinfo : 'Kennzeichen für Verbrauchssteuerrelevanz'
  ProductIsExciseTaxRelevant : Boolean;
  @sap.label : 'Basismengeneinheit'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Konf. Material'
  @sap.quickinfo : 'Konfigurierbares Material'
  ConfigurableProduct : String(40);
  @sap.label : 'Ausgabemengeneinheit'
  @sap.semantics : 'unit-of-measure'
  GoodsIssueUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'MatFraGruppe'
  @sap.quickinfo : 'Material-Frachtgruppe'
  MaterialFreightGroup : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'UC-Referenzmaterial'
  @sap.quickinfo : 'Referenzmaterial für Ursprungschargen'
  OriginalBatchReferenceMaterial : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'UC-Führung'
  @sap.quickinfo : 'Kennzeichen für Ursprungschargenführung'
  OriglBatchManagementIsRequired : String(1);
  @sap.label : 'Kritisches Teil'
  @sap.quickinfo : 'Kennzeichen: kritisches Teil'
  ProductIsCriticalPrt : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Logist. Aufw.gruppe'
  @sap.quickinfo : 'Logistische Aufwandsgruppe zur Arbeitslastberechnung'
  ProductLogisticsHandlingGroup : String(4);
  @cds.ambiguous : 'missing on condition?'
  to_PlantMRPArea : Association to many API_PRODUCT.A_ProductPlantMRPArea {  };
  @cds.ambiguous : 'missing on condition?'
  to_PlantQualityMgmt : Association to API_PRODUCT.A_ProductPlantQualityMgmt {  };
  @cds.ambiguous : 'missing on condition?'
  to_PlantSales : Association to API_PRODUCT.A_ProductPlantSales {  };
  @cds.ambiguous : 'missing on condition?'
  to_PlantStorage : Association to API_PRODUCT.A_ProductPlantStorage {  };
  @cds.ambiguous : 'missing on condition?'
  to_PlantText : Association to API_PRODUCT.A_ProductPlantText {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProdPlantInternationalTrade : Association to API_PRODUCT.A_ProductPlantIntlTrd {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductPlantCosting : Association to API_PRODUCT.A_ProductPlantCosting {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductPlantForecast : Association to API_PRODUCT.A_ProductPlantForecasting {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductPlantProcurement : Association to API_PRODUCT.A_ProductPlantProcurement {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductSupplyPlanning : Association to API_PRODUCT.A_ProductSupplyPlanning {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductWorkScheduling : Association to API_PRODUCT.A_ProductWorkScheduling {  };
  @cds.ambiguous : 'missing on condition?'
  to_StorageLocation : Association to many API_PRODUCT.A_ProductStorageLocation {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Kalkulationsdaten auf Werksebene'
entity API_PRODUCT.A_ProductPlantCosting {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Werk'
  key Plant : String(4) not null;
  @sap.label : 'Kuppelprodukt'
  IsCoProduct : Boolean;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Kalkulationslosgröße'
  @sap.quickinfo : 'Losgröße der Erzeugniskalkulation'
  CostingLotSize : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Abweichungsschlüssel'
  VarianceKey : String(6);
  @sap.label : 'Basismengeneinheit'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plangruppenzähler'
  TaskListGroupCounter : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plangruppe'
  @sap.quickinfo : 'Schlüssel der Plangruppe'
  TaskListGroup : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plantyp'
  TaskListType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fertigungsversion'
  @sap.quickinfo : 'Fertigungsversion, die kalkuliert werden soll'
  CostingProductionVersion : String(4);
  @sap.label : 'Festpreiskuppelprod.'
  @sap.quickinfo : 'Festpreiskuppelprodukt'
  IsFixedPriceCoProduct : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sonderbeschaffungsart'
  @sap.quickinfo : 'Sonderbeschaffungsart für die Kalkulation'
  CostingSpecialProcurementType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'StücklAlternative'
  @sap.quickinfo : 'Stücklistenalternative'
  SourceBOMAlternative : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'StücklVerwendung'
  @sap.quickinfo : 'Stücklistenverwendung'
  ProductBOMUsage : String(1);
  @sap.label : 'Nicht kalkulieren'
  ProductIsCostingRelevant : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Prognosedaten'
entity API_PRODUCT.A_ProductPlantForecasting {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Werk'
  key Plant : String(4) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Datum bis'
  @sap.quickinfo : 'Bisdatum zum Bezugsmaterial Verbrauch'
  ConsumptionRefUsageEndDate : Date;
  @sap.label : 'Multiplikator'
  @sap.quickinfo : 'Multiplikator zum Bezugsmaterial für Verbrauch'
  ConsumptionQtyMultiplier : Decimal(4, 2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bezugsmat. Verbrauch'
  @sap.quickinfo : 'Bezugsmaterial Verbrauch'
  ConsumptionReferenceProduct : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bezugswerk Verbrauch'
  ConsumptionReferencePlant : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Internationale Handelsdaten'
entity API_PRODUCT.A_ProductPlantIntlTrd {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Werk'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ursprungsland/-region'
  @sap.quickinfo : 'Ursprungsland/-region des Produkts'
  CountryOfOrigin : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ursprungsregion'
  RegionOfOrigin : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Steuerungscode'
  @sap.quickinfo : 'Steuerungscode für Verbrauchssteuern im Außenhandel'
  ConsumptionTaxCtrlCode : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CAS-RN (Pharmazie)'
  @sap.quickinfo : 'CAS-Nummer für pharmazeutische Erzeugnisse im Außenhandel'
  ProductCASNumber : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PRODCOM/GP-Nummer'
  @sap.quickinfo : 'Produktionsstat: PRODCOM/GP-Meldenummer für Außenhandel'
  ProdIntlTradeClassification : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Intrastat-Gruppe'
  @sap.quickinfo : 'Materialgruppe für Intrastat'
  ExportAndImportProductGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Dispositionsbereichsdaten'
entity API_PRODUCT.A_ProductPlantMRPArea {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Materialnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dispobereich: Werk'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dispobereich'
  key MRPArea : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dispomerkmal'
  @sap.quickinfo : 'Dispositionsmerkmal'
  MRPType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Disponent'
  MRPResponsible : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dispogruppe'
  @sap.quickinfo : 'Dispositionsgruppe'
  MRPGroup : String(4);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Meldebestand'
  ReorderThresholdQuantity : Decimal(13, 3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fixierungshorizont'
  PlanningTimeFence : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Losgrößenverfahren'
  @sap.quickinfo : 'Losgrößenverfahren in der Disposition'
  LotSizingProcedure : String(2);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Rundungswert'
  @sap.quickinfo : 'Bestellmengenrundungswert'
  LotSizeRoundingQuantity : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Mindestlosgröße'
  MinimumLotSizeQuantity : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Maximale Losgröße'
  MaximumLotSizeQuantity : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Höchstbestand'
  MaximumStockQuantity : Decimal(13, 3);
  @sap.label : 'BaugrAusschuss (%)'
  @sap.quickinfo : 'Baugruppenausschuß in Prozent'
  AssemblyScrapPercent : Decimal(5, 2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sonderbeschaffung'
  @sap.quickinfo : 'Sonderbeschaffungsart'
  ProcurementSubType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lagerort'
  @sap.quickinfo : 'Vorschlagslagerort für Fremdbeschaffung'
  DfltStorageLocationExtProcmt : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planungskalender'
  MRPPlanningCalendar : String(3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Sicherheitsbestand'
  SafetyStockQuantity : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reichweitenprofil'
  RangeOfCvrgPrflCode : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'BedVorlaufzeit'
  @sap.quickinfo : 'Bedarfsvorlaufzeit (in Werktagen)'
  SafetyDuration : String(2);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Feste Losgröße'
  FixedLotSizeQuantity : Decimal(13, 3);
  @sap.unit : 'Currency'
  @sap.label : 'Losfixe Kosten'
  @sap.quickinfo : 'Losgrößenfixe Kosten'
  LotSizeIndependentCosts : Decimal(12, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Code für Lagerkosten'
  @sap.quickinfo : 'Code für Lagerkostenprozentsatz'
  IsStorageCosts : String(1);
  @sap.label : 'Taktzeit'
  RqmtQtyRcptTaktTmeInWrkgDays : Decimal(3, 0);
  @sap.label : 'Lieferbereitsch.(%)'
  @sap.quickinfo : 'Lieferbereitschaftsgrad'
  SrvcLvl : Decimal(3, 1);
  @sap.label : 'Löschvormerkung'
  IsMarkedForDeletion : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'BV-PProfil'
  @sap.quickinfo : 'Bedarfsvorlauf-Periodenprofil'
  PerdPrflForSftyTme : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Disporelevante'
  @sap.quickinfo : 'Dispositionsrelevanz für abhängige Bedarfe'
  IsMRPDependentRqmt : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'BedVorlKennz.'
  @sap.quickinfo : 'Bedarfsvorlaufkennzeichen (mit oder ohne Bedarfsvorlauf)'
  IsSafetyTime : String(1);
  @sap.label : 'Planlieferzeit'
  @sap.quickinfo : 'Planlieferzeit in Tagen'
  PlannedDeliveryDurationInDays : Decimal(3, 0);
  @sap.label : 'Planlief. berücks.'
  @sap.quickinfo : 'Planlieferzeit von Dispositionsbereich berücksichtigen'
  IsPlannedDeliveryTime : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Währung'
  @sap.quickinfo : 'Währungsschlüssel'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.label : 'Basismengeneinheit'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dispositionsrhythmus'
  PlanAndOrderDayDetermination : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rundungsprofil'
  RoundingProfile : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lagerort'
  @sap.quickinfo : 'Produktionslagerort'
  StorageLocation : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Beschaffungsdaten'
entity API_PRODUCT.A_ProductPlantProcurement {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Werk'
  key Plant : String(4) not null;
  @sap.label : 'Autom.Bestellung'
  @sap.quickinfo : 'Kennzeichen: Automatische Bestellung erlaubt'
  IsAutoPurOrdCreationAllowed : Boolean;
  @sap.label : 'Orderbuchpflicht'
  @sap.quickinfo : 'Kennzeichen Orderbuchpflicht'
  IsSourceListRequired : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bezugsquelle'
  SourceOfSupplyCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'JIT-Lieferung'
  @sap.quickinfo : 'Feinabruf'
  ItmIsRlvtToJITDelivSchedules : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Qualitätsmanagementdaten'
entity API_PRODUCT.A_ProductPlantQualityMgmt {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Werk'
  key Plant : String(4) not null;
  @sap.label : 'Max. Lagerungszeit'
  @sap.quickinfo : 'Maximale Lagerungszeit'
  MaximumStoragePeriod : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'QM-Steuerschlüssel'
  @sap.quickinfo : 'Steuerschlüssel für Qualitätsmanagement in der Beschaffung'
  QualityMgmtCtrlKey : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'QM-MatBerechtigung'
  @sap.quickinfo : 'Materialberechtigungsgruppe für Aktivitäten im QM'
  MatlQualityAuthorizationGroup : String(6);
  @sap.label : 'Buchen in Q-Bestand'
  @sap.quickinfo : 'Hat Buchung in Qualitätsprüfbestand'
  HasPostToInspectionStock : Boolean;
  @sap.label : 'Dokupflichtig'
  @sap.quickinfo : 'Kennzeichen für Dokumentationspflicht'
  InspLotDocumentationIsRequired : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Soll-QM-System'
  @sap.quickinfo : 'Gefordertes QM-System des Lieferanten'
  SuplrQualityManagementSystem : String(4);
  @sap.label : 'Prüfintervall'
  @sap.quickinfo : 'Zeitabstand bis zur nächsten wiederkehrenden Prüfung'
  RecrrgInspIntervalTimeInDays : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Zeugnistyp'
  ProductQualityCertificateType : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Verkaufsdaten auf Werksebene'
entity API_PRODUCT.A_ProductPlantSales {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Werk'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ladegruppe'
  LoadingGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Austauschteil'
  ReplacementPartType : String(1);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Basismenge'
  @sap.quickinfo : 'Basismenge für Kapazitätsplanung im Versand'
  CapPlanningQuantityInBaseUoM : Decimal(13, 3);
  @sap.label : 'Bearbeitungszeit'
  @sap.quickinfo : 'Versandbearbeitungszeit'
  ProductShippingProcessingTime : Decimal(5, 2);
  @sap.label : 'Rüstzeit'
  @sap.quickinfo : 'Versandrüstzeit'
  WrkCentersShipgSetupTimeInDays : Decimal(5, 2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Verfügbarkeitsprüf.'
  @sap.quickinfo : 'Prüfgruppe für Verfügbarkeitsprüfung'
  AvailabilityCheckType : String(2);
  @sap.label : 'Basismengeneinheit'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Lagerdaten auf Werksebene'
entity API_PRODUCT.A_ProductPlantStorage {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Werk'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'CC-Inventurkennz.'
  @sap.quickinfo : 'Inventurkennzeichen für Cycle-Counting'
  InventoryForCycleCountInd : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Servicegrad'
  @sap.quickinfo : 'Servicegrad WWS'
  ProvisioningServiceLevel : String(1);
  @sap.label : 'CC-Kennz. fix'
  @sap.quickinfo : 'CC-Kennzeichen ist fix'
  CycleCountingIndicatorIsFixed : Boolean;
  @sap.label : 'Zeiteinheit'
  @sap.quickinfo : 'Einheit für die maximale Lagerungszeit'
  @sap.semantics : 'unit-of-measure'
  ProdMaximumStoragePeriodUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mat.ein./ausl.'
  @sap.quickinfo : 'Strategie Materialein- und -auslagerung'
  WrhsMgmtPtwyAndStkRemovalStrgy : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Werkstext'
entity API_PRODUCT.A_ProductPlantText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Materialnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Werk'
  @sap.quickinfo : 'Werk :'
  key Plant : String(4) not null;
  @sap.label : 'Zeichenfolge'
  @sap.heading : ''
  LongText : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Basisbeschaffungsdaten'
entity API_PRODUCT.A_ProductProcurement {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Materialnummer'
  key Product : String(40) not null;
  @sap.label : 'Bestellmengeneinheit'
  @sap.semantics : 'unit-of-measure'
  PurchaseOrderQuantityUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Variable BME'
  @sap.quickinfo : 'Variable Bestellmengeneinheit aktiv'
  VarblPurOrdUnitStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Einkaufswerteschl.'
  @sap.quickinfo : 'Einkaufswerteschlüssel'
  PurchasingAcknProfile : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Einkaufstext'
entity API_PRODUCT.A_ProductPurchaseText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Materialnummer'
  key Product : String(40) not null;
  @sap.label : 'Sprachenschlüssel'
  key Language : String(2) not null;
  @sap.label : 'Zeichenfolge'
  @sap.heading : ''
  LongText : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Basis-Qualitätsmanagementdaten'
entity API_PRODUCT.A_ProductQualityMgmt {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.label : 'QM in Besch. aktiv'
  @sap.quickinfo : 'QM in der Beschaffung aktiv'
  QltyMgmtInProcmtIsActive : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Basisverkaufsdaten'
entity API_PRODUCT.A_ProductSales {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Materialnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'VTL-überg. Status'
  @sap.quickinfo : 'Vertriebslinienübergreifender Materialstatus'
  SalesStatus : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Vetriebslinienübergr. Produktgültigkeit'
  @sap.quickinfo : 'GültigkBeginn des vetriebslinienübergreifenden Produktstatus'
  SalesStatusValidityDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Steuerklassifikation'
  @sap.quickinfo : 'Steuerklassifikation Material'
  TaxClassification : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transportgruppe'
  TransportationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Verkaufsorganisationsdaten'
entity API_PRODUCT.A_ProductSalesDelivery {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Verkaufsorganisation'
  key ProductSalesOrg : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vertriebsweg'
  key ProductDistributionChnl : String(2) not null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Mindestauftragsmenge'
  @sap.quickinfo : 'Mindestauftragsmenge in Basismengeneinheit'
  MinimumOrderQuantity : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Auslieferungswerk'
  @sap.quickinfo : 'Auslieferungswerk (eigen oder fremd)'
  SupplyingPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produktpreisgruppe'
  @sap.quickinfo : 'Produktpreisfindungsgruppe'
  PriceSpecificationProductGroup : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Kontierungsgr. Mat.'
  @sap.quickinfo : 'Kontierungsgruppe für Material'
  AccountDetnProductGroup : String(2);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Mindestliefermenge'
  @sap.quickinfo : 'Mindestliefermenge in Lieferscheinbearbeitung'
  DeliveryNoteProcMinDelivQty : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Positionstypengruppe'
  @sap.quickinfo : 'Positionstypengruppe aus Materialstammsatz'
  ItemCategoryGroup : String(4);
  @sap.label : 'Mengeneinheit'
  @sap.quickinfo : 'Mengeneinheit der Liefereinheit'
  @sap.semantics : 'unit-of-measure'
  DeliveryQuantityUnit : String(3);
  @sap.unit : 'DeliveryQuantityUnit'
  @sap.label : 'Liefereinheit'
  DeliveryQuantity : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'VTL-spez. Status'
  @sap.quickinfo : 'Vertriebslinienspezifischer Materialstatus'
  ProductSalesStatus : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Gültig ab'
  @sap.quickinfo : 'Datum, ab dem der VTL-spezifische Materialstatus gültig ist'
  ProductSalesStatusValidityDate : Date;
  @sap.label : 'Verkaufsmengeneinh.'
  @sap.quickinfo : 'Verkaufsmengeneinheit'
  @sap.semantics : 'unit-of-measure'
  SalesMeasureUnit : String(3);
  @sap.label : 'LV Vertriebslinie'
  @sap.quickinfo : 'Kennz.: Mat. auf Vertriebslinienebene zum Löschen vormerken'
  IsMarkedForDeletion : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkthierarchie'
  ProductHierarchy : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produktgruppe 1'
  FirstSalesSpecProductGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produktgruppe 2'
  SecondSalesSpecProductGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produktgruppe 3'
  ThirdSalesSpecProductGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produktgruppe 4'
  FourthSalesSpecProductGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produktgruppe 5'
  FifthSalesSpecProductGroup : String(3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'MindFertigungsMng'
  @sap.quickinfo : 'Mindesteinzelfertigungsmenge'
  MinimumMakeToOrderOrderQty : Decimal(13, 3);
  @sap.label : 'Basismengeneinheit'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'StatistikGrMaterial'
  @sap.quickinfo : 'Statistikgruppe Material'
  LogisticsStatisticsGroup : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bonusgruppe'
  VolumeRebateGroup : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Provisionsgruppe'
  ProductCommissionGroup : String(2);
  @sap.label : 'Skontofähig'
  @sap.quickinfo : 'Kennzeichen: skontofähig'
  CashDiscountIsDeductible : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Preismaterial'
  PricingReferenceProduct : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rundungsprofil'
  RoundingProfile : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'MengeneinheitenGrp'
  @sap.quickinfo : 'Mengeneinheitengruppe'
  ProductUnitGroup : String(4);
  @sap.label : 'VME nicht variabel'
  @sap.quickinfo : 'Variable Verkaufsmengeneinheit nicht erlaubt'
  VariableSalesUnitIsNotAllowed : Boolean;
  @sap.label : 'Produktattribut 1'
  @sap.quickinfo : 'Kennzeichen Produktattribut 1'
  ProductHasAttributeID01 : Boolean;
  @sap.label : 'Produktattribut 2'
  @sap.quickinfo : 'Kennzeichen Produktattribut 2'
  ProductHasAttributeID02 : Boolean;
  @sap.label : 'Produktattribut 3'
  @sap.quickinfo : 'Kennzeichen Produktattribut 3'
  ProductHasAttributeID03 : Boolean;
  @sap.label : 'Produktattribut 4'
  @sap.quickinfo : 'Kennzeichen Produktattribut 4'
  ProductHasAttributeID04 : Boolean;
  @sap.label : 'Produktattribut 5'
  @sap.quickinfo : 'Kennzeichen Produktattribut 5'
  ProductHasAttributeID05 : Boolean;
  @sap.label : 'Produktattribut 6'
  @sap.quickinfo : 'Kennzeichen Produktattribut 6'
  ProductHasAttributeID06 : Boolean;
  @sap.label : 'Produktattribut 7'
  @sap.quickinfo : 'Kennzeichen Produktattribut 7'
  ProductHasAttributeID07 : Boolean;
  @sap.label : 'Produktattribut 8'
  @sap.quickinfo : 'Kennzeichen Produktattribut 8'
  ProductHasAttributeID08 : Boolean;
  @sap.label : 'Produktattribut 9'
  @sap.quickinfo : 'Kennzeichen Produktattribut 9'
  ProductHasAttributeID09 : Boolean;
  @sap.label : 'Produktattribut 10'
  @sap.quickinfo : 'Kennzeichen Produktattribut 10'
  ProductHasAttributeID10 : Boolean;
  @cds.ambiguous : 'missing on condition?'
  to_SalesTax : Association to many API_PRODUCT.A_ProductSalesTax {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesText : Association to many API_PRODUCT.A_ProductSalesText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Umsatzsteuerdaten'
entity API_PRODUCT.A_ProductSalesTax {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Abgangsland/-region'
  @sap.quickinfo : 'Abgangsland/-region (aus dem/der die Ware versandt wird)'
  key Country : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Steuerkonditionsart'
  @sap.quickinfo : 'Steuerkonditionsart (Umsatzsteuer, Mehrwertsteuer...)'
  key TaxCategory : String(4) not null;
  key TaxClassification : String(1) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Verkaufstext'
entity API_PRODUCT.A_ProductSalesText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Verkaufsorganisation'
  key ProductSalesOrg : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vertriebsweg'
  key ProductDistributionChnl : String(2) not null;
  @sap.label : 'Sprachenschlüssel'
  key Language : String(2) not null;
  @sap.label : 'Zeichenfolge'
  @sap.heading : ''
  LongText : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Basislagerungsdaten'
entity API_PRODUCT.A_ProductStorage {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Materialnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Raumbedingungen'
  StorageConditions : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Temperaturbedingung'
  @sap.quickinfo : 'Kennzeichen für Temperaturbedingung'
  TemperatureConditionInd : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gefahrstoffnummer'
  HazardousMaterialNumber : String(40);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Menge WE-Scheine'
  @sap.quickinfo : 'Menge: Ermittlung der Anzahl zu druckender Begleitscheine'
  NmbrOfGROrGISlipsToPrintQty : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Etikettierungsart'
  LabelType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Etikettierungsform'
  LabelForm : String(2);
  @sap.label : 'Mindestrestlaufzeit'
  MinRemainingShelfLife : Decimal(4, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'MHD/Verfallsd.'
  @sap.quickinfo : 'Mindeshaltbarkeitsdatum / Verfallsdatum'
  ExpirationDate : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PerKenn. für VerDat.'
  @sap.quickinfo : 'Periodenkennzeichen für Verfallsdatum'
  ShelfLifeExpirationDatePeriod : String(1);
  @sap.label : 'Gesamthaltbarkeit'
  TotalShelfLife : Decimal(4, 0);
  @sap.label : 'Basismengeneinheit'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Lagerortdaten'
entity API_PRODUCT.A_ProductStorageLocation {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Materialnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Werk'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lagerort'
  key StorageLocation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lagerplatz'
  WarehouseStorageBin : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pflegestatus'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenanceStatus : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Inventursperre'
  @sap.quickinfo : 'Inventursperrkennzeichen'
  PhysicalInventoryBlockInd : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Angelegt am'
  @sap.quickinfo : 'Erstellungsdatum'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  @sap.label : 'LV Lagerortebene'
  @sap.quickinfo : 'Material auf Lagerortebene zum Löschen vormerken'
  IsMarkedForDeletion : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Jüngstes Zähldat.'
  @sap.quickinfo : 'Datum der letzten gebuchten Zählung'
  DateOfLastPostedCntUnRstrcdStk : Date;
  @sap.label : 'Best.Korrekturfaktor'
  @sap.quickinfo : 'Bestandskorrekturfaktor'
  InventoryCorrectionFactor : Double;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Eingesch.verwendbar'
  @sap.quickinfo : 'Inventurkennzeichen für eingeschränkt verwendbaren Bestand'
  InvtryRestrictedUseStockInd : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lagerbestand LJ'
  @sap.quickinfo : 'Inventurkennzeichen für Lagerbestand im laufenden Jahr'
  InvtryCurrentYearStockInd : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'QualPrüfbestand LJ'
  @sap.quickinfo : 'Inventurkennzeichen für Qualitätsprüfbestand im lfd. Jahr'
  InvtryQualInspCurrentYrStkInd : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gesperrter Bestand'
  @sap.quickinfo : 'Inventurkennzeichen für gesperrten Bestand'
  InventoryBlockStockInd : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Eing. verwendbar'
  @sap.quickinfo : 'Inventurkennnz. für eing. verwendb. Bestand Vorperiode'
  InvtryRestStockPrevPeriodInd : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lagerbestand VJ'
  @sap.quickinfo : 'Inventurkennzeichen für Lagerbestand Vorjahr'
  InventoryStockPrevPeriod : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'QualPrüfbestand VP'
  @sap.quickinfo : 'Inventurkennzeichen für Qualitätsprüfbestand Vorperiode'
  InvtryStockQltyInspPrevPeriod : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gesp. Bestand VP'
  @sap.quickinfo : 'Inventurkennzeichen für gesperrten Bestand Vorperiode'
  HasInvtryBlockStockPrevPeriod : String(3);
  @sap.display.format : 'NonNegative'
  FiscalYearCurrentPeriod : String(4);
  @sap.display.format : 'NonNegative'
  FiscalMonthCurrentPeriod : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Geschäftsjahr der aktuellen Inventurkennzeichen'
  @sap.heading : ''
  FiscalYearCurrentInvtryPeriod : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Kommissionierbereich'
  @sap.quickinfo : 'Kommissionierbereich für Lean-WM'
  LeanWrhsManagementPickingArea : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Lieferplanungsdaten'
entity API_PRODUCT.A_ProductSupplyPlanning {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Werk'
  key Plant : String(4) not null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Feste Losgröße'
  FixedLotSizeQuantity : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Maximale Losgröße'
  MaximumLotSizeQuantity : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Mindestlosgröße'
  MinimumLotSizeQuantity : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Rundungswert'
  @sap.quickinfo : 'Bestellmengenrundungswert'
  LotSizeRoundingQuantity : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Losgrößenverfahren'
  @sap.quickinfo : 'Losgrößenverfahren in der Disposition'
  LotSizingProcedure : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dispomerkmal'
  @sap.quickinfo : 'Dispositionsmerkmal'
  MRPType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Disponent'
  MRPResponsible : String(3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Sicherheitsbestand'
  SafetyStockQuantity : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'MinSichBestand'
  @sap.quickinfo : 'Mindestsicherheitsbestand'
  MinimumSafetyStockQuantity : Decimal(13, 3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fixierungshorizont'
  PlanningTimeFence : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ABC-Kennzeichen'
  ABCIndicator : String(1);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Höchstbestand'
  MaximumStockQuantity : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Meldebestand'
  ReorderThresholdQuantity : Decimal(13, 3);
  @sap.label : 'Planlieferzeit'
  @sap.quickinfo : 'Planlieferzeit in Tagen'
  PlannedDeliveryDurationInDays : Decimal(3, 0);
  @sap.display.format : 'NonNegative'
  @sap.label : 'BedVorlaufzeit'
  @sap.quickinfo : 'Bedarfsvorlaufzeit (in Werktagen)'
  SafetyDuration : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Strategiegruppe'
  @sap.quickinfo : 'Planungsstrategiegruppe'
  PlanningStrategyGroup : String(2);
  @sap.label : 'GesWiederbeschZeit'
  @sap.quickinfo : 'Gesamtwiederbeschaffungszeit (Arbeitstage)'
  TotalReplenishmentLeadTime : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Beschaffungsart'
  ProcurementType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sonderbeschaffung'
  @sap.quickinfo : 'Sonderbeschaffungsart'
  ProcurementSubType : String(2);
  @sap.label : 'BaugrAusschuss (%)'
  @sap.quickinfo : 'Baugruppenausschuß in Prozent'
  AssemblyScrapPercent : Decimal(5, 2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Verfügbarkeitsprüf.'
  @sap.quickinfo : 'Prüfgruppe für Verfügbarkeitsprüfung'
  AvailabilityCheckType : String(2);
  @sap.label : 'WE-Bearbeitungszeit'
  @sap.quickinfo : 'Bearbeitungszeit für Wareneingang in Tagen'
  GoodsReceiptDuration : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dispogruppe'
  @sap.quickinfo : 'Dispositionsgruppe'
  MRPGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lagerort'
  @sap.quickinfo : 'Vorschlagslagerort für Fremdbeschaffung'
  DfltStorageLocationExtProcmt : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Verrechnungsmodus'
  ProdRqmtsConsumptionMode : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Verrechnungsint., rückwärts'
  @sap.quickinfo : 'Verrechnungsintervall: rückwärts'
  BackwardCnsmpnPeriodInWorkDays : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Verrechnungsint., vorwärts'
  @sap.quickinfo : 'Verrechnungsintervall: vorwärts'
  FwdConsumptionPeriodInWorkDays : String(3);
  @sap.label : 'Basismengeneinheit'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dispositionsrhythmus'
  PlanAndOrderDayDetermination : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rundungsprofil'
  RoundingProfile : String(4);
  @sap.unit : 'Currency'
  @sap.label : 'Losfixe Kosten'
  @sap.quickinfo : 'Losgrößenfixe Kosten'
  LotSizeIndependentCosts : Decimal(12, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planungskalender'
  MRPPlanningCalendar : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reichweitenprofil'
  RangeOfCvrgPrflCode : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'BedVorlKennz.'
  @sap.quickinfo : 'Bedarfsvorlaufkennzeichen (mit oder ohne Bedarfsvorlauf)'
  IsSafetyTime : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'BV-PProfil'
  @sap.quickinfo : 'Bedarfsvorlauf-Periodenprofil'
  PerdPrflForSftyTme : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Disporelevante'
  @sap.quickinfo : 'Dispositionsrelevanz für abhängige Bedarfe'
  IsMRPDependentRqmt : String(1);
  @sap.label : 'Eigenfertigungszeit'
  InHouseProductionTime : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Projektübergr.'
  @sap.quickinfo : 'Kennzeichen für projektübergreifendes Material'
  ProductIsForCrossProject : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Code für Lagerkosten'
  @sap.quickinfo : 'Code für Lagerkostenprozentsatz'
  StorageCostsPercentageCode : String(1);
  @sap.label : 'Lieferbereitsch.(%)'
  @sap.quickinfo : 'Lieferbereitschaftsgrad'
  SrvcLvl : Decimal(3, 1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mischdisposition'
  @sap.quickinfo : 'Mischdispositionskennzeichen'
  MRPAvailabilityType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nachfolgematerial'
  FollowUpProduct : String(40);
  @sap.label : 'Serienfertigung aktiviert'
  RepetitiveManufacturingIsAllwd : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Einzel/Sammel'
  @sap.quickinfo : 'Kennzeichen für Einzel- und Sammelbedarf'
  DependentRequirementsType : String(1);
  @sap.label : 'Schüttgut'
  @sap.quickinfo : 'Kennzeichen: Schüttgut'
  IsBulkMaterialComponent : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Serienfertigungsprofil'
  RepetitiveManufacturingProfile : String(4);
  @sap.label : 'Taktzeit'
  RqmtQtyRcptTaktTmeInWrkgDays : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Aufteilungskennz.'
  @sap.quickinfo : 'Aufteilungskennzeichen'
  ForecastRequirementsAreSplit : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Auslaufdatum'
  EffectiveOutDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dispositionsprofil'
  @sap.quickinfo : 'Material: Dispositionsprofil'
  MRPProfile : String(4);
  @sap.label : 'KompAusschuß (%)'
  @sap.quickinfo : 'Komponentenausschuss in Prozent'
  ComponentScrapInPercent : Decimal(5, 2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Auslaufkennzeichen'
  ProductIsToBeDiscontinued : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bedarfszusammenf.'
  @sap.quickinfo : 'Kennzeichen für Bedarfszusammenfassung'
  ProdRqmtsAreConsolidated : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Retrogr. Entnahme'
  @sap.quickinfo : 'Kennzeichen: retrograde Entnahme'
  MatlCompIsMarkedForBackflush : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vorgeschlagener PVB'
  @sap.quickinfo : 'Vorgeschl.Produktionsversorgungsbereich im Materialstammsatz'
  ProposedProductSupplyArea : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Währung'
  @sap.quickinfo : 'Währungsschlüssel'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Aktionssteuerung'
  @sap.quickinfo : 'Aktionssteuerung: Planauftragsabwicklung'
  PlannedOrderActionControl : String(2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Mengeneinheiten'
entity API_PRODUCT.A_ProductUnitsOfMeasure {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.label : 'Alt.Mengeneinh.'
  @sap.quickinfo : 'Alternativmengeneinheit zur Lagermengeneinheit'
  @sap.semantics : 'unit-of-measure'
  key AlternativeUnit : String(3) not null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Einheiten/Menge - Basismengeneinheit'
  @sap.quickinfo : 'Zähler für die Umrechnung in Basismengeneinheiten'
  QuantityNumerator : Decimal(5, 0);
  @sap.unit : 'AlternativeUnit'
  @sap.label : 'Einheiten/Menge - Altern. Mengeneinheit'
  @sap.quickinfo : 'Nenner für die Umrechnung in Basismengeneinheiten'
  QuantityDenominator : Decimal(5, 0);
  @sap.unit : 'VolumeUnit'
  @sap.label : 'Volumen'
  MaterialVolume : Decimal(13, 3);
  @sap.label : 'Volumeneinheit'
  @sap.semantics : 'unit-of-measure'
  VolumeUnit : String(3);
  @sap.unit : 'WeightUnit'
  @sap.label : 'Bruttogewicht'
  GrossWeight : Decimal(13, 3);
  @sap.label : 'Gewichtseinheit'
  @sap.semantics : 'unit-of-measure'
  WeightUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'EAN/UPC-Code'
  @sap.quickinfo : 'Europäische Artikelnummer (EAN)'
  GlobalTradeItemNumber : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'GTIN-Typ'
  @sap.quickinfo : 'Typ der Global Trade Item Number (GTIN)'
  GlobalTradeItemNumberCategory : String(2);
  @sap.unit : 'ProductMeasurementUnit'
  @sap.label : 'Länge'
  UnitSpecificProductLength : Decimal(13, 3);
  @sap.unit : 'ProductMeasurementUnit'
  @sap.label : 'Breite'
  UnitSpecificProductWidth : Decimal(13, 3);
  @sap.unit : 'ProductMeasurementUnit'
  @sap.label : 'Höhe'
  UnitSpecificProductHeight : Decimal(13, 3);
  @sap.label : 'Abmessungseinheit'
  @sap.quickinfo : 'Einheit für Länge/Breite/Höhe'
  @sap.semantics : 'unit-of-measure'
  ProductMeasurementUnit : String(3);
  @sap.label : 'Untergeordnete ME'
  @sap.quickinfo : 'Untergeordnete Mengeneinheit in einer Verpackungshierarchie'
  @sap.semantics : 'unit-of-measure'
  LowerLevelPackagingUnit : String(3);
  @sap.label : 'Restvol n. Schacht'
  @sap.quickinfo : 'Restvolumen nach Schachtelung (in Prozent)'
  RemainingVolumeAfterNesting : Decimal(3, 0);
  @odata.Type : 'Edm.Byte'
  @sap.label : 'max. Stapelfaktor'
  @sap.quickinfo : 'Maximaler Stapelfaktor'
  MaximumStackingFactor : Integer;
  @sap.label : 'Kapazitätsauslastung'
  CapacityUsage : Decimal(15, 3);
  @sap.label : 'Basismengeneinheit'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @cds.ambiguous : 'missing on condition?'
  to_InternationalArticleNumber : Association to many API_PRODUCT.A_ProductUnitsOfMeasureEAN {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'GTIN-Daten'
entity API_PRODUCT.A_ProductUnitsOfMeasureEAN {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Materialnummer'
  key Product : String(40) not null;
  @sap.label : 'Anzeigemengeneinheit'
  @sap.quickinfo : 'Mengeneinheit für Anzeige'
  @sap.semantics : 'unit-of-measure'
  key AlternativeUnit : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Laufende Nummer'
  key ConsecutiveNumber : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'EAN/UPC-Code'
  @sap.quickinfo : 'Europäische Artikelnummer (EAN)'
  ProductStandardID : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'GTIN-Typ'
  @sap.quickinfo : 'Typ der Global Trade Item Number (GTIN)'
  InternationalArticleNumberCat : String(2);
  @sap.label : 'Kennz. Haupt-EAN'
  @sap.quickinfo : 'Kennzeichen Haupt-EAN'
  IsMainGlobalTradeItemNumber : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Bewertungskreisdaten'
entity API_PRODUCT.A_ProductValuation {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Materialnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bewertungskreis'
  key ValuationArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bewertungsart'
  key ValuationType : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bewertungsklasse'
  ValuationClass : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Preisermittlung'
  @sap.quickinfo : 'Materialpreisermittlung: Steuerung'
  PriceDeterminationControl : String(1);
  @sap.unit : 'Currency'
  @sap.label : 'Standardpreis'
  StandardPrice : Decimal(12, 3);
  @sap.label : 'Preiseinheit'
  PriceUnitQty : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Preissteuerung'
  InventoryValuationProcedure : String(1);
  @sap.label : 'Löschv.Bewertungsart'
  @sap.quickinfo : 'Löschvormerkung für alle Materialdaten einer Bewertungsart'
  IsMarkedForDeletion : Boolean;
  @sap.unit : 'Currency'
  @sap.label : 'Gleitender Preis'
  @sap.quickinfo : 'Gleitender Durchschnittspreis/Periodischer Verrechnungspreis'
  MovingAveragePrice : Decimal(12, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bewertungstyp'
  ValuationCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produktverwendung'
  @sap.quickinfo : 'Verwendung des Produkts'
  ProductUsageType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produktherkunft'
  @sap.quickinfo : 'Herkunft des Produkts'
  ProductOriginType : String(1);
  @sap.label : 'Eigene Fertigung'
  IsProducedInhouse : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'ErzKalkNr'
  @sap.quickinfo : 'Kalkulationsnummer - Erzeugniskalkulation'
  ProdCostEstNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'BKl. Projektbestand'
  @sap.quickinfo : 'Bewertungsklasse für Projektbestand'
  ProjectStockValuationClass : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'BKl. KundAuftrBest.'
  @sap.quickinfo : 'Bewertungsklasse für Kundenauftragsbestand'
  ValuationClassSalesOrderStock : String(4);
  @sap.unit : 'Currency'
  @sap.label : 'Planpreis 1'
  @sap.quickinfo : 'Zukünftiger Planpreis 1'
  PlannedPrice1InCoCodeCrcy : Decimal(12, 3);
  @sap.unit : 'Currency'
  @sap.label : 'Planpreis 2'
  @sap.quickinfo : 'Zukünftiger Planpreis 2'
  PlannedPrice2InCoCodeCrcy : Decimal(12, 3);
  @sap.unit : 'Currency'
  @sap.label : 'Planpreis 3'
  @sap.quickinfo : 'Zukünftiger Planpreis 3'
  PlannedPrice3InCoCodeCrcy : Decimal(12, 3);
  @sap.display.format : 'Date'
  @sap.label : 'Planpreisdatum 1'
  @sap.quickinfo : 'Datum, ab dem der zukünftige Planpreis 1 gültig ist'
  FuturePlndPrice1ValdtyDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Planpreisdatum 2'
  @sap.quickinfo : 'Datum, ab dem der zukünftige Planpreis 2 gültig ist'
  FuturePlndPrice2ValdtyDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Planpreisdatum 3'
  @sap.quickinfo : 'Datum, ab dem der zukünftige Planpreis 3 gültig ist'
  FuturePlndPrice3ValdtyDate : Date;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Preiseinheit'
  @sap.quickinfo : 'Preiseinheit der steuerr. und handelsr. Bewertungspreise'
  TaxBasedPricesPriceUnitQty : Decimal(5, 0);
  @sap.display.format : 'Date'
  @sap.label : 'Letzte Preisänderung'
  @sap.quickinfo : 'Datum der letzten Preisänderung'
  PriceLastChangeDate : Date;
  @sap.unit : 'Currency'
  @sap.label : 'Zuk. Planpreis'
  @sap.quickinfo : 'Zukünftiger Planpreis'
  PlannedPrice : Decimal(12, 3);
  @sap.unit : 'Currency'
  @sap.label : 'Vorheriger Preis'
  PrevInvtryPriceInCoCodeCrcy : Decimal(12, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Währung'
  @sap.quickinfo : 'Währungsschlüssel'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.label : 'Basismengeneinheit'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @cds.ambiguous : 'missing on condition?'
  to_MLAccount : Association to many API_PRODUCT.A_ProductMLAccount {  };
  @cds.ambiguous : 'missing on condition?'
  to_MLPrices : Association to many API_PRODUCT.A_ProductMLPrices {  };
  @cds.ambiguous : 'missing on condition?'
  to_ValuationAccount : Association to API_PRODUCT.A_ProductValuationAccount {  };
  @cds.ambiguous : 'missing on condition?'
  to_ValuationCosting : Association to API_PRODUCT.A_ProductValuationCosting {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Bewertungskontodaten'
entity API_PRODUCT.A_ProductValuationAccount {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bewertungskreis'
  key ValuationArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bewertungsart'
  key ValuationType : String(10) not null;
  @sap.unit : 'Currency'
  @sap.label : 'Handelsrecht.Preis 1'
  @sap.quickinfo : 'Handelsrechtlicher Bewertungspreis - Stufe 1'
  CommercialPrice1InCoCodeCrcy : Decimal(12, 3);
  @sap.unit : 'Currency'
  @sap.label : 'Handelsrecht.Preis 2'
  @sap.quickinfo : 'Handelsrechtlicher Bewertungspreis - Stufe 2'
  CommercialPrice2InCoCodeCrcy : Decimal(12, 3);
  @sap.unit : 'Currency'
  @sap.label : 'Handelsrecht.Preis 3'
  @sap.quickinfo : 'Handelsrechtlicher Bewertungspreis - Stufe 3'
  CommercialPrice3InCoCodeCrcy : Decimal(12, 3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Abwertungskennziffer'
  @sap.quickinfo : 'Niederstwert: Abwertungskennziffer'
  DevaluationYearCount : String(2);
  @sap.label : 'Zukünftiger Preis'
  FutureEvaluatedAmountValue : Decimal(12, 3);
  @sap.display.format : 'Date'
  @sap.label : 'Gültig ab'
  @sap.quickinfo : 'Gültigkeitsbeginn des Preises'
  FuturePriceValidityStartDate : Date;
  @sap.label : 'TRUE'
  @sap.quickinfo : 'Datenelement zur Domäne BOOLE: TRUE (=''X'') und FALSE (='' '')'
  IsLIFOAndFIFORelevant : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'LIFO-Pool'
  @sap.quickinfo : 'Poolnummer für LIFO-Bewertung'
  LIFOValuationPoolNumber : String(4);
  @sap.unit : 'Currency'
  @sap.label : 'Steuerrecht. Preis 1'
  @sap.quickinfo : 'Steuerrechtlicher Bewertungspreis - Stufe 1'
  TaxPricel1InCoCodeCrcy : Decimal(12, 3);
  @sap.unit : 'Currency'
  @sap.label : 'Steuerrecht. Preis 2'
  @sap.quickinfo : 'Steuerrechtlicher Bewertungspreis - Stufe 2'
  TaxPrice2InCoCodeCrcy : Decimal(12, 3);
  @sap.unit : 'Currency'
  @sap.label : 'Steuerrecht. Preis 3'
  @sap.quickinfo : 'Steuerrechtlicher Bewertungspreis - Stufe 3'
  TaxPrice3InCoCodeCrcy : Decimal(12, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Währung'
  @sap.quickinfo : 'Währungsschlüssel'
  @sap.semantics : 'currency-code'
  Currency : String(5);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Bewertungskalkulationsdaten'
entity API_PRODUCT.A_ProductValuationCosting {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bewertungskreis'
  key ValuationArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bewertungsart'
  key ValuationType : String(10) not null;
  @sap.label : 'Mit Mengengerüst'
  @sap.quickinfo : 'Material wird mit Mengengerüst kalkuliert'
  IsMaterialCostedWithQtyStruc : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Herkunft Material'
  @sap.quickinfo : 'Materialbezogene Herkunft'
  IsMaterialRelatedOrigin : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Herkunftsgruppe'
  @sap.quickinfo : 'Herkunftsgruppe als Untergliederung der Kostenart'
  CostOriginGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gemeinkostengruppe'
  @sap.quickinfo : 'Gemeinkostengruppe der Kalkulation'
  CostingOverheadGroup : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Arbeitsvorbereitungsdaten'
entity API_PRODUCT.A_ProductWorkScheduling {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produkt'
  @sap.quickinfo : 'Produktnummer'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Werk'
  key Plant : String(4) not null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Basismenge'
  MaterialBaseQuantity : Decimal(13, 3);
  @sap.label : 'Unbegrenzte Überl.'
  @sap.quickinfo : 'Kennzeichen: unbegrenzte Überlieferung erlaubt'
  UnlimitedOverDelivIsAllowed : Boolean;
  @sap.label : 'ÜberlieferToleranz'
  @sap.quickinfo : 'Toleranzgrenze für Überlieferung'
  OverDelivToleranceLimit : Decimal(3, 1);
  @sap.label : 'UnterlieferToleranz'
  @sap.quickinfo : 'Toleranzgrenze für Unterlieferung'
  UnderDelivToleranceLimit : Decimal(3, 1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lagerort'
  @sap.quickinfo : 'Produktionslagerort'
  ProductionInvtryManagedLoc : String(4);
  @sap.label : 'Basismengeneinheit'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.label : 'Bearbeitungszeit'
  ProductProcessingTime : Decimal(5, 2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'FertSteuerer'
  @sap.quickinfo : 'Fertigungssteuerer'
  ProductionSupervisor : String(3);
  @sap.label : 'Fertigungs-ME'
  @sap.quickinfo : 'Fertigungsmengeneinheit'
  @sap.semantics : 'unit-of-measure'
  ProductProductionQuantityUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chargenerfassung'
  @sap.quickinfo : 'Steuerung der Chargenerfassung im Fertigungs-/Prozeßauftrag'
  ProdnOrderIsBatchRequired : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Materialgruppe'
  @sap.quickinfo : 'Gruppe von Materialien für Übergangsmatrix'
  TransitionMatrixProductsGroup : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Änd. Gesamtprofil'
  @sap.quickinfo : 'Gesamtprofil für Auftragsänderungsdienst'
  OrderChangeManagementProfile : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Retrogr. Entnahme'
  @sap.quickinfo : 'Kennzeichen: retrograde Entnahme'
  MatlCompIsMarkedForBackflush : String(1);
  @sap.label : 'Rüstzeit'
  @sap.quickinfo : 'Rüst- und Abrüstzeit'
  SetupAndTeardownTime : Decimal(5, 2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fertigungssteuerungsprofil'
  ProductionSchedulingProfile : String(6);
  @sap.label : 'Übergangszeit'
  TransitionTime : Decimal(5, 2);
};

