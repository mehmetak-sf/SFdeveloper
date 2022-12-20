//Cars have make, color, year, isClean-->User inputs these values...
//Has one method that returns Boolean(luxuryCar-->'Lexus', 'Tesla')-->display outcome
public class CarsV3 {
    Public String make;
    Public String color;
    Public Integer year;
    Public Boolean isClean;
    
    //Here we define empty list of cars
    Public List<CarsV3> myCars=new List<CarsV3>();
    
    //***Here we build a contructor to input values (parameters) for variables***
    Public CarsV3(String mk, String clr, Integer yr, Boolean isCln){
        make=mk;
        color=clr;
        year=yr;
        isClean=isCln;
    }
    
    //Here we define an empty constructor with no User input...
    Public CarsV3(){
        //NO CODE...
    }
    
    Public void addCars(String mk, String clr, Integer yr, Boolean isCln){
        //CarsV3 anyCar=new CarsV3();---> We define a car with no features...
        CarsV3 anyCar=new CarsV3(mk, clr, yr, isCln); //Here I defined one car with 4 features...
        myCars.add(anyCar);
    }
    
    Public void showAllFeatures(){
        for(Integer i=0; i<myCars.size(); i++){
            system.debug('Car '+(i+1)+' make is '+myCars[i].make+' color is '+myCars[i].color+' age is '+myCars[i].year+' years, and clea title: '+myCars[i].isClean);
        }
    }
    
    //A method for luxury car...
    public void luxuryCar(String makeOfCar){ //public Boolean luxuryCar(String makeOfCar){
        //Boolean isLuxury;
        this.make=makeOfCar;
        if(make=='Lexus'||make=='Tesla'){
            system.debug(make+' is a luxury car!');
            //isLuxury=True;
        } else{
            system.debug(make+' is not a luxury car!');
            //isLuxury=False;
        }
        //return isLuxury;
    }
    
    //***A method to display make and color of cars (features) in the list***
    public List<String> carFeatures(String makeOfCar, String colorOfCar){
        //display features of the car...
        //this.make=makeOfCar;
        //this.color=colorOfCar;
        //List<String> myCarFeatures=new List<String>{makeOfCar, colorOfCar};
        List<String> myCarFeatures=new List<String>();
        myCarFeatures.add(makeOfCar);
        myCarFeatures.add(colorOfCar);
        return myCarFeatures;
    }
}