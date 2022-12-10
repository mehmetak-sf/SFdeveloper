trigger AccOppoTrigger on Account (before insert) {
    for (Account acc:Trigger.new) {
        if(acc.Industry =='Education' && acc.Rating=='Warm')
        {Opportunity opp = new Opportunity();
         opp.Name = acc.Name;
         opp.CloseDate = date.Today() +10;
         opp.StageName = 'Need Analysis';
         insert opp;
         } 
    }
}