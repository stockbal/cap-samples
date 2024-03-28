namespace db;

using {
  managed,
  cuid
} from '@sap/cds/common';

using {API_PRODUCT} from '../srv/external/API_PRODUCT';

entity ConditionTypes : cuid, managed {
  /* "@assert.target" is not possible for remote entity association and will
   *   result in errors
   */
  product : Association to Products @title: 'Product';
}

entity Products            as
  select from API_PRODUCT.A_Product {
    key Product,
        to_Description
  }

entity ProductDescriptions as
  select from API_PRODUCT.A_ProductDescription {
    key Product,
    key Language,
        ProductDescription
  }
