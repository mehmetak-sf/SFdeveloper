@isTest
public class CreateAccount_Test { //150 DML
    @isTest
    public static void createAccountMethod_Test(){
        
        User u =[Select Id from User where username = 'makrometcw@gmail.com' Limit 1];
        
        System.runAs(u){
            Test.startTest();//New 150 DML
            CreateAccount.createAccountMethod();
            System.assertEquals(1, Limits.getDmlStatements());
            System.debug(Limits.getDmlStatements());
            Test.stopTest();//149DML left
            
        }
            System.debug(Limits.getDmlStatements());//150 DML
     
    }
}