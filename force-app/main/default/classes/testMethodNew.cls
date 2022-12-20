@istest
public class testMethodNew {
    @TestSetup
    static void makeData(){
        Account a = new Account(Name = 'Test');
        insert a;

        Contact c = new Contact(LastName = 'New Test');
        insert c;
    }

    @istest
    public static void methodOne(){
        Account b = new Account(Name = 'MethodOne Account');
        insert b;
        
        List<Account> accList = [SELECT Id FROM Account];

        System.assertEquals(2, accList.size());
    }

    @istest
    public static void methodTwo(){
        List<Account> accs = [SELECT Id FROM Account];
        System.assertEquals(1, accs.size());
        
    }

}