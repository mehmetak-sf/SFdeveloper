/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 09-30-2022
 * @last modified by  : Mehmet AK
**/
public class DescriptionChange {
    public static void accDesChange() {
        //Get All Accounts
        List<Account>accs = [SELECT Description From Account];
        List<Account>newAccs = new List <Account>();

        //Change each account description
        for (Account a:accs) {
            a.Description = 'Changed';
            newAccs.add(a);
        }
        //Save new updated List to database
        update newAccs;
    }
}