using ProductCatalogService as service from '../../srv/product-catalog-service';

annotate service.Products with @( // UI annotations
UI: {
    LineItem       : [
        {
            $Type: 'UI.DataField',
            Value: Product,
            Label: '{i18n>product_label}'
        },
        {
            $Type: 'UI.DataField',
            Value: ProductType,
            Label: '{i18n>productType_label}'
        },
        {
            $Type: 'UI.DataField',
            Value: _ProductDescription.ProductDescription,
            Label: '{i18n>productDesc_label}'
        },

    ],
    SelectionFields: [
        Product,
        _ProductDescription.Language,
        _ProductDescription.ProductDescription
    ],
});
