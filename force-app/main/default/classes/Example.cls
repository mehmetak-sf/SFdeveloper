public class Example {
    public void ExampleMethod(){
        list<Opportunity> optyList = [Select id, stageName, closeDate from Opportunity];
        for(opportunity opp : optyList){
            opp.StageName = 'Closed Won';
            opp.closeDate = System.date.today();
        }
        update optyList;
    }
    public void show(){
        List<Opportunity> optyList = [Select id from Opportunity where createdDate=TODAY];
        delete optyList;
    }

}