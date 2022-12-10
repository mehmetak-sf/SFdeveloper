/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 06-13-2022
 * @last modified by  : Mehmet AK
**/
@isTest
public class TestCalc {

// SUM METHOD TEST ----------------------------------------------------------
@isTest
    public static void sumTest1(){
     	Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.sum(10, 20);
        System.assertEquals(30, testResult, 'TestResult is not : 30');} 

@isTest
    public static void sumTest2(){
     	Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.sum(-10, -2);
        System.assertEquals(-12, testResult, 'TestResult is not : -12');} 

@isTest
    public static void sumTest3(){
     	Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.sum(5.0, -5.0);
        System.assertEquals(0, testResult, 'TestResult is not : 0'); } 

@isTest
    public static void sumTest4(){ 
     	Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.sum(0, 0);
        System.assertEquals(0, testResult, 'TestResult is not : 0');} 

@isTest
    public static void sumTest5(){
     	Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.sum(-4.0, -3.0);
        System.assertEquals(-7.00, testResult, 'TestResult is not : -7.00'); }     

// SUB METHOD TEST ----------------------------------------------------------
    @isTest
    public static void subTest1(){
        Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.sub(3, 56);
         System.assertEquals(-53, testResult, 'TestResult is not : -53');}

@isTest
    public static void subTest2(){
        Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.sub(0, 0);
         System.assertEquals(0, testResult, 'TestResult is not : 0');}

@isTest
    public static void subTest3(){
        Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.sub(20, 10);
         System.assertEquals(10, testResult, 'TestResult is not : 10');}

@isTest
    public static void subTest4(){
        Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.sub(-0, +0);
         System.assertEquals(0, testResult, 'TestResult is not : 0');}

@isTest
    public static void subTest5(){
        Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.sub(900000, 10);
         System.assertEquals(899990, testResult, 'TestResult is not : 899990');}

// MUL METHOD TEST ----------------------------------------------------------
@isTest
     public static void mulTest1(){
        Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.mul(0, 0);
         System.assertEquals(0, testResult, 'TestResult is not : 0');}

@isTest
        public static void mulTest2(){
        Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.mul(-10, 0);
         System.assertEquals(0, testResult, 'TestResult is not : 0');}

@isTest
        public static void mulTest3(){
        Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.mul(-10, +10);
         System.assertEquals(-100, testResult, 'TestResult is not : -100');}

@isTest
        public static void mulTest4(){
        Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.mul(10000, 10000);
         System.assertEquals(100000000, testResult, 'TestResult is not : 100000000');}

@isTest
        public static void mulTest5(){
        Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.mul(-235, -235);
        System.assertEquals(55225, testResult, 'TestResult is not : 55225');}

 // DIV METHOD TEST ----------------------------------------------------------
 @isTest
        public static void divTest1(){
        Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.div(20, 10);
        System.assertEquals(2, testResult, 'TestResult is not : 2');}

@isTest
        public static void divTest2(){
        Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.div(20, 0);
        System.assertEquals(20, testResult, 'TestResult is not : 20');}

@isTest
        public static void divTest3(){
        Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.div(10, 20);
        System.assertEquals(0.5, testResult, 'TestResult is not : 0.5');}

@isTest
        public static void divTest4(){
        Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.div(10, 3);
        System.assertEquals(3.33, testResult, 'TestResult is not : 3.33');}

@isTest
        public static void divTest5(){
        Calc testCalc = New Calc();
        Decimal testResult;
        testResult=testCalc.div(-10, 3);
        System.assertEquals(-3.33, testResult, 'TestResult is not : -3.33');}

}