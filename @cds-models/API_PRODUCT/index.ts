// This is an automatically generated file. Please do not change its contents manually!
import * as __ from './../_';
export default { name: 'API_PRODUCT' }
export function _A_ProductAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_Product extends Base {
        Product?: string | null;
        ProductType?: string | null;
        CrossPlantStatus?: string | null;
        CrossPlantStatusValidityDate?: string | null;
        CreationDate?: string | null;
        CreatedByUser?: string | null;
        LastChangeDate?: string | null;
        LastChangedByUser?: string | null;
        LastChangeDateTime?: string | null;
        IsMarkedForDeletion?: boolean | null;
        ProductOldID?: string | null;
        GrossWeight?: number | null;
        PurchaseOrderQuantityUnit?: string | null;
        SourceOfSupply?: string | null;
        WeightUnit?: string | null;
        NetWeight?: number | null;
        CountryOfOrigin?: string | null;
        CompetitorID?: string | null;
        ProductGroup?: string | null;
        BaseUnit?: string | null;
        ItemCategoryGroup?: string | null;
        ProductHierarchy?: string | null;
        Division?: string | null;
        VarblPurOrdUnitIsActive?: string | null;
        VolumeUnit?: string | null;
        MaterialVolume?: number | null;
        ANPCode?: string | null;
        Brand?: string | null;
        ProcurementRule?: string | null;
        ValidityStartDate?: string | null;
        LowLevelCode?: string | null;
        ProdNoInGenProdInPrepackProd?: string | null;
        SerialIdentifierAssgmtProfile?: string | null;
        SizeOrDimensionText?: string | null;
        IndustryStandardName?: string | null;
        ProductStandardID?: string | null;
        InternationalArticleNumberCat?: string | null;
        ProductIsConfigurable?: boolean | null;
        IsBatchManagementRequired?: boolean | null;
        ExternalProductGroup?: string | null;
        CrossPlantConfigurableProduct?: string | null;
        SerialNoExplicitnessLevel?: string | null;
        ProductManufacturerNumber?: string | null;
        ManufacturerNumber?: string | null;
        ManufacturerPartProfile?: string | null;
        QltyMgmtInProcmtIsActive?: boolean | null;
        IndustrySector?: string | null;
        ChangeNumber?: string | null;
        MaterialRevisionLevel?: string | null;
        HandlingIndicator?: string | null;
        WarehouseProductGroup?: string | null;
        WarehouseStorageCondition?: string | null;
        StandardHandlingUnitType?: string | null;
        SerialNumberProfile?: string | null;
        AdjustmentProfile?: string | null;
        PreferredUnitOfMeasure?: string | null;
        IsPilferable?: boolean | null;
        IsRelevantForHzdsSubstances?: boolean | null;
        QuarantinePeriod?: number | null;
        TimeUnitForQuarantinePeriod?: string | null;
        QualityInspectionGroup?: string | null;
        AuthorizationGroup?: string | null;
        DocumentIsCreatedByCAD?: boolean | null;
        HandlingUnitType?: string | null;
        HasVariableTareWeight?: boolean | null;
        MaximumPackagingLength?: number | null;
        MaximumPackagingWidth?: number | null;
        MaximumPackagingHeight?: number | null;
        UnitForMaxPackagingDimensions?: string | null;
        to_Description?: __.Association.to.many<A_ProductDescription_>;
        to_Plant?: __.Association.to.many<A_ProductPlant_>;
        to_ProductBasicText?: __.Association.to.many<A_ProductBasicText_>;
        to_ProductInspectionText?: __.Association.to.many<A_ProductInspectionText_>;
        to_ProductProcurement?: __.Association.to<A_ProductProcurement> | null;
        to_ProductProcurement_Product?: string | null;
        to_ProductPurchaseText?: __.Association.to.many<A_ProductPurchaseText_>;
        to_ProductQualityMgmt?: __.Association.to<A_ProductQualityMgmt> | null;
        to_ProductQualityMgmt_Product?: string | null;
        to_ProductSales?: __.Association.to<A_ProductSale> | null;
        to_ProductSales_Product?: string | null;
        to_ProductSalesTax?: __.Association.to.many<A_ProductSalesTax_>;
        to_ProductStorage?: __.Association.to<A_ProductStorage> | null;
        to_ProductStorage_Product?: string | null;
        to_ProductUnitsOfMeasure?: __.Association.to.many<A_ProductUnitsOfMeasure_>;
        to_SalesDelivery?: __.Association.to.many<A_ProductSalesDelivery_>;
        to_Valuation?: __.Association.to.many<A_ProductValuation_>;
      static actions: {
      }
  };
}
export class A_Product extends _A_ProductAspect(__.Entity) {}
Object.defineProperty(A_Product, 'name', { value: 'API_PRODUCT.A_Product' })
export class A_Product_ extends Array<A_Product> {}
Object.defineProperty(A_Product_, 'name', { value: 'API_PRODUCT.A_Product' })

export function _A_ProductBasicTextAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductBasicText extends Base {
        Product?: string;
        Language?: string;
        LongText?: string | null;
      static actions: {
      }
  };
}
export class A_ProductBasicText extends _A_ProductBasicTextAspect(__.Entity) {}
Object.defineProperty(A_ProductBasicText, 'name', { value: 'API_PRODUCT.A_ProductBasicText' })
export class A_ProductBasicText_ extends Array<A_ProductBasicText> {}
Object.defineProperty(A_ProductBasicText_, 'name', { value: 'API_PRODUCT.A_ProductBasicText' })

export function _A_ProductDescriptionAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductDescription extends Base {
        Product?: string;
        Language?: string;
        ProductDescription?: string | null;
      static actions: {
      }
  };
}
export class A_ProductDescription extends _A_ProductDescriptionAspect(__.Entity) {}
Object.defineProperty(A_ProductDescription, 'name', { value: 'API_PRODUCT.A_ProductDescription' })
export class A_ProductDescription_ extends Array<A_ProductDescription> {}
Object.defineProperty(A_ProductDescription_, 'name', { value: 'API_PRODUCT.A_ProductDescription' })

export function _A_ProductInspectionTextAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductInspectionText extends Base {
        Product?: string;
        Language?: string;
        LongText?: string | null;
      static actions: {
      }
  };
}
export class A_ProductInspectionText extends _A_ProductInspectionTextAspect(__.Entity) {}
Object.defineProperty(A_ProductInspectionText, 'name', { value: 'API_PRODUCT.A_ProductInspectionText' })
export class A_ProductInspectionText_ extends Array<A_ProductInspectionText> {}
Object.defineProperty(A_ProductInspectionText_, 'name', { value: 'API_PRODUCT.A_ProductInspectionText' })

export function _A_ProductMLAccountAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductMLAccount extends Base {
        Product?: string;
        ValuationArea?: string;
        ValuationType?: string;
        CurrencyRole?: string;
        Currency?: string | null;
        ProductPriceControl?: string | null;
        PriceUnitQty?: number | null;
        MovingAveragePrice?: number | null;
        StandardPrice?: number | null;
      static actions: {
      }
  };
}
export class A_ProductMLAccount extends _A_ProductMLAccountAspect(__.Entity) {}
Object.defineProperty(A_ProductMLAccount, 'name', { value: 'API_PRODUCT.A_ProductMLAccount' })
export class A_ProductMLAccount_ extends Array<A_ProductMLAccount> {}
Object.defineProperty(A_ProductMLAccount_, 'name', { value: 'API_PRODUCT.A_ProductMLAccount' })

export function _A_ProductMLPriceAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductMLPrice extends Base {
        Product?: string;
        ValuationArea?: string;
        ValuationType?: string;
        CurrencyRole?: string;
        Currency?: string | null;
        FuturePrice?: number | null;
        FuturePriceValidityStartDate?: string | null;
        PlannedPrice?: number | null;
      static actions: {
      }
  };
}
export class A_ProductMLPrice extends _A_ProductMLPriceAspect(__.Entity) {}
Object.defineProperty(A_ProductMLPrice, 'name', { value: 'API_PRODUCT.A_ProductMLPrices' })
export class A_ProductMLPrices extends Array<A_ProductMLPrice> {}
Object.defineProperty(A_ProductMLPrices, 'name', { value: 'API_PRODUCT.A_ProductMLPrices' })

export function _A_ProductPlantAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductPlant extends Base {
        Product?: string;
        Plant?: string;
        PurchasingGroup?: string | null;
        CountryOfOrigin?: string | null;
        RegionOfOrigin?: string | null;
        ProductionInvtryManagedLoc?: string | null;
        ProfileCode?: string | null;
        ProfileValidityStartDate?: string | null;
        AvailabilityCheckType?: string | null;
        FiscalYearVariant?: string | null;
        PeriodType?: string | null;
        ProfitCenter?: string | null;
        Commodity?: string | null;
        GoodsReceiptDuration?: number | null;
        MaintenanceStatusName?: string | null;
        IsMarkedForDeletion?: boolean | null;
        MRPType?: string | null;
        MRPResponsible?: string | null;
        ABCIndicator?: string | null;
        MinimumLotSizeQuantity?: number | null;
        MaximumLotSizeQuantity?: number | null;
        FixedLotSizeQuantity?: number | null;
        ConsumptionTaxCtrlCode?: string | null;
        IsCoProduct?: boolean | null;
        ProductIsConfigurable?: string | null;
        StockDeterminationGroup?: string | null;
        StockInTransferQuantity?: number | null;
        StockInTransitQuantity?: number | null;
        HasPostToInspectionStock?: boolean | null;
        IsBatchManagementRequired?: boolean | null;
        SerialNumberProfile?: string | null;
        IsNegativeStockAllowed?: boolean | null;
        GoodsReceiptBlockedStockQty?: number | null;
        HasConsignmentCtrl?: string | null;
        FiscalYearCurrentPeriod?: string | null;
        FiscalMonthCurrentPeriod?: string | null;
        ProcurementType?: string | null;
        IsInternalBatchManaged?: boolean | null;
        ProductCFOPCategory?: string | null;
        ProductIsExciseTaxRelevant?: boolean | null;
        BaseUnit?: string | null;
        ConfigurableProduct?: string | null;
        GoodsIssueUnit?: string | null;
        MaterialFreightGroup?: string | null;
        OriginalBatchReferenceMaterial?: string | null;
        OriglBatchManagementIsRequired?: string | null;
        ProductIsCriticalPrt?: boolean | null;
        ProductLogisticsHandlingGroup?: string | null;
        to_PlantMRPArea?: __.Association.to.many<A_ProductPlantMRPArea_>;
        to_PlantQualityMgmt?: __.Association.to<A_ProductPlantQualityMgmt> | null;
        to_PlantQualityMgmt_Product?: string | null;
        to_PlantQualityMgmt_Plant?: string | null;
        to_PlantSales?: __.Association.to<A_ProductPlantSale> | null;
        to_PlantSales_Product?: string | null;
        to_PlantSales_Plant?: string | null;
        to_PlantStorage?: __.Association.to<A_ProductPlantStorage> | null;
        to_PlantStorage_Product?: string | null;
        to_PlantStorage_Plant?: string | null;
        to_PlantText?: __.Association.to<A_ProductPlantText> | null;
        to_PlantText_Product?: string | null;
        to_PlantText_Plant?: string | null;
        to_ProdPlantInternationalTrade?: __.Association.to<A_ProductPlantIntlTrd> | null;
        to_ProdPlantInternationalTrade_Product?: string | null;
        to_ProdPlantInternationalTrade_Plant?: string | null;
        to_ProductPlantCosting?: __.Association.to<A_ProductPlantCosting> | null;
        to_ProductPlantCosting_Product?: string | null;
        to_ProductPlantCosting_Plant?: string | null;
        to_ProductPlantForecast?: __.Association.to<A_ProductPlantForecasting> | null;
        to_ProductPlantForecast_Product?: string | null;
        to_ProductPlantForecast_Plant?: string | null;
        to_ProductPlantProcurement?: __.Association.to<A_ProductPlantProcurement> | null;
        to_ProductPlantProcurement_Product?: string | null;
        to_ProductPlantProcurement_Plant?: string | null;
        to_ProductSupplyPlanning?: __.Association.to<A_ProductSupplyPlanning> | null;
        to_ProductSupplyPlanning_Product?: string | null;
        to_ProductSupplyPlanning_Plant?: string | null;
        to_ProductWorkScheduling?: __.Association.to<A_ProductWorkScheduling> | null;
        to_ProductWorkScheduling_Product?: string | null;
        to_ProductWorkScheduling_Plant?: string | null;
        to_StorageLocation?: __.Association.to.many<A_ProductStorageLocation_>;
      static actions: {
      }
  };
}
export class A_ProductPlant extends _A_ProductPlantAspect(__.Entity) {}
Object.defineProperty(A_ProductPlant, 'name', { value: 'API_PRODUCT.A_ProductPlant' })
export class A_ProductPlant_ extends Array<A_ProductPlant> {}
Object.defineProperty(A_ProductPlant_, 'name', { value: 'API_PRODUCT.A_ProductPlant' })

export function _A_ProductPlantCostingAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductPlantCosting extends Base {
        Product?: string | null;
        Plant?: string | null;
        IsCoProduct?: boolean | null;
        CostingLotSize?: number | null;
        VarianceKey?: string | null;
        BaseUnit?: string | null;
        TaskListGroupCounter?: string | null;
        TaskListGroup?: string | null;
        TaskListType?: string | null;
        CostingProductionVersion?: string | null;
        IsFixedPriceCoProduct?: boolean | null;
        CostingSpecialProcurementType?: string | null;
        SourceBOMAlternative?: string | null;
        ProductBOMUsage?: string | null;
        ProductIsCostingRelevant?: boolean | null;
      static actions: {
      }
  };
}
export class A_ProductPlantCosting extends _A_ProductPlantCostingAspect(__.Entity) {}
Object.defineProperty(A_ProductPlantCosting, 'name', { value: 'API_PRODUCT.A_ProductPlantCosting' })
export class A_ProductPlantCosting_ extends Array<A_ProductPlantCosting> {}
Object.defineProperty(A_ProductPlantCosting_, 'name', { value: 'API_PRODUCT.A_ProductPlantCosting' })

export function _A_ProductPlantForecastingAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductPlantForecasting extends Base {
        Product?: string | null;
        Plant?: string | null;
        ConsumptionRefUsageEndDate?: string | null;
        ConsumptionQtyMultiplier?: number | null;
        ConsumptionReferenceProduct?: string | null;
        ConsumptionReferencePlant?: string | null;
      static actions: {
      }
  };
}
export class A_ProductPlantForecasting extends _A_ProductPlantForecastingAspect(__.Entity) {}
Object.defineProperty(A_ProductPlantForecasting, 'name', { value: 'API_PRODUCT.A_ProductPlantForecasting' })
export class A_ProductPlantForecasting_ extends Array<A_ProductPlantForecasting> {}
Object.defineProperty(A_ProductPlantForecasting_, 'name', { value: 'API_PRODUCT.A_ProductPlantForecasting' })

export function _A_ProductPlantIntlTrdAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductPlantIntlTrd extends Base {
        Product?: string | null;
        Plant?: string | null;
        CountryOfOrigin?: string | null;
        RegionOfOrigin?: string | null;
        ConsumptionTaxCtrlCode?: string | null;
        ProductCASNumber?: string | null;
        ProdIntlTradeClassification?: string | null;
        ExportAndImportProductGroup?: string | null;
      static actions: {
      }
  };
}
export class A_ProductPlantIntlTrd extends _A_ProductPlantIntlTrdAspect(__.Entity) {}
Object.defineProperty(A_ProductPlantIntlTrd, 'name', { value: 'API_PRODUCT.A_ProductPlantIntlTrd' })
export class A_ProductPlantIntlTrd_ extends Array<A_ProductPlantIntlTrd> {}
Object.defineProperty(A_ProductPlantIntlTrd_, 'name', { value: 'API_PRODUCT.A_ProductPlantIntlTrd' })

export function _A_ProductPlantMRPAreaAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductPlantMRPArea extends Base {
        Product?: string;
        Plant?: string;
        MRPArea?: string;
        MRPType?: string | null;
        MRPResponsible?: string | null;
        MRPGroup?: string | null;
        ReorderThresholdQuantity?: number | null;
        PlanningTimeFence?: string | null;
        LotSizingProcedure?: string | null;
        LotSizeRoundingQuantity?: number | null;
        MinimumLotSizeQuantity?: number | null;
        MaximumLotSizeQuantity?: number | null;
        MaximumStockQuantity?: number | null;
        AssemblyScrapPercent?: number | null;
        ProcurementSubType?: string | null;
        DfltStorageLocationExtProcmt?: string | null;
        MRPPlanningCalendar?: string | null;
        SafetyStockQuantity?: number | null;
        RangeOfCvrgPrflCode?: string | null;
        SafetyDuration?: string | null;
        FixedLotSizeQuantity?: number | null;
        LotSizeIndependentCosts?: number | null;
        IsStorageCosts?: string | null;
        RqmtQtyRcptTaktTmeInWrkgDays?: number | null;
        SrvcLvl?: number | null;
        IsMarkedForDeletion?: boolean | null;
        PerdPrflForSftyTme?: string | null;
        IsMRPDependentRqmt?: string | null;
        IsSafetyTime?: string | null;
        PlannedDeliveryDurationInDays?: number | null;
        IsPlannedDeliveryTime?: boolean | null;
        Currency?: string | null;
        BaseUnit?: string | null;
        PlanAndOrderDayDetermination?: string | null;
        RoundingProfile?: string | null;
        StorageLocation?: string | null;
      static actions: {
      }
  };
}
export class A_ProductPlantMRPArea extends _A_ProductPlantMRPAreaAspect(__.Entity) {}
Object.defineProperty(A_ProductPlantMRPArea, 'name', { value: 'API_PRODUCT.A_ProductPlantMRPArea' })
export class A_ProductPlantMRPArea_ extends Array<A_ProductPlantMRPArea> {}
Object.defineProperty(A_ProductPlantMRPArea_, 'name', { value: 'API_PRODUCT.A_ProductPlantMRPArea' })

export function _A_ProductPlantProcurementAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductPlantProcurement extends Base {
        Product?: string | null;
        Plant?: string | null;
        IsAutoPurOrdCreationAllowed?: boolean | null;
        IsSourceListRequired?: boolean | null;
        SourceOfSupplyCategory?: string | null;
        ItmIsRlvtToJITDelivSchedules?: string | null;
      static actions: {
      }
  };
}
export class A_ProductPlantProcurement extends _A_ProductPlantProcurementAspect(__.Entity) {}
Object.defineProperty(A_ProductPlantProcurement, 'name', { value: 'API_PRODUCT.A_ProductPlantProcurement' })
export class A_ProductPlantProcurement_ extends Array<A_ProductPlantProcurement> {}
Object.defineProperty(A_ProductPlantProcurement_, 'name', { value: 'API_PRODUCT.A_ProductPlantProcurement' })

export function _A_ProductPlantQualityMgmtAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductPlantQualityMgmt extends Base {
        Product?: string | null;
        Plant?: string | null;
        MaximumStoragePeriod?: number | null;
        QualityMgmtCtrlKey?: string | null;
        MatlQualityAuthorizationGroup?: string | null;
        HasPostToInspectionStock?: boolean | null;
        InspLotDocumentationIsRequired?: boolean | null;
        SuplrQualityManagementSystem?: string | null;
        RecrrgInspIntervalTimeInDays?: number | null;
        ProductQualityCertificateType?: string | null;
      static actions: {
      }
  };
}
export class A_ProductPlantQualityMgmt extends _A_ProductPlantQualityMgmtAspect(__.Entity) {}
Object.defineProperty(A_ProductPlantQualityMgmt, 'name', { value: 'API_PRODUCT.A_ProductPlantQualityMgmt' })
export class A_ProductPlantQualityMgmt_ extends Array<A_ProductPlantQualityMgmt> {}
Object.defineProperty(A_ProductPlantQualityMgmt_, 'name', { value: 'API_PRODUCT.A_ProductPlantQualityMgmt' })

export function _A_ProductPlantSaleAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductPlantSale extends Base {
        Product?: string | null;
        Plant?: string | null;
        LoadingGroup?: string | null;
        ReplacementPartType?: string | null;
        CapPlanningQuantityInBaseUoM?: number | null;
        ProductShippingProcessingTime?: number | null;
        WrkCentersShipgSetupTimeInDays?: number | null;
        AvailabilityCheckType?: string | null;
        BaseUnit?: string | null;
      static actions: {
      }
  };
}
export class A_ProductPlantSale extends _A_ProductPlantSaleAspect(__.Entity) {}
Object.defineProperty(A_ProductPlantSale, 'name', { value: 'API_PRODUCT.A_ProductPlantSales' })
export class A_ProductPlantSales extends Array<A_ProductPlantSale> {}
Object.defineProperty(A_ProductPlantSales, 'name', { value: 'API_PRODUCT.A_ProductPlantSales' })

export function _A_ProductPlantStorageAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductPlantStorage extends Base {
        Product?: string | null;
        Plant?: string | null;
        InventoryForCycleCountInd?: string | null;
        ProvisioningServiceLevel?: string | null;
        CycleCountingIndicatorIsFixed?: boolean | null;
        ProdMaximumStoragePeriodUnit?: string | null;
        WrhsMgmtPtwyAndStkRemovalStrgy?: string | null;
      static actions: {
      }
  };
}
export class A_ProductPlantStorage extends _A_ProductPlantStorageAspect(__.Entity) {}
Object.defineProperty(A_ProductPlantStorage, 'name', { value: 'API_PRODUCT.A_ProductPlantStorage' })
export class A_ProductPlantStorage_ extends Array<A_ProductPlantStorage> {}
Object.defineProperty(A_ProductPlantStorage_, 'name', { value: 'API_PRODUCT.A_ProductPlantStorage' })

export function _A_ProductPlantTextAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductPlantText extends Base {
        Product?: string | null;
        Plant?: string | null;
        LongText?: string | null;
      static actions: {
      }
  };
}
export class A_ProductPlantText extends _A_ProductPlantTextAspect(__.Entity) {}
Object.defineProperty(A_ProductPlantText, 'name', { value: 'API_PRODUCT.A_ProductPlantText' })
export class A_ProductPlantText_ extends Array<A_ProductPlantText> {}
Object.defineProperty(A_ProductPlantText_, 'name', { value: 'API_PRODUCT.A_ProductPlantText' })

export function _A_ProductProcurementAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductProcurement extends Base {
        Product?: string | null;
        PurchaseOrderQuantityUnit?: string | null;
        VarblPurOrdUnitStatus?: string | null;
        PurchasingAcknProfile?: string | null;
      static actions: {
      }
  };
}
export class A_ProductProcurement extends _A_ProductProcurementAspect(__.Entity) {}
Object.defineProperty(A_ProductProcurement, 'name', { value: 'API_PRODUCT.A_ProductProcurement' })
export class A_ProductProcurement_ extends Array<A_ProductProcurement> {}
Object.defineProperty(A_ProductProcurement_, 'name', { value: 'API_PRODUCT.A_ProductProcurement' })

export function _A_ProductPurchaseTextAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductPurchaseText extends Base {
        Product?: string;
        Language?: string;
        LongText?: string | null;
      static actions: {
      }
  };
}
export class A_ProductPurchaseText extends _A_ProductPurchaseTextAspect(__.Entity) {}
Object.defineProperty(A_ProductPurchaseText, 'name', { value: 'API_PRODUCT.A_ProductPurchaseText' })
export class A_ProductPurchaseText_ extends Array<A_ProductPurchaseText> {}
Object.defineProperty(A_ProductPurchaseText_, 'name', { value: 'API_PRODUCT.A_ProductPurchaseText' })

export function _A_ProductQualityMgmtAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductQualityMgmt extends Base {
        Product?: string | null;
        QltyMgmtInProcmtIsActive?: boolean | null;
      static actions: {
      }
  };
}
export class A_ProductQualityMgmt extends _A_ProductQualityMgmtAspect(__.Entity) {}
Object.defineProperty(A_ProductQualityMgmt, 'name', { value: 'API_PRODUCT.A_ProductQualityMgmt' })
export class A_ProductQualityMgmt_ extends Array<A_ProductQualityMgmt> {}
Object.defineProperty(A_ProductQualityMgmt_, 'name', { value: 'API_PRODUCT.A_ProductQualityMgmt' })

export function _A_ProductSaleAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductSale extends Base {
        Product?: string | null;
        SalesStatus?: string | null;
        SalesStatusValidityDate?: string | null;
        TaxClassification?: string | null;
        TransportationGroup?: string | null;
      static actions: {
      }
  };
}
export class A_ProductSale extends _A_ProductSaleAspect(__.Entity) {}
Object.defineProperty(A_ProductSale, 'name', { value: 'API_PRODUCT.A_ProductSales' })
export class A_ProductSales extends Array<A_ProductSale> {}
Object.defineProperty(A_ProductSales, 'name', { value: 'API_PRODUCT.A_ProductSales' })

export function _A_ProductSalesDeliveryAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductSalesDelivery extends Base {
        Product?: string;
        ProductSalesOrg?: string;
        ProductDistributionChnl?: string;
        MinimumOrderQuantity?: number | null;
        SupplyingPlant?: string | null;
        PriceSpecificationProductGroup?: string | null;
        AccountDetnProductGroup?: string | null;
        DeliveryNoteProcMinDelivQty?: number | null;
        ItemCategoryGroup?: string | null;
        DeliveryQuantityUnit?: string | null;
        DeliveryQuantity?: number | null;
        ProductSalesStatus?: string | null;
        ProductSalesStatusValidityDate?: string | null;
        SalesMeasureUnit?: string | null;
        IsMarkedForDeletion?: boolean | null;
        ProductHierarchy?: string | null;
        FirstSalesSpecProductGroup?: string | null;
        SecondSalesSpecProductGroup?: string | null;
        ThirdSalesSpecProductGroup?: string | null;
        FourthSalesSpecProductGroup?: string | null;
        FifthSalesSpecProductGroup?: string | null;
        MinimumMakeToOrderOrderQty?: number | null;
        BaseUnit?: string | null;
        LogisticsStatisticsGroup?: string | null;
        VolumeRebateGroup?: string | null;
        ProductCommissionGroup?: string | null;
        CashDiscountIsDeductible?: boolean | null;
        PricingReferenceProduct?: string | null;
        RoundingProfile?: string | null;
        ProductUnitGroup?: string | null;
        VariableSalesUnitIsNotAllowed?: boolean | null;
        ProductHasAttributeID01?: boolean | null;
        ProductHasAttributeID02?: boolean | null;
        ProductHasAttributeID03?: boolean | null;
        ProductHasAttributeID04?: boolean | null;
        ProductHasAttributeID05?: boolean | null;
        ProductHasAttributeID06?: boolean | null;
        ProductHasAttributeID07?: boolean | null;
        ProductHasAttributeID08?: boolean | null;
        ProductHasAttributeID09?: boolean | null;
        ProductHasAttributeID10?: boolean | null;
        to_SalesTax?: __.Association.to.many<A_ProductSalesTax_>;
        to_SalesText?: __.Association.to.many<A_ProductSalesText_>;
      static actions: {
      }
  };
}
export class A_ProductSalesDelivery extends _A_ProductSalesDeliveryAspect(__.Entity) {}
Object.defineProperty(A_ProductSalesDelivery, 'name', { value: 'API_PRODUCT.A_ProductSalesDelivery' })
export class A_ProductSalesDelivery_ extends Array<A_ProductSalesDelivery> {}
Object.defineProperty(A_ProductSalesDelivery_, 'name', { value: 'API_PRODUCT.A_ProductSalesDelivery' })

export function _A_ProductSalesTaxAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductSalesTax extends Base {
        Product?: string;
        Country?: string;
        TaxCategory?: string;
        TaxClassification?: string;
      static actions: {
      }
  };
}
export class A_ProductSalesTax extends _A_ProductSalesTaxAspect(__.Entity) {}
Object.defineProperty(A_ProductSalesTax, 'name', { value: 'API_PRODUCT.A_ProductSalesTax' })
export class A_ProductSalesTax_ extends Array<A_ProductSalesTax> {}
Object.defineProperty(A_ProductSalesTax_, 'name', { value: 'API_PRODUCT.A_ProductSalesTax' })

export function _A_ProductSalesTextAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductSalesText extends Base {
        Product?: string;
        ProductSalesOrg?: string;
        ProductDistributionChnl?: string;
        Language?: string;
        LongText?: string | null;
      static actions: {
      }
  };
}
export class A_ProductSalesText extends _A_ProductSalesTextAspect(__.Entity) {}
Object.defineProperty(A_ProductSalesText, 'name', { value: 'API_PRODUCT.A_ProductSalesText' })
export class A_ProductSalesText_ extends Array<A_ProductSalesText> {}
Object.defineProperty(A_ProductSalesText_, 'name', { value: 'API_PRODUCT.A_ProductSalesText' })

export function _A_ProductStorageAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductStorage extends Base {
        Product?: string | null;
        StorageConditions?: string | null;
        TemperatureConditionInd?: string | null;
        HazardousMaterialNumber?: string | null;
        NmbrOfGROrGISlipsToPrintQty?: number | null;
        LabelType?: string | null;
        LabelForm?: string | null;
        MinRemainingShelfLife?: number | null;
        ExpirationDate?: string | null;
        ShelfLifeExpirationDatePeriod?: string | null;
        TotalShelfLife?: number | null;
        BaseUnit?: string | null;
      static actions: {
      }
  };
}
export class A_ProductStorage extends _A_ProductStorageAspect(__.Entity) {}
Object.defineProperty(A_ProductStorage, 'name', { value: 'API_PRODUCT.A_ProductStorage' })
export class A_ProductStorage_ extends Array<A_ProductStorage> {}
Object.defineProperty(A_ProductStorage_, 'name', { value: 'API_PRODUCT.A_ProductStorage' })

export function _A_ProductStorageLocationAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductStorageLocation extends Base {
        Product?: string;
        Plant?: string;
        StorageLocation?: string;
        WarehouseStorageBin?: string | null;
        MaintenanceStatus?: string | null;
        PhysicalInventoryBlockInd?: string | null;
        CreationDate?: string | null;
        IsMarkedForDeletion?: boolean | null;
        DateOfLastPostedCntUnRstrcdStk?: string | null;
        InventoryCorrectionFactor?: number | null;
        InvtryRestrictedUseStockInd?: string | null;
        InvtryCurrentYearStockInd?: string | null;
        InvtryQualInspCurrentYrStkInd?: string | null;
        InventoryBlockStockInd?: string | null;
        InvtryRestStockPrevPeriodInd?: string | null;
        InventoryStockPrevPeriod?: string | null;
        InvtryStockQltyInspPrevPeriod?: string | null;
        HasInvtryBlockStockPrevPeriod?: string | null;
        FiscalYearCurrentPeriod?: string | null;
        FiscalMonthCurrentPeriod?: string | null;
        FiscalYearCurrentInvtryPeriod?: string | null;
        LeanWrhsManagementPickingArea?: string | null;
      static actions: {
      }
  };
}
export class A_ProductStorageLocation extends _A_ProductStorageLocationAspect(__.Entity) {}
Object.defineProperty(A_ProductStorageLocation, 'name', { value: 'API_PRODUCT.A_ProductStorageLocation' })
export class A_ProductStorageLocation_ extends Array<A_ProductStorageLocation> {}
Object.defineProperty(A_ProductStorageLocation_, 'name', { value: 'API_PRODUCT.A_ProductStorageLocation' })

export function _A_ProductSupplyPlanningAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductSupplyPlanning extends Base {
        Product?: string | null;
        Plant?: string | null;
        FixedLotSizeQuantity?: number | null;
        MaximumLotSizeQuantity?: number | null;
        MinimumLotSizeQuantity?: number | null;
        LotSizeRoundingQuantity?: number | null;
        LotSizingProcedure?: string | null;
        MRPType?: string | null;
        MRPResponsible?: string | null;
        SafetyStockQuantity?: number | null;
        MinimumSafetyStockQuantity?: number | null;
        PlanningTimeFence?: string | null;
        ABCIndicator?: string | null;
        MaximumStockQuantity?: number | null;
        ReorderThresholdQuantity?: number | null;
        PlannedDeliveryDurationInDays?: number | null;
        SafetyDuration?: string | null;
        PlanningStrategyGroup?: string | null;
        TotalReplenishmentLeadTime?: number | null;
        ProcurementType?: string | null;
        ProcurementSubType?: string | null;
        AssemblyScrapPercent?: number | null;
        AvailabilityCheckType?: string | null;
        GoodsReceiptDuration?: number | null;
        MRPGroup?: string | null;
        DfltStorageLocationExtProcmt?: string | null;
        ProdRqmtsConsumptionMode?: string | null;
        BackwardCnsmpnPeriodInWorkDays?: string | null;
        FwdConsumptionPeriodInWorkDays?: string | null;
        BaseUnit?: string | null;
        PlanAndOrderDayDetermination?: string | null;
        RoundingProfile?: string | null;
        LotSizeIndependentCosts?: number | null;
        MRPPlanningCalendar?: string | null;
        RangeOfCvrgPrflCode?: string | null;
        IsSafetyTime?: string | null;
        PerdPrflForSftyTme?: string | null;
        IsMRPDependentRqmt?: string | null;
        InHouseProductionTime?: number | null;
        ProductIsForCrossProject?: string | null;
        StorageCostsPercentageCode?: string | null;
        SrvcLvl?: number | null;
        MRPAvailabilityType?: string | null;
        FollowUpProduct?: string | null;
        RepetitiveManufacturingIsAllwd?: boolean | null;
        DependentRequirementsType?: string | null;
        IsBulkMaterialComponent?: boolean | null;
        RepetitiveManufacturingProfile?: string | null;
        RqmtQtyRcptTaktTmeInWrkgDays?: number | null;
        ForecastRequirementsAreSplit?: string | null;
        EffectiveOutDate?: string | null;
        MRPProfile?: string | null;
        ComponentScrapInPercent?: number | null;
        ProductIsToBeDiscontinued?: string | null;
        ProdRqmtsAreConsolidated?: string | null;
        MatlCompIsMarkedForBackflush?: string | null;
        ProposedProductSupplyArea?: string | null;
        Currency?: string | null;
        PlannedOrderActionControl?: string | null;
      static actions: {
      }
  };
}
export class A_ProductSupplyPlanning extends _A_ProductSupplyPlanningAspect(__.Entity) {}
Object.defineProperty(A_ProductSupplyPlanning, 'name', { value: 'API_PRODUCT.A_ProductSupplyPlanning' })
export class A_ProductSupplyPlanning_ extends Array<A_ProductSupplyPlanning> {}
Object.defineProperty(A_ProductSupplyPlanning_, 'name', { value: 'API_PRODUCT.A_ProductSupplyPlanning' })

export function _A_ProductUnitsOfMeasureAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductUnitsOfMeasure extends Base {
        Product?: string;
        AlternativeUnit?: string;
        QuantityNumerator?: number | null;
        QuantityDenominator?: number | null;
        MaterialVolume?: number | null;
        VolumeUnit?: string | null;
        GrossWeight?: number | null;
        WeightUnit?: string | null;
        GlobalTradeItemNumber?: string | null;
        GlobalTradeItemNumberCategory?: string | null;
        UnitSpecificProductLength?: number | null;
        UnitSpecificProductWidth?: number | null;
        UnitSpecificProductHeight?: number | null;
        ProductMeasurementUnit?: string | null;
        LowerLevelPackagingUnit?: string | null;
        RemainingVolumeAfterNesting?: number | null;
        MaximumStackingFactor?: number | null;
        CapacityUsage?: number | null;
        BaseUnit?: string | null;
        to_InternationalArticleNumber?: __.Association.to.many<A_ProductUnitsOfMeasureEAN_>;
      static actions: {
      }
  };
}
export class A_ProductUnitsOfMeasure extends _A_ProductUnitsOfMeasureAspect(__.Entity) {}
Object.defineProperty(A_ProductUnitsOfMeasure, 'name', { value: 'API_PRODUCT.A_ProductUnitsOfMeasure' })
export class A_ProductUnitsOfMeasure_ extends Array<A_ProductUnitsOfMeasure> {}
Object.defineProperty(A_ProductUnitsOfMeasure_, 'name', { value: 'API_PRODUCT.A_ProductUnitsOfMeasure' })

export function _A_ProductUnitsOfMeasureEANAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductUnitsOfMeasureEAN extends Base {
        Product?: string;
        AlternativeUnit?: string;
        ConsecutiveNumber?: string;
        ProductStandardID?: string | null;
        InternationalArticleNumberCat?: string | null;
        IsMainGlobalTradeItemNumber?: boolean | null;
      static actions: {
      }
  };
}
export class A_ProductUnitsOfMeasureEAN extends _A_ProductUnitsOfMeasureEANAspect(__.Entity) {}
Object.defineProperty(A_ProductUnitsOfMeasureEAN, 'name', { value: 'API_PRODUCT.A_ProductUnitsOfMeasureEAN' })
export class A_ProductUnitsOfMeasureEAN_ extends Array<A_ProductUnitsOfMeasureEAN> {}
Object.defineProperty(A_ProductUnitsOfMeasureEAN_, 'name', { value: 'API_PRODUCT.A_ProductUnitsOfMeasureEAN' })

export function _A_ProductValuationAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductValuation extends Base {
        Product?: string;
        ValuationArea?: string;
        ValuationType?: string;
        ValuationClass?: string | null;
        PriceDeterminationControl?: string | null;
        StandardPrice?: number | null;
        PriceUnitQty?: number | null;
        InventoryValuationProcedure?: string | null;
        IsMarkedForDeletion?: boolean | null;
        MovingAveragePrice?: number | null;
        ValuationCategory?: string | null;
        ProductUsageType?: string | null;
        ProductOriginType?: string | null;
        IsProducedInhouse?: boolean | null;
        ProdCostEstNumber?: string | null;
        ProjectStockValuationClass?: string | null;
        ValuationClassSalesOrderStock?: string | null;
        PlannedPrice1InCoCodeCrcy?: number | null;
        PlannedPrice2InCoCodeCrcy?: number | null;
        PlannedPrice3InCoCodeCrcy?: number | null;
        FuturePlndPrice1ValdtyDate?: string | null;
        FuturePlndPrice2ValdtyDate?: string | null;
        FuturePlndPrice3ValdtyDate?: string | null;
        TaxBasedPricesPriceUnitQty?: number | null;
        PriceLastChangeDate?: string | null;
        PlannedPrice?: number | null;
        PrevInvtryPriceInCoCodeCrcy?: number | null;
        Currency?: string | null;
        BaseUnit?: string | null;
        to_MLAccount?: __.Association.to.many<A_ProductMLAccount_>;
        to_MLPrices?: __.Association.to.many<A_ProductMLPrices>;
        to_ValuationAccount?: __.Association.to<A_ProductValuationAccount> | null;
        to_ValuationAccount_Product?: string | null;
        to_ValuationAccount_ValuationArea?: string | null;
        to_ValuationAccount_ValuationType?: string | null;
        to_ValuationCosting?: __.Association.to<A_ProductValuationCosting> | null;
        to_ValuationCosting_Product?: string | null;
        to_ValuationCosting_ValuationArea?: string | null;
        to_ValuationCosting_ValuationType?: string | null;
      static actions: {
      }
  };
}
export class A_ProductValuation extends _A_ProductValuationAspect(__.Entity) {}
Object.defineProperty(A_ProductValuation, 'name', { value: 'API_PRODUCT.A_ProductValuation' })
export class A_ProductValuation_ extends Array<A_ProductValuation> {}
Object.defineProperty(A_ProductValuation_, 'name', { value: 'API_PRODUCT.A_ProductValuation' })

export function _A_ProductValuationAccountAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductValuationAccount extends Base {
        Product?: string | null;
        ValuationArea?: string | null;
        ValuationType?: string | null;
        CommercialPrice1InCoCodeCrcy?: number | null;
        CommercialPrice2InCoCodeCrcy?: number | null;
        CommercialPrice3InCoCodeCrcy?: number | null;
        DevaluationYearCount?: string | null;
        FutureEvaluatedAmountValue?: number | null;
        FuturePriceValidityStartDate?: string | null;
        IsLIFOAndFIFORelevant?: boolean | null;
        LIFOValuationPoolNumber?: string | null;
        TaxPricel1InCoCodeCrcy?: number | null;
        TaxPrice2InCoCodeCrcy?: number | null;
        TaxPrice3InCoCodeCrcy?: number | null;
        Currency?: string | null;
      static actions: {
      }
  };
}
export class A_ProductValuationAccount extends _A_ProductValuationAccountAspect(__.Entity) {}
Object.defineProperty(A_ProductValuationAccount, 'name', { value: 'API_PRODUCT.A_ProductValuationAccount' })
export class A_ProductValuationAccount_ extends Array<A_ProductValuationAccount> {}
Object.defineProperty(A_ProductValuationAccount_, 'name', { value: 'API_PRODUCT.A_ProductValuationAccount' })

export function _A_ProductValuationCostingAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductValuationCosting extends Base {
        Product?: string | null;
        ValuationArea?: string | null;
        ValuationType?: string | null;
        IsMaterialCostedWithQtyStruc?: boolean | null;
        IsMaterialRelatedOrigin?: string | null;
        CostOriginGroup?: string | null;
        CostingOverheadGroup?: string | null;
      static actions: {
      }
  };
}
export class A_ProductValuationCosting extends _A_ProductValuationCostingAspect(__.Entity) {}
Object.defineProperty(A_ProductValuationCosting, 'name', { value: 'API_PRODUCT.A_ProductValuationCosting' })
export class A_ProductValuationCosting_ extends Array<A_ProductValuationCosting> {}
Object.defineProperty(A_ProductValuationCosting_, 'name', { value: 'API_PRODUCT.A_ProductValuationCosting' })

export function _A_ProductWorkSchedulingAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class A_ProductWorkScheduling extends Base {
        Product?: string | null;
        Plant?: string | null;
        MaterialBaseQuantity?: number | null;
        UnlimitedOverDelivIsAllowed?: boolean | null;
        OverDelivToleranceLimit?: number | null;
        UnderDelivToleranceLimit?: number | null;
        ProductionInvtryManagedLoc?: string | null;
        BaseUnit?: string | null;
        ProductProcessingTime?: number | null;
        ProductionSupervisor?: string | null;
        ProductProductionQuantityUnit?: string | null;
        ProdnOrderIsBatchRequired?: string | null;
        TransitionMatrixProductsGroup?: string | null;
        OrderChangeManagementProfile?: string | null;
        MatlCompIsMarkedForBackflush?: string | null;
        SetupAndTeardownTime?: number | null;
        ProductionSchedulingProfile?: string | null;
        TransitionTime?: number | null;
      static actions: {
      }
  };
}
export class A_ProductWorkScheduling extends _A_ProductWorkSchedulingAspect(__.Entity) {}
Object.defineProperty(A_ProductWorkScheduling, 'name', { value: 'API_PRODUCT.A_ProductWorkScheduling' })
export class A_ProductWorkScheduling_ extends Array<A_ProductWorkScheduling> {}
Object.defineProperty(A_ProductWorkScheduling_, 'name', { value: 'API_PRODUCT.A_ProductWorkScheduling' })
