/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 12-18-2022
 * @last modified by  : Mehmet AK
**/
//***Company (String companyName, String CEO, Integer numOfEmployees, Long revenue) class stores 
//***informations about the company and its customers.
//***Cutomers have String clientName, String website, String email, Long phone
public class CompanyV2 {
    Public String companyName;
    Public String CEO;
    Public Integer numOfEmployees;
    Public Long revenue;
    
    //Here we have empty list of customers.. List<>
    Public List<Client> customers=new List<Client>(); //Client is serving as a DATATYPE for the list
    
    //Here we build a method that adds customers to the customers list with user input...
    Public void addNewCustomer(String clntName, String clntwebsite, String clntemail, Long clntphone){
        Client myCustmr=new Client(clntName, clntwebsite, clntemail, clntphone); //Here, I am calling a constructor of Client class
        //Here, myCustmr has name, website, email, phone. Then we add this customer to the list of customers.
        customers.add(myCustmr);
    }
    
    //Below methods does not have anything related to the customers. We only get company info.
    public void display(String compName, String compCEO, Integer compEmployees, Long compRevenue){
        //this.companyName=compName;
        system.debug('Company name is ' +compName+ ' CEO is ' +compCEO+ ' # of employees is ' +compEmployees+ ' revenuew is ' +compRevenue);
        for(Integer i=0; i<customers.size(); i++){
            system.debug('Customer '+(i+1)+' name is '+customers[i].clientName+' website is '+customers[i].website+' email is '+customers[i].email+' phone is '+customers[i].phone);
        }
    }
    
    // Here we define an inner class for Clients....
    public class Client{ // This is an inner class...
        Public String clientName;
        Public String website;
        Public String email;
        Public Long phone;
        //Here we define a constructor for the inner class...
        public Client(String clntName, String clntwebsite, String clntemail, Long clntphone){
            clientName=clntName; //this.clientName=clntName;
            this.website=clntwebsite;
            this.email=clntemail;
            this.phone=clntphone;
        }
    }
}