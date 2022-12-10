public class Greetings {

public string firstName='Mehmet';
    public string fullName(){
        String lastName='Ak';
      string fullName=firstName+' '+lastName;
         System.debug(fullName);
        return fullName;
    }
    public string  greeting(){
        string greeting='Hi ';
        System.debug(greeting+' '+fullName());
        return greeting;
    }
    public void greetingAll(list<String> nameList){
        for(string name:nameList){
            System.debug('Hi '+name);
    }	}
    public void greetingAllButLast(list<String> nameList){
        for(integer i=0; i<namelist.size()-1; i++){
            System.debug('Hi '+nameList.get(i));
    }	}
   public void greetingToDeniz(list<String> nameList){
       for(string name:nameList){
           if(name=='Deniz') {System.debug('Hi '+name);}
           else{}
   }}}