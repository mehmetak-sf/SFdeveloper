/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 10-01-2022
 * @last modified by  : Mehmet AK
**/
@istest
public class DatabaseDataTest {
    @istest
    public static void firstDataTest() {
        List<Account> accs = [SELECT Id FROM Account];
        System.assertEquals(0, accs.size());
    }

    @istest(SeeAllData = true)
    public static void secondDataTest() {
        List<Account> accs = [SELECT Id FROM Account];
        System.assertEquals(35, accs.size()); // This must give Error
    }
}