@isTest
public class CalculatorrTest {
@isTest
    public static void additionTest(){
        Integer result=Calculatorr.addition(2,3);
        System.assertEquals(5, result, 'Unexpected result ');
    }
@isTest
    public static void multiplicationTest(){
         Integer result=Calculatorr.multiplication(2,3);
        System.assertEquals(6, result, 'Unexpected result');
    }
}