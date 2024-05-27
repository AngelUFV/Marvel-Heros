sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'prueba1.Villians',
            componentId: 'VilliansList',
            contextPath: '/Villians'
        },
        CustomPageDefinitions
    );
});