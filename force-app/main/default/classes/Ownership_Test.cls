@isTest
public class Ownership_Test {
    @isTest
    public static void OwnershipMethod_Test1(){
        Account acc = new Account (Name = 'Test Account', Industry = 'Banking');
        insert acc;
        Account accNew = new Account (Name = 'Test', Industry = 'Education');
        insert accNew;
        
        Account acc1 = [Select Ownership from Account where id =: acc.Id];
        Account acc2 = [Select Ownership from Account where id =: accNew.Id];
        System.assertEquals('Private', acc1.Ownership);
        System.assertEquals(null, acc2.Ownership);      
    }
    @isTest
    public static void OwnershipMethod_Test2(){
        Account accPrivate = new Account (Name = 'Test Account', Industry = 'Banking', Ownership = 'Private');
        insert accPrivate;
  
        Account acc3 = [Select Ownership from Account where id =: accPrivate.Id];
       
        System.assertEquals('Private', acc3.Ownership);          
    }
    @isTest
    public static void OwnershipMethod_Test3(){
        List<Account> listAcc = new List<Account>();
        Account newAcc1 = new Account (Name = 'Test New', Industry = 'Banking');
        Account newAcc2 = new Account (Name = 'Test New2', Industry = 'Banking');
        listAcc.add(newAcc1);
        listAcc.add(newAcc2);
        insert listAcc;
  
        Account getAcc1 = [Select Ownership from Account where id =: listAcc.get(0).id];
        Account getAcc2 = [Select Ownership from Account where id =: listAcc.get(1).id];
       
        System.assertEquals('Private', getAcc1.Ownership);
        System.assertEquals('Private', getAcc2.Ownership);  
    }
    

}