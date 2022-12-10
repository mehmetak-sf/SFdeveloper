public class Address {
	private String streetNumber;
    private String streetName;
    private String unitNumber;
    private String city;
    private String state;
    
    // assignment # 9    
    public void setStreetName(String sName){
        // complete this method so it can be used to set the streetName
        // below is the blacklist of the street names, make sure street name can not include any of these words otherwise set as 'wrongValue'
        // blacklist: hell, noep, yeah
        // ***hint: sName.contains()
        if(sName.contains('hell') || sName.contains('noep') || sName.contains('yeah') ){StreetName='Wrong Value !';}
        else {StreetName=sName;}
    }  
    }