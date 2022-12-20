/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 09-30-2022
 * @last modified by  : Mehmet AK
**/
@istest
public class UserTest {
    @istest
    public static void UserNewTest() {
       Account a = new Account (Name = 'test');
       insert a; 
       
        User u = [SELECT Name FROM User WHERE Name = 'Maxwell Clark Randall'];
System.runAs(u){
    Account acc = [SELECT Id, Name FROM Account];
    System.assertEquals('test', acc.Name);
}
    }
}