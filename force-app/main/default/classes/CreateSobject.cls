public class CreateSobject {
    Public static void newAccount(String accName){}	
   
    public static void newRental(String rentalName, Integer newPhone, String newAddress){
        
        System.debug('new rental working : ');
        
        Rental__c newRent = New Rental__c();
        system.debug('newRent boş: ' + newRent);
        newRent.Name=rentalName;
        newRent.Phone__c = newPhone;
        newRent.Address__c=newAddress;
        
        insert newRent;
        system.debug('newRent id: '+ newRent.id);
    }   
}