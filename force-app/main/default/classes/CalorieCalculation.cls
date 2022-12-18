/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 12-18-2022
 * @last modified by  : Mehmet AK
**/
public with sharing class CalorieCalculation {
    public static Integer totalCalorie (Integer countSlices, Integer canOfSoftDrinks) {
Integer totalCalorieCalculation = (countSlices * 285)+(canOfSoftDrinks*150);
return totalCalorieCalculation;

    }
}
//
