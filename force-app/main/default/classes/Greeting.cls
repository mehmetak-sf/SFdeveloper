public class Greeting {
   public String firstName  = 'Mehmet';
    
    public String fullName(){
      String lastName = 'AK';  
        System.debug(firstName + ' ' + lastName);
    return (firstName + ' ' + lastName);}
    
    public String greeting(){
      String greeting = 'Hi';
      System.debug(greeting);
    return greeting;}
}