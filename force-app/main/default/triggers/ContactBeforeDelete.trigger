/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 10-11-2022
 * @last modified by  : Mehmet AK
**/
trigger ContactBeforeDelete on Contact (before delete) {
    for(Contact c: Trigger.old){
        if(c.AccountId==Null){
            c.addError('not associated to an account');
        }
    }

}