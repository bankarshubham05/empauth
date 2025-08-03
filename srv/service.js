const cds = require('@sap/cds');

module.exports = cds.service.impl( async(srv) =>{

    srv.on("updateGender" , 'WorkerSet' , async(req) =>{

        const { Worker } = cds.entities('emp.db') ;
       //This is passing input value from UI
//const gender = req.data.gender;  

//This will pick the value from the selected column
    let ID = req.params[0].ID;
        const [{ Gender }] = await cds.transaction(req).run(SELECT.from(Worker).columns('Gender').where({ ID }));

       
        let newGender;
        if(Gender === 'M' || Gender === 'm'){
            newGender = 'F';
        }
        else if(Gender === 'f' || Gender === 'F' ){
           newGender = 'M'
        }
        else{
            req.error(500,`Invalid Data for this ${ID}`);
        }
        const returdata = cds.transaction(req).run(UPDATE(Worker).set({Gender : newGender }).where({ ID }));
        return `Gender updated for worker ${ID}`;

    })


  srv.on ('READ', "FeatureControl", async (req) => {
    let operationHidden = true

    if (req.user.is('Manager')) {
      operationHidden = false
    }

    return {
      operationHidden: operationHidden,
      operationEnabled: !operationHidden,
    }
  })


})