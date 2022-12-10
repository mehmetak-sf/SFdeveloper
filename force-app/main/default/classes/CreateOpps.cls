/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 10-04-2022
 * @last modified by  : Mehmet AK
**/
public class CreateOpps {
    @TestVisible
    private static void newOpps() {

        Opportunity o = new Opportunity();
        o.Name = 'New Opportunity';
        o.StageName = 'Qualification';
        o.CloseDate = date.newInstance(2022, 12, 12);
        insert o;
    }
}
