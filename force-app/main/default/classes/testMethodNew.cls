/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 09-30-2022
 * @last modified by  : Mehmet AK
**/
@istest
public class testMethodNew {
    @istest
    public static void makeData() {

        Account a = new Account(Name = 'Test');
        insert a;

        Contact c = new Contact(LastName = 'New Test');
        insert c;
    }
    @istest
    public static void methodOne(){
        Account b = new Account(Name = 'MethodOne Account');
        insert b;
    List<Account> accsList = [SELECT Id, Name FROM Account ];
    System.assertEquals(2, accsList.size());
    }
    @istest
    public static void methodTwo(){
List <Account> Accs  = [SELECT Id, Name FROM Account ];
System.assertEquals(1, accs.size());

    }

    }

