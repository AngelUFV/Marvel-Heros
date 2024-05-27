namespace prueba1;

entity SuperHero
{
    key ID : UUID;
    name : String(100)
        @mandatory;
    age : Integer;
    gender : String(10);
    description : String(100);
    superPowers : Composition of many SuperPowers on superPowers.superHero = $self;
    secretIdentity : Association to one SecretIdentity;
    villians : Association to many Villians;
    //villians : Association to many Villians on villians.superHeros = $self;

}

entity SuperPowers
{
    key ID : UUID;
    name : String(50)
        @mandatory;
    description : String(100);
    superHeroes : Association to many SuperHero on superHeroes.superPowers = $self;
    superHero : Association to one SuperHero;
}

entity SecretIdentity
{
    key ID : UUID;
    name : String(50)
        @mandatory;
    description : String(100);
    superHero : Association to one SuperHero;
}

entity Villians
{
    key ID : UUID;
    name : String(100)  @mandatory;
    age : Integer;
    gender : String(10);
    description : String(100);
    superHeros : Association to many SuperHero;
}