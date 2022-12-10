@isTest
public class HayvanlarTest {

@isTest
public static void consTest0(){
Hayvanlar Penguenler = New Hayvanlar();
String result = Penguenler.getsnfAdi();
System.assertEquals(null, result, 'Error');
}
@isTest
public static void consTest1(){
Hayvanlar Kediler = New Hayvanlar('Vasak');
String result = Kediler.getsnfAdi();
System.assertEquals('Vasak', result, 'Error');
}
@isTest
public static void addEvcilTest1(){
Hayvanlar Kediler = New Hayvanlar('Vasak');
Kediler.addEvcil('Van Kedisi');
Boolean result= Kediler.checkEvcil('Van Kedisi');
System.assertEquals(true, result, 'Error');
// System.assert(result, 'Error Constructor Method addEvcil');
}
@isTest
public static void addEvcilListTest1(){
Hayvanlar Kediler = New Hayvanlar('Test Cohort 1');
List<String> testList = New List<String>();
testList.add('test std 1');
testList.add('test std 2');
testList.add('test std 3');
testList.add('test std 4');
Boolean result= Kediler.addEvcil(testList);
System.assertEquals(true, result, 'Error Constructor Method addEvcil');
}
@isTest
public static void addVahsiTest1(){
Hayvanlar Kediler=New Hayvanlar();
Boolean result= Kediler.addVahsi('Vasak');
System.assert(result, 'AddVahsi method is failed.');
}
@isTest
public static void addVahsiListTest1(){
Hayvanlar Kediler=New Hayvanlar();
List<String> listVahsi = New List<String>();
listVahsi.add('Cita');
listVahsi.add('Kaplan');
listVahsi.add('Leopar');
Boolean result= Kediler.addVahsi(listVahsi);
System.assert(result, 'AddVahsi method is failed.');
}
@isTest
public static void addAWSListTest2(){
Hayvanlar Kediler=New Hayvanlar();
List<String> listVahsi = New List<String>();
listVahsi.add('Cita');
listVahsi.add('Kaplan');
listVahsi.add('Leopar');
Boolean result= Kediler.addVahsi(listVahsi);
System.assertNotEquals(False, result, 'addVahsi failed...');
}
@isTest
public static void allTest1(){
Hayvanlar S1=New Hayvanlar();
Hayvanlar S2=New Hayvanlar();
S1.addEvcil('test E');
S1.addEvcil('test E');
S1.addVahsi('test Vahsi');
S2.addEvcil('test E');
S2.addVahsi('test Vahsi');
S2.addVahsi('test Vahsi');
Integer result= Hayvanlar.all();
System.assertEquals(6, result, 'all method is failed.');
}
}