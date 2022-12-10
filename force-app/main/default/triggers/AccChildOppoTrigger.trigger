trigger AccChildOppoTrigger on Account (after insert) {
    List<Opportunity> opps= new List <Opportunity>();
    for (Account acc:Trigger.new){
        if (acc.Industry=='Education' && acc.Rating=='Warm'){
        opportunity opp = new opportunity();
            opp.Name='AccChildOppoTriggerTest';
        opp.AccountId=acc.Id;
        opp.StageName='Need Analysis';
        opp.CloseDate=date.today()+10;
        opps.add(opp);
        }}
    insert opps;
}