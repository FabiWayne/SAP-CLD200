using RiskService as service from '../../srv/risk-service';

annotate service.Risks with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Title}',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Owner}',
            Value : owner,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Priocode}',
            Value : prio_code,
            Criticality : PrioCriticality,
            CriticalityRepresentation : #WithIcon,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Descr}',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Impact}',
            Value : impact,
            Criticality : criticality,
            CriticalityRepresentation : #WithIcon,
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : 'bp/@Communication.Contact#contact1',
            Label : 'Contact Name',
        },
    ]
);
annotate service.Risks with {
    miti @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Mitigations',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : miti_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'descr',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'owner',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'timeline',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'IsActiveEntity',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'HasActiveEntity',
            },
        ],
        Label : '{i18n>Mitigation}',
    }
};
annotate service.Risks with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'owner',
                Value : owner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'prio_code',
                Value : prio_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'impact',
                Value : impact,
            },
            {
                $Type : 'UI.DataField',
                Label : 'criticality',
                Value : criticality,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PrioCriticality',
                Value : PrioCriticality,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Risk Overview',
            ID : 'RiskOverview',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>RiskDetails}',
                    ID : 'i18nRiskDetails',
                    Target : '@UI.FieldGroup#i18nRiskDetails',
                },],
        },
        {
                    $Type : 'UI.CollectionFacet',
                    Label : '{i18n>MitigationOverview}',
                    ID : 'i18nMitigationOverview',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            Label : '{i18n>MitigationDetails}',
                            ID : 'i18nMitigationDetails',
                            Target : '@UI.FieldGroup#i18nMitigationDetails',
                        },],
                },
    ]
);
annotate service.Risks with @(
    UI.SelectionFields : [
        prio_code,
        impact,
        owner,
    ]
);
annotate service.Risks with {
    prio @Common.Label : '{i18n>Priority}'
};
annotate service.Risks with {
    impact @Common.Label : '{i18n>Impact}'
};
annotate service.Risks with {
    owner @Common.Label : '{i18n>Owner}'
};
annotate service.Risks with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : title,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : descr,
        },
        TypeImageUrl : 'sap-icon://alert',
    }
);
annotate service.Risks with @(
    UI.FieldGroup #i18nForm : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
                Label : 'title',
            },{
                $Type : 'UI.DataField',
                Value : owner,
            },
            {
                $Type : 'UI.DataField',
                Value : descr,
                Label : 'descr',
            },
            {
                $Type : 'UI.DataField',
                Value : prio_code,
            },
            {
                $Type : 'UI.DataField',
                Value : impact,
            },],
    }
);
annotate service.Risks with @(
    UI.FieldGroup #i18nMitigation : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.Risks with @(
    UI.FieldGroup #i18nDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : miti.createdAt,
            },{
                $Type : 'UI.DataField',
                Value : miti.createdBy,
            },{
                $Type : 'UI.DataField',
                Value : miti.descr,
                Label : 'descr',
            },{
                $Type : 'UI.DataField',
                Value : miti.modifiedBy,
            },{
                $Type : 'UI.DataField',
                Value : miti.modifiedAt,
            },{
                $Type : 'UI.DataField',
                Value : miti.owner,
                Label : 'owner',
            },{
                $Type : 'UI.DataField',
                Value : miti.timeline,
                Label : 'timeline',
            },],
    }
);
annotate service.Risks with @(
    UI.FieldGroup #i18nRiskDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : prio_code,
                Criticality : PrioCriticality,
                CriticalityRepresentation : #WithIcon,
            },{
                $Type : 'UI.DataField',
                Value : owner,
            },{
                $Type : 'UI.DataField',
                Value : title,
                Label : '{i18n>Title}',
            },{
                $Type : 'UI.DataField',
                Value : impact,
                Criticality : criticality,
                CriticalityRepresentation : #WithIcon,
            },
            {
                $Type : 'UI.DataField',
                Value : descr,
                Label : '{i18n>Descr}',
            },
            {
                $Type : 'UI.DataFieldForAnnotation',
                Target : 'bp/@Communication.Contact#contact2',
                Label : 'Contact Name',
            },],
    }
);
annotate service.Risks with @(
    UI.FieldGroup #i18nMitigationDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : miti_ID,
                Label : '{i18n>Mitigation}',
            },{
                $Type : 'UI.DataField',
                Value : miti.owner,
                Label : '{i18n>Owner}',
            },{
                $Type : 'UI.DataField',
                Value : miti.timeline,
                Label : '{i18n>Timeline}',
            },],
    }
);
annotate service.Risks with {
    miti @Common.Text : {
            $value : miti.descr,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
annotate service.Risks with {
    miti @Common.ValueListWithFixedValues : true
};
annotate service.Mitigations with {
    ID @Common.Text : descr
};
annotate service.Mitigations with {
    owner @Common.FieldControl : #ReadOnly
};
annotate service.Mitigations with {
    timeline @Common.FieldControl : #ReadOnly
};
annotate service.Risks with {
    prio @Common.Text : prio.descr
};
annotate service.Risks with @(
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : bp_BusinessPartner,
        title : bp.BusinessPartner,
    }
);
annotate service.BusinessPartners with @(
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : BusinessPartner,
    }
);
annotate service.BusinessPartners with @(
    Communication.Contact #contact1 : {
        $Type : 'Communication.ContactType',
        fn : FullName,
    }
);
annotate service.BusinessPartners with @(
    Communication.Contact #contact2 : {
        $Type : 'Communication.ContactType',
        fn : FullName,
    }
);
