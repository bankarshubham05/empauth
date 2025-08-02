sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'empauth',
            componentId: 'WorkerSetObjectPage',
            contextPath: '/WorkerSet'
        },
        CustomPageDefinitions
    );
});