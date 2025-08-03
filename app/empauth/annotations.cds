using CatalogService as service from '../../srv/service';
annotate service.WorkerSet with @(
    
    UI.SelectionFields : [firstName, lastName,Gender,Currency_code],
    
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'First Name',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Last Name',
                Value : lastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Gender',
                Value : Gender,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Contact Number',
                Value : phoneNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Currency',
                Value : Currency_code,
                
            },
            {
                $Type : 'UI.DataField',
                Label : 'Salary Amount',
                Value : salaryAmount,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'CatalogService.updateGender',
            Label : 'Update Gender',
            Inline : false,
            ![@UI.Hidden]: { $edmJson: { $Path: '/CatalogService.EntityContainer/FeatureControl/operationHidden' }},
        },
        {
            $Type : 'UI.DataField',
            Label : 'First Name',
            Value : firstName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Last Name',
            Value : lastName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Gender',
            Value : Gender,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Contact Number',
            Value : phoneNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Email',
            Value : email,
        },
    ],
);



