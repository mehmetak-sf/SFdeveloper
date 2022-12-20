public class Infant {

    //variables - Access modifiers: private, public, global
   	public String babyName;
    public Decimal babyWeight;
    public Date babyBirthdate;
    public String babyGender;
    public Boolean isBabyCute;

    //Methods and functions - Access modifiers: private, public, global
    //two different type of methods
    //Static methods - utility classes like Math
    //Non static methods - creating instance of class
   
    public  void displayData(){
        
        System.debug('My baby\'s name is ' + babyName );
        System.debug('My baby\'s weight is ' + babyWeight );
		System.debug('My baby\'s birthday is ' + babyBirthdate );
        System.debug('My baby  is a ' + babyGender );
        
        if(isBabyCute==true){
            System.debug('My baby is cute!'  );
            
        }else {
            System.debug('My baby is healthy!'  );
        }
        
    }
    
    
}