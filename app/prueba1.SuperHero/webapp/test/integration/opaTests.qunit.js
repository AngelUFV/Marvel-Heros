sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'prueba1/SuperHero/test/integration/FirstJourney',
		'prueba1/SuperHero/test/integration/pages/SuperHeroList',
		'prueba1/SuperHero/test/integration/pages/SuperHeroObjectPage',
		'prueba1/SuperHero/test/integration/pages/SuperPowersObjectPage'
    ],
    function(JourneyRunner, opaJourney, SuperHeroList, SuperHeroObjectPage, SuperPowersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('prueba1/SuperHero') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSuperHeroList: SuperHeroList,
					onTheSuperHeroObjectPage: SuperHeroObjectPage,
					onTheSuperPowersObjectPage: SuperPowersObjectPage
                }
            },
            opaJourney.run
        );
    }
);