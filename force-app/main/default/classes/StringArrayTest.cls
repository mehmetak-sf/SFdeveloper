public class StringArrayTest {
    public static list <string> generateStringArray(Integer n){
        list<string> myArray= new list<string>();
        for(Integer i=0;i<n;i++) {
        		
            myArray.add ('Test '+i);
            System.debug(myArray[i]);
    	}
        return myArray;
	}
}