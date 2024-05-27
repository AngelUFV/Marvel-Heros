using { prueba1 as my } from '../db/schema.cds';

@path : '/service/prueba1'
service prueba1Srv
{
    @odata.draft.enabled
    entity SuperHero as projection on my.SuperHero
    {
        *
    }
    // excluding
    // {
        // secretIdentity
    // };

    entity SuperPowers as
        projection on my.SuperPowers;

    @odata.draft.enabled
    entity SecretIdentity as
        projection on my.SecretIdentity;

    @odata.draft.enabled
    entity Villians as
        projection on my.Villians;
}

annotate prueba1Srv with @requires :
[
    'authenticated-user'
];
