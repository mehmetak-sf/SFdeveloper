public class MyOutterClass {
    private String outterText;
    private Integer outterNumber;
    public void myOutterMethod(){
        System.debug('This is outter class ');
    }
    public class MyInnerClass1{
   	 	public void myInnerMethod1(){
        	System.debug('This is inner class1 ');
    	}        
    }
    public class MyInnerClass2{
   	 	public void myInnerMethod2(){
        	System.debug('This is inner class2 ');
    	}        
    }    
}
/*
MyOutterClass outterTest = new MyOutterClass();
outterTest.myOutterMethod();

MyOutterClass.MyInnerClass1 innerTest1 = new MyOutterClass.MyInnerClass1();
innerTest1.myInnerMethod1();
*/