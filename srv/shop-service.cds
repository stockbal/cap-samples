using db from '../db/data-model';

service ShopService {
    @odata.draft.enabled
    entity Products as projection on db.Products;

    @readonly
    entity Vendors  as projection on db.Vendors;
}
