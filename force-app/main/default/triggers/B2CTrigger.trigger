trigger B2CTrigger on Contact (before insert) {
    for (Contact con:Trigger.new) {
        if (String.isBlank(con.AccountId)){con.AccountId='0018d00000BDoF0AAL';}
    }
}