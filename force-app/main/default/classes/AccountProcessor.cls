public class AccountProcessor {
    @future
    public static void countContacts(List<Id> accountIds){
        List<Account> accts = [SELECT Id, (SELECT Id FROM Contacts) FROM ACCOUNT WHERE Id in: accountIds];
        for(Account acc:accts){
            acc.Number_of_Contacts__c = acc.Contacts.size();
        }
        update accts;
    }
}