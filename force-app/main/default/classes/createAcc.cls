public with sharing class createAcc {
    public createAcc() {

    }
    public void create(String accName) {
        
            Account singleAccount = New Account();
            singleAccount.Name=accName;

            insert singleAccount;
    }
}