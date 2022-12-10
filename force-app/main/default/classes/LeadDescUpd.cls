public class LeadDescUpd {
    public static void newLeadDesc() {
    list<Lead> leadList = [SELECT Description FROM Lead];
    list<Lead> newLeads = new List<Lead>();
        for(Lead i :leadList){
           Lead newLead = new Lead();
           i.description = 'This lead’s description updated to apply bulk apex test';
           newLeads.add(i);
        }
    update newLeads;
    }
}