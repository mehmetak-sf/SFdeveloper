trigger ConWithoutAccError2 on Contact (before insert) {
    for (Contact con:Trigger.new){
        if (con.accountid==null){
            con.addError('Contact has no Account - This is Apex rule:ConWithoutAccError');
        }
        
    }
    
}