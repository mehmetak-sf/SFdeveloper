public  class Dinner {
    public integer numberOfJuice;
    public String mealName;

    public class Meal {
        
        public void starterMethod(){
            System.debug('Fried Calamari');
            
        }
    }
       public Dinner(){
       numberOfJuice= 2;
        mealName = 'Pizza';
        
    }
    
     public Dinner(string otherMeal, Integer newNumberOfJuice){
       numberOfJuice= newNumberOfJuice;
        mealName = otherMeal;
        
    }
     public Dinner(string otherMeal, Integer newNumberOfJuice, Integer afterDinnerNumberOfJuice){
       numberOfJuice= newNumberOfJuice + afterDinnerNumberOfJuice ;
        mealName = otherMeal;
        
    }
    public void DinnerMethod(){

        System.debug('I ate '+ mealName + ' and drunk ' + numberOfJuice + ' glass of juice' );
    }
}

/*
 Dinner myDinner = new Dinner();
myDinner.DinnerMethod();

Dinner.Meal myMeal = new Dinner.Meal();
myMeal.starterMethod();


Dinner newDinner = new Dinner ();
newDinner.mealName = 'Ravioli';
newDinner.numberOfJuice = 1;
newDinner.DinnerMethod();

Dinner newDinner = new Dinner ();
newDinner.DinnerMethod();

Dinner newDinner = new Dinner ('Pasta ', 1);
newDinner.DinnerMethod();

Dinner newDinner = new Dinner ('Meatball ', 1, 1);
newDinner.DinnerMethod();
*/