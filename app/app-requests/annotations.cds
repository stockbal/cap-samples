using AppRequestsService as service from '../../srv/app-requests-service';

annotate service.AppRequests with @(
    UI.LineItem  : [
        {Value: name},
        {Value: type},
        {Value: status}
    ],
    UI.HeaderInfo: {
        Title         : {
            $Type: 'UI.DataField',
            Value: name,
        },
        TypeName      : 'App Request',
        TypeNamePlural: 'App Requests'
    },
) {
    description @UI.MultiLineText
};

annotate service.AppRequests with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {Value: name},
            {Value: type},
            {Value: status}
        ]
    },
    UI.FieldGroup #Description    : {Data: [{Value: description}]},
    UI.Facets                     : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Description',
            Target: '@UI.FieldGroup#Description',
        },
    ]
);

annotate service.Conversations with @( //
UI.LineItem: [
    {Value: subject},
    {Value: content},
    {Value: createdBy},
    {Value: createdAt}
]) {
    content @UI.MultiLineText
};
