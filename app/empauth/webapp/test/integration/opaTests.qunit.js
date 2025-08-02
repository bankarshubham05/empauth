sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'empauth/test/integration/FirstJourney',
		'empauth/test/integration/pages/WorkerSetList',
		'empauth/test/integration/pages/WorkerSetObjectPage'
    ],
    function(JourneyRunner, opaJourney, WorkerSetList, WorkerSetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('empauth') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheWorkerSetList: WorkerSetList,
					onTheWorkerSetObjectPage: WorkerSetObjectPage
                }
            },
            opaJourney.run
        );
    }
);