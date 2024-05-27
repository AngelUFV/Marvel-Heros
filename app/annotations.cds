using { prueba1Srv } from '../srv/service.cds';

annotate prueba1Srv.SuperHero with @UI.HeaderInfo: { TypeName: 'Super Hero', TypeNamePlural: 'Super Heroes', Title: { Value: name } };
annotate prueba1Srv.SuperHero with {
  ID @UI.Hidden @Common.Text: { $value: name, ![@UI.TextArrangement]: #TextOnly }
};
annotate prueba1Srv.SuperHero with @UI.Identification: [{ Value: name }];
annotate prueba1Srv.SuperHero with {
  secretIdentity @Common.ValueList: {
    CollectionPath: 'SecretIdentity',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: secretIdentity_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
    ],
  }
};
annotate prueba1Srv.SuperHero with {
  superPowers1 @Common.ValueList: {
    CollectionPath: 'SuperPowers',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: superPowers1_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
    ],
  }
};
annotate prueba1Srv.SuperHero with @UI.DataPoint #age: {
  Value: age,
  Title: 'Age',
};
annotate prueba1Srv.SuperHero with {
  name @title: 'Name';
  age @title: 'Age';
  gender @title: 'Gender'
};

annotate prueba1Srv.SuperHero with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Value: age },
    { $Type: 'UI.DataField', Value: gender },
    { $Type: 'UI.DataField', Label: 'Secret Identity', Value: secretIdentity_ID },
    { $Type: 'UI.DataField', Label: 'Super Power', Value: superPowers1_ID }
];

annotate prueba1Srv.SuperHero with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Value: age },
    { $Type: 'UI.DataField', Value: gender },
    { $Type: 'UI.DataField', Label: 'Secret Identity', Value: secretIdentity_ID },
    { $Type: 'UI.DataField', Label: 'Super Power', Value: superPowers1_ID }
  ]
};

annotate prueba1Srv.SuperHero with {
  secretIdentity @Common.Text: { $value: secretIdentity.name, ![@UI.TextArrangement]: #TextOnly };
  superPowers1 @Common.Text: { $value: superPowers1.name, ![@UI.TextArrangement]: #TextOnly }
};

annotate prueba1Srv.SuperHero with {
  superPowers @Common.Label: 'Super Powers';
  secretIdentity @Common.Label: 'Secret Identity';
  superPowers1 @Common.Label: 'Super Power'
};

annotate prueba1Srv.SuperHero with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#age' }
];

annotate prueba1Srv.SuperHero with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate prueba1Srv.SuperHero with @UI.SelectionFields: [
  secretIdentity_ID,
  superPowers1_ID
];

annotate prueba1Srv.SuperPowers with @UI.HeaderInfo: { TypeName: 'Super Power', TypeNamePlural: 'Super Powers', Title: { Value: name } };
annotate prueba1Srv.SuperPowers with {
  ID @UI.Hidden @Common.Text: { $value: name, ![@UI.TextArrangement]: #TextOnly }
};
annotate prueba1Srv.SuperPowers with @UI.Identification: [{ Value: name }];
annotate prueba1Srv.SuperPowers with {
  superHero @Common.ValueList: {
    CollectionPath: 'SuperHero',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: superHero_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'age'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'gender'
      },
    ],
  }
};
annotate prueba1Srv.SuperPowers with {
  description @title: 'Description'
};

annotate prueba1Srv.SuperPowers with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Label: 'Super Hero', Value: superHero_ID }
];

annotate prueba1Srv.SuperPowers with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Label: 'Super Hero', Value: superHero_ID }
  ]
};

annotate prueba1Srv.SuperPowers with {
  superHero @Common.Text: { $value: superHero.name, ![@UI.TextArrangement]: #TextOnly }
};

annotate prueba1Srv.SuperPowers with {
  superHeroes @Common.Label: 'Super Heroes';
  superHero @Common.Label: 'Super Hero'
};

annotate prueba1Srv.SuperPowers with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate prueba1Srv.SuperPowers with @UI.SelectionFields: [
  superHero_ID
];

annotate prueba1Srv.SecretIdentity with @UI.HeaderInfo: { TypeName: 'Secret Identity', TypeNamePlural: 'Secret Identities', Title: { Value: name } };
annotate prueba1Srv.SecretIdentity with {
  ID @UI.Hidden @Common.Text: { $value: name, ![@UI.TextArrangement]: #TextOnly }
};
annotate prueba1Srv.SecretIdentity with @UI.Identification: [{ Value: name }];
annotate prueba1Srv.SecretIdentity with {
  superHero @Common.ValueList: {
    CollectionPath: 'SuperHero',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: superHero_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'age'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'gender'
      },
    ],
  }
};
annotate prueba1Srv.SecretIdentity with {
  description @title: 'Description'
};

annotate prueba1Srv.SecretIdentity with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Label: 'Super Hero', Value: superHero_ID }
];

annotate prueba1Srv.SecretIdentity with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Label: 'Super Hero', Value: superHero_ID }
  ]
};

annotate prueba1Srv.SecretIdentity with {
  superHero @Common.Text: { $value: superHero.name, ![@UI.TextArrangement]: #TextOnly }
};

annotate prueba1Srv.SecretIdentity with {
  superHero @Common.Label: 'Super Hero'
};

annotate prueba1Srv.SecretIdentity with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate prueba1Srv.SecretIdentity with @UI.SelectionFields: [
  superHero_ID
];

