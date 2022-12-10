@isTest
public class ClaruswayTest {
@isTest
public static void constructor0(){
Clarusway testCohort0 = New Clarusway();
String result = testCohort0.getNickName();
System.assertEquals(null, result, 'Ops olmadı');
}
@isTest
public static void constructor1(){
Clarusway testCohort1 = New Clarusway('Fatih');
String result = testCohort1.getNickName();
System.assertEquals('Fatih', result, 'Ops olmadı');
}    
@isTest
public static void addSFTest1(){
Clarusway testSF1 = New Clarusway();
testSF1.addSF('Test Name');
Boolean result= testSF1.checkSF('Test Name');
System.assertEquals(true, result, 'Ops olmadı');

}
@isTest
public static void addSFListTest1(){
Clarusway testCohort1 = New Clarusway();
List<String> testList = New List<String>();
testList.add('test std 1');
testList.add('test std 2');
testList.add('test std 3');
testList.add('test std 4');
Boolean result= testCohort1.addSF(testList);
System.assertEquals(true, result, 'Error Constructor Method addSF');
}
 @isTest
public static void addAWSTest1(){
Clarusway testCohort1=New Clarusway();
Boolean result= testCohort1.addAWS('AWS Test Student');
System.assert(result, 'AddAWS method is failed.');
}
@isTest
public static void addAWSListTest1(){
Clarusway testCohort1=New Clarusway();
List<String> listAWS = New List<String>();
listAWS.add('Test AWS 1');
listAWS.add('Test AWS 2');
listAWS.add('Test AWS 3');
Boolean result= testCohort1.addAWS(listAWS);
System.assert(result, 'AddAWS method is failed.');
}
@isTest
public static void addAWSListTest2(){
Clarusway testCohort1=New Clarusway();
List<String> listAWS = New List<String>();
listAWS.add('Test AWS 1');
listAWS.add('Test AWS 2');
listAWS.add('Test AWS 3');
Boolean result= testCohort1.addAWS(listAWS);
System.assertNotEquals(False, result, 'addAWS failed...');
}
@isTest
public static void allTest1(){
Clarusway c1=New Clarusway();
Clarusway c2=New Clarusway();
c1.addSF('test Salesforce');
c1.addSF('test Salesforce');
c1.addAWS('test AWS');
c2.addSF('test Salesforce');
c2.addAWS('test AWS');
c2.addAWS('test AWS');
Integer result= Clarusway.all();
System.assertEquals(6, result, 'all method is failed.');
}
}