public class LeadFuture {
       @future
        public static void check(){List<Lead> multilead = [SELECT Id, LastName, FirstName, Title, Company, City FROM Lead];
    
        for (Lead lead:multiLead){System.debug('Lead id:' + Lead);
                                 }
    }}