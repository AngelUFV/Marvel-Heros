sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'prueba1/Villians/test/integration/FirstJourney',
		'prueba1/Villians/test/integration/pages/VilliansList',
		'prueba1/Villians/test/integration/pages/VilliansObjectPage',
		'prueba1/Villians/test/integration/pages/SuperHeroObjectPage'
    ],
    function(JourneyRunner, opaJourney, VilliansList, VilliansObjectPage, SuperHeroObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('prueba1/Villians') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheVilliansList: VilliansList,
					onTheVilliansObjectPage: VilliansObjectPage,
					onTheSuperHeroObjectPage: SuperHeroObjectPage
                }
            },
            opaJourney.run
        );
    }
);