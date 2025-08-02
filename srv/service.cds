using { emp.db } from '../db/schema';

service CatalogService @(path:'CatalogService') {

// @(restrict: [
//                         { grant: ['WRITE'],to: 'Admin' },
//                         { grant: ['READ'], to: 'Viewer' }
//                         ])
// entity WorkerSet as projection on db.Worker;
    @odata.draft.enabled
     entity WorkerSet as projection on db.Worker

}
