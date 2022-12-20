/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 10-04-2022
 * @last modified by  : Mehmet AK
**/
@isTest
public class CreateOpps_Test {
    @isTest
    public static void newOpps_Test() {
        CreateOpps.newOpps();

Opportunity o = [SELECT Id, Name, StageName FROM Opportunity WHERE Name = 'New Opportunity'];
System.assertEquals('New Opportunity', o.Name);
System.assertEquals('Qualification', o.StageName);


    }
}