public class CreatingAccount {
    public static Account createAccount(String Name) {
        Account newAccount = new Account();
        newAccount.Name=Name;
        return newAccount;
    }
}
 // 
 /*
 *******Apex Anonimous Codes *******
 
system.debug(CreatingAccount.createAccount('Ege'));
 */