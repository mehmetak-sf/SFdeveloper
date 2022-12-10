public class SomeClass {
     public static Boolean IsBlank(String someData) {
         if (someData == null) { 
         	return true;
         } else if (someData == '') {
          	return true; 
         } else {
          	return false;
         }
     }
}