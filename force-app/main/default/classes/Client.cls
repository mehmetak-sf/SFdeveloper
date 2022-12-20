public with sharing class Client {
    
    public string name = 'David';
    public Integer age = 30; 


    public void clientDataMethod(){
        String ageToText = String.valueOf(age);
        System.debug('The name of the client is ' + name + ' and the age is ' + ageToText); 

    }
}
