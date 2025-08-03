namespace emp.db;

using {  cuid,  managed , Currency} from '@sap/cds/common';
using { emp.customAspect } from './customAspects';



entity Worker : cuid, managed {
    firstName    : String(40) @title : 'First Name';
    lastName     : String(40) @title : 'Last Name';
    Gender       : customAspect.Gender @title : 'Gender';
    phoneNumber  : customAspect.phoneNumber @title : 'Contact Number';
    email        : customAspect.Email @title : 'Email';
    Currency     : Currency;
    salaryAmount : customAspect.AmountType @title : 'Salary Amount';
}

