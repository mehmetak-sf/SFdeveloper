trigger AccountTrigger on Account (after insert) {
    System.debug('Trigger.New'+ trigger.new); // => List<Account> multiAccount = new List<Account> multiAccount();
     System.debug('Trigger.NewMap'+ trigger.newMap);
   
    for(Account singleAcc:trigger.new){
        
        // Datatype variablename operator(=) Expession
        Opportunity singleOpportunity= New Opportunity();
        
        singleOpportunity.AccountId=singleAcc.id;
        singleOpportunity.name ='APEX Trigger Welcome Opportunity';
        singleOpportunity.CloseDate=Date.today()+10;
        singleOpportunity.StageName='Prospecting';
        
        insert singleOpportunity;
               
    }
    
}