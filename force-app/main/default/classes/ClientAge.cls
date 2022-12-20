public class ClientAge {
   private string name = 'Max'; //we changed public to private to prevent user change name. An example of encapsulation
    public integer num = 36;
    public void clientAgeMethod(){
        string newNum=string.valueOf(num);
        System.debug('The name of the client is ' +name+ 'and the age is '+ newNum);
    }
}