public class Greetings {

public string firstName='Mehmet';
    public string fullName(){
        String lastName='Ak';
      string fName=firstName+' '+lastName;
         System.debug(fName);
        return fName;
    }
    public string  greeting(){
        string greet='Hi ';
        System.debug(greet+' '+fullName());
        return greet;
    }
    public void greetingAll(list<String> nameList){
        for(string name:nameList){
            System.debug('Hi '+name);
    }	}
    public void greetingAllButLast(list<String> nameList){
        for(integer i=0; i<namelist.size()-1; i++){
            System.debug('Hi '+nameList.get(i));
    }	}
   public void greetingToMax(list<String> nameList){
       for(string name:nameList){
           if(name=='Max Clark') {System.debug('Hi '+name);}
           else{}
   }}}
/*
 Apex Screen Codes

Greetings testname = new Greetings();
system.debug(testname.greeting());
system.debug('**********************');
List<String> nameList = new List <String>();
nameList.add('Max Clark');
nameList.add('Bill David');
nameList.add('Cansın Acay');
nameList.add('Jane Goodall');
nameList.add('Alican Can');
testName.greetingAll(nameList);
system.debug('**********************');
testName.greetingAllButLast(nameList);
system.debug('**********************');
testName.greetingToMax(nameList);
*/