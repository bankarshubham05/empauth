using { emp.db } from '../db/schema';

service CatalogService @(path:'CatalogService' , requires: 'authenticated-user') {

// @(restrict: [
//                         { grant: ['WRITE'],to: 'Admin' },
//                         { grant: ['READ'], to: 'Viewer' }
//                         ])
// entity WorkerSet as projection on db.Worker;
    @odata.draft.enabled
     entity WorkerSet as projection on db.Worker
    
     actions {
        @Common.SideEffects : {
            TargetProperties : [
                'in/Gender',
            ],
        }
      
    action updateGender() returns String;
     }

 @odata.singleton
    entity FeatureControl {
        operationHidden : Boolean;
        operationEnabled : Boolean;
    }

// CRUD operations
annotate CatalogService.WorkerSet with @(
    
    // UI.CreateHidden: { $edmJson: { $Path: '/CatalogService.EntityContainer/FeatureControl/operationHidden' } }, 
    // UI.UpdateHidden: { $edmJson: { $Path: '/CatalogService.EntityContainer/FeatureControl/operationHidden' } },
    // UI.DeleteHidden: { $edmJson: { $Path: '/CatalogService.EntityContainer/FeatureControl/operationHidden' } }
);


}


