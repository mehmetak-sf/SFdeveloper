/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 09-30-2022
 * @last modified by  : Mehmet AK
**/
public  class CreateAccountContact {
    public static void CreateObjects() {
        Account a = new Account ();
        a.name = 'Parent Account'; // Salesforce assigning Id (linking record to child records by using Id)
        insert a; 
        Contact c = new Contact ();
        c.LastName = 'Test1';
        c.AccountId = a.Id; //linking records
        insert c;

        Contact d = new Contact ();
        d.LastName = 'Test2';
        d.AccountId = a.Id; //linking records
        insert d;

    }
}
