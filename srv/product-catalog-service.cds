using {CE_PRODUCT_0002 as extProdSrv} from './external/CE_PRODUCT_0002';

service ProductCatalogService {

    @readonly
    entity Products            as projection on extProdSrv.Product {
        Product,
        ProductType,
        _ProductDescription : Association to many ProductDescriptions on _ProductDescription.Product = Product
    };

    @readonly
    entity ProductDescriptions as projection on extProdSrv.ProductDescription;

}
