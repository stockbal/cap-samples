sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'de/demo/cap/remote/productcatalogui/test/integration/FirstJourney',
		'de/demo/cap/remote/productcatalogui/test/integration/pages/ProductsList',
		'de/demo/cap/remote/productcatalogui/test/integration/pages/ProductsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductsList, ProductsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('de/demo/cap/remote/productcatalogui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductsList: ProductsList,
					onTheProductsObjectPage: ProductsObjectPage
                }
            },
            opaJourney.run
        );
    }
);