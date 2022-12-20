public class Dinner {
    public Integer numberOfJuice;
    public String mealName;

    public Dinner(){
        numberOfJuice = 2;
        mealName = 'Pizza';
    }
    public Dinner(String otherMeal, Integer newNumberOfJuice){
        numberOfJuice = newNumberOfJuice;
        mealName = otherMeal;
    }

     public Dinner(String otherMeal, Integer newNumberOfJuice, Integer afterDinnerNumberOfJuice){
        numberOfJuice = newNumberOfJuice + afterDinnerNumberOfJuice;
        mealName = otherMeal;
    }
    
    public void DinnerMethod() {
        System.debug('I ate '+  mealName + ' and drunk ' + numberOfJuice + ' glass of Juice' );
    }
}


/*
*******Apex Anonimous Codes *******

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