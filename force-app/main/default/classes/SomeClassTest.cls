@isTest
public class SomeClassTest {
    @isTest
    public static void SomeClassIsBlankTest(){
        String testData;
        System.assertEquals(true, SomeClass.IsBlank(testData));
    
        testData = '';
        System.assertEquals(true, SomeClass.IsBlank(testData));
   
        testData = 'abc';
        System.assertEquals(false, SomeClass.IsBlank(testData));
    }  
}