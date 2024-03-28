using {API_PRODUCT as ext} from './external/API_PRODUCT';
using {db} from '../db/schema';

service ConditionTypesService {

  @odata.draft.enabled
  entity ConditionTypes      as projection on db.ConditionTypes;

  @readonly
  entity Products            as projection on db.Products;

  @readonly
  @Capabilities.SearchRestrictions: {Searchable: false}
  entity ProductDescriptions as projection on ext.A_ProductDescription;
}
