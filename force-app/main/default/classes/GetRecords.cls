/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 10-29-2022
 * @last modified by  : Mehmet AK
**/
public class GetRecords {
    @AuraEnabled(cacheable = true)
    public static List<Account> getAccounts() {
        return [SELECT Id, Name, Phone FROM Account];
    }
}