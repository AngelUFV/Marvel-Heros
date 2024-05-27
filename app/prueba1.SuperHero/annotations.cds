using prueba1Srv as service from '../../srv/service';
using from '../annotations';



annotate service.SuperHero with @(
    UI.SelectionFields : [
        name,]
);
annotate service.SuperHero with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Value : secretIdentity.name,
            Label : '{i18n>SecretIdentity}',
        },
        {
            $Type : 'UI.DataField',
            Value : age,
        },
        {
            $Type : 'UI.DataField',
            Value : gender,
        },
        {
            $Type : 'UI.DataField',
            Value : description,
            Label : 'Description',
        },
        {
            $Type : 'UI.DataField',
            Value : superPowers.name,
            Label : '{i18n>Super Power}',
        },
    ]
);
annotate service.SuperHero with @(
    UI.FieldGroup #Main : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : age,
            },
            {
                $Type : 'UI.DataField',
                Value : gender,
            },
            {
                $Type : 'UI.DataField',
                Value : superPowers.name,
                Label : 'Powers',
            },
        ],
    }
);
annotate service.SuperHero with @(
    UI.DataPoint #name : {
        $Type : 'UI.DataPointType',
        Value : name,
        Title : 'name',
    },
    UI.DataPoint #gender : {
        $Type : 'UI.DataPointType',
        Value : gender,
        Title : 'gender',
    },
    UI.HeaderFacets : []
);
annotate service.SuperHero with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Main',
            Label : 'General Information',
            Target : '@UI.FieldGroup#Main',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Identity Information',
            ID : 'IdentityInformation',
            Target : '@UI.FieldGroup#IdentityInformation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Villians Informations',
            ID : 'VilliansInformations',
            Target : '@UI.FieldGroup#VilliansInformations',
        },
    ],
    UI.FieldGroup #SuperPowersInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : superPowers.name,
                Label : '{i18n>Powers}',
            },{
                $Type : 'UI.DataField',
                Value : superPowers.description,
            },],
    }
);
annotate service.SuperHero with @(
    UI.FieldGroup #IdentityInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : secretIdentity.name,
                Label : 'name',
            },
            {
                $Type : 'UI.DataField',
                Value : secretIdentity.description,
            },],
    }
);
annotate service.SuperHero with @(
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
            SortOrder : [
                {
                    $Type : 'Common.SortOrderType',
                    Property : name,
                    Descending : false,
                },
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View',
    },
    UI.LineItem #tableView : [
    ],
    UI.SelectionPresentationVariant #tableView1 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View 1',
    }
);
annotate service.SuperHero with @(
    UI.FieldGroup #VilliansInformations : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : villians.name,
                Label : 'name',
            },{
                $Type : 'UI.DataField',
                Value : villians.age,
                Label : 'age',
            },{
                $Type : 'UI.DataField',
                Value : villians.gender,
                Label : 'gender',
            },{
                $Type : 'UI.DataField',
                Value : villians.description,
                Label : 'description',
            },],
    }
);
