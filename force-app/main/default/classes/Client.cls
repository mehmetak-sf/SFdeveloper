public with sharing class Client {
    

    
    public string name = 'Max';
    public Integer age = 36; 


    public void clientDataMethod(){
        String ageToText = String.valueOf(age);
        System.debug('The name of the client is ' + name + ' and the age is ' + ageToText); 

    }
}
/*

Client client1 = new Client();
client1.clientDataMethod();

Client client2 = new Client();
client2.name='Max';
client2.age =36;
client2.clientDataMethod();
*/