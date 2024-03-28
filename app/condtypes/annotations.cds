using ConditionTypesService as service from '../../srv/condition-types-service';

annotate service.ConditionTypes with @(
    UI.HeaderInfo                 : {
        Title         : {
            $Type: 'UI.DataField',
            Value: product_Product,
        },
        TypeName      : 'Condition Type',
        TypeNamePlural: 'Condition Types'
    },
    UI.LineItem                   : [{
        $Type: 'UI.DataField',
        Value: product_Product,
    },
        {
            $Type : 'UI.DataField',
            Value : product.to_Description.ProductDescription,
            Label : 'ProductDescription',
        }, ],
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [{
            $Type: 'UI.DataField',
            Value: product_Product,
        }, ],
    },
    UI.SelectionFields            : [product_Product],
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }, ]
) {
    product @(Common: {ValueList: {
        Label         : 'Product VH',
        CollectionPath: 'ProductDescriptions',
        Parameters    : [{
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: product_Product,
            ValueListProperty: 'Product',
        },

        ]
    }})
};

annotate service.ConditionTypes with {
    product @Common.ValueListWithFixedValues: false
};

annotate service.ProductDescriptions with {
    Product  @Common.Text: {
        $value                : ProductDescription,
        ![@UI.TextArrangement]: #TextLast,
    };
    Language @UI.HiddenFilter
};
