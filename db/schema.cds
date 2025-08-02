namespace emp.db;

using {  cuid,  managed} from '@sap/cds/common';
using { emp.customAspect } from './customAspects';



entity Worker : cuid, managed {
    firstName    : String(40);
    lastName     : String(40);
    Gender       : customAspect.Gender;
    phoneNumber  : customAspect.phoneNumber;
    email        : customAspect.Email;
    Currency     : String(3);
    salaryAmount : customAspect.AmountType;
}

