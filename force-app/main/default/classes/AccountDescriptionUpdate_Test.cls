/**
 * @description       : AccountDescriptionUpdate_Test
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 12-11-2022
 * @last modified by  : Mehmet AK
**/
@isTest
public class AccountDescriptionUpdate_Test {
    
    @TestSetup
    public static void testMethod_Test(){
        Account acc = new Account(Name = 'Test');
        insert acc;
        Account accNew = new Account(Name = 'Test');
        insert accNew;
        
    } 
 
    @isTest
    public static void updateDescription_Test1(){
        Account acc = [Select id from Account limit 1];
        
        AccountDescriptionUpdate.updateDescription(acc);
        System.assertEquals('Updated Account', acc.Description);
    }
    
    @isTest
    public static void updateDescription_Test2(){
        Account accNew = [Select id from Account limit 1];
        
        AccountDescriptionUpdate.updateDescription(accNew);
        System.assertEquals('Updated Account', accNew.Description);
    }
}