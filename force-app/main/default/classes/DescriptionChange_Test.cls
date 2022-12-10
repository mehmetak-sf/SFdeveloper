/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 09-30-2022
 * @last modified by  : Mehmet AK
**/
@isTest
public with sharing class DescriptionChange_Test {
    @isTest
    public static void accDesChange_Test() {

        //create mock data
        List <Account> accs = new List<Account>();
     
        for (integer i = 1; i<5; i++){
            Account a = new Account();
            a.Name = 'Test' + i;
            accs.add(a);
        }
        insert accs;

        // Call actual data
Test.startTest();
        DescriptionChange.accDesChange();
System.assertEquals(1, Limits.getDmlStatements());
        Test.stopTest();

        // Assess the result
List<Account> newAccs=[SELECT Description FROM Account];

for (Account a:newAccs){
    System.assertEquals('Changed', a.Description);
}

    System.assertEquals(4,newAccs.size());

System.assertEquals(1, Limits.getDmlStatements());
    }
}
