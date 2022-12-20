public with sharing class CreatingAccount {
    public static Account createAccount(Sring Name) {
        Account newAccount = new Account();
        newAccount.Name=Name;
        return newAccount;
    }
}
