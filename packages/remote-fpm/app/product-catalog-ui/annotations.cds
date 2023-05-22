using ProductCatalogService as service from '../../srv/product-catalog-service';

annotate service.Product with @( // UI annotations
UI: {
    LineItem       : [
        {
            $Type: 'UI.DataField',
            Value: Product,
        },
        {
            $Type: 'UI.DataField',
            Value: ProductType,
        },
        {
            $Type: 'UI.DataField',
            Value: _ProductDescription.ProductDescription,
        },

    ],
    SelectionFields: [
        Product,
        ProductType,
        _ProductDescription.ProductDescription
    ],
});

annotate service.Product with {
    Product     @title: '{i18n>product_label}';
    ProductType @title: '{i18n>productType_label}'
};


annotate service.ProductDescription {
    ProductDescription @title: '{i18n>productDesc_label}';
    Language           @UI.Hidden;
};
