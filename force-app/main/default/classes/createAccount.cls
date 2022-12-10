public class createAccount {
    public static void createAccountMethod(){
 
        List <Account> listAcc = new List <Account>();
        for (integer i=1; i<4; i++){Account acc = new Account(Name='Test'+i);// Test1,Test2,Test3
        listAcc.add(acc);
                                   
		} insert listAcc;  // it is not best practise to send database one by one!   
    }
}