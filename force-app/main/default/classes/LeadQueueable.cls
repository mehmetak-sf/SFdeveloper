public class LeadQueueable implements Queueable{
       
        public void execute(QueueableContext context){List<Lead> multilead = [SELECT Id, LastName, FirstName, Title, Company, City FROM Lead];
    
        for (Lead lead:multiLead){System.debug('Lead id:' + Lead);
                                 }
    }}