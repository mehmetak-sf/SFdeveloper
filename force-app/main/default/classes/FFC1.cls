public class FFC1 {
    public static void Challenge1(){
Opportunity Highwon=[SELECT Name, Amount, StageName, Account.Name, Account.id FROM Opportunity WHERE StageName='Closed Won' ORDER BY Amount DESC LIMIT 1];
System.debug(Highwon);
Account tekil= new Account();
tekil.id=Highwon.AccountId;
System.debug(tekil);
tekil.AnnualRevenue=Highwon.Amount;
System.debug(tekil.AnnualRevenue);
update tekil;
}}