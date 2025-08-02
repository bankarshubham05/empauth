using { emp.db } from '../db/schema';

service CatalogService @(path:'CatalogService') {

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
        // This will ask for the input value
       // action updateGender(gender : String) returns String;

    //If bound function and dont want the input value the dont pass parameter
    //Hide Button for User
    // @restrict :[{
    //     to: ['UserRole'],
    //     where : 'true'
    // }]
    // @(requires: 'UserRole')
    action updateGender() returns String;
     }


  
    
}

@odata.singleton 
entity Configuration {
    key ID: String;
    isAdmin : Boolean;
}

annotate CatalogService.WorkerSet with @(
    UI.CreateHidden : { $edmJson: {$Not: { $Path: '/CatalogService.EntityContainer/Configuration/isAdmin'} } },
    UI.UpdateHidden : { $edmJson: {$Not: { $Path: '/CatalogService.EntityContainer/Configuration/isAdmin'} } },
);
