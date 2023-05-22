using {CE_PRODUCT_0002} from './external/CE_PRODUCT_0002';

service ProductCatalogService {

    @readonly
    entity Product {
        key Product             : String;
            ProductType         : String;
            _ProductDescription : Association to many ProductDescription
                                      on _ProductDescription.Product = Product
    }

    @readonly
    entity ProductDescription {
        key Product            : String;
        key Language           : String;
            ProductDescription : String;
            _Product           : Association to Product
                                     on _Product.Product = Product;
    }
}
