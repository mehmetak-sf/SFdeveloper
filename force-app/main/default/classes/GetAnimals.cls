/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 11-08-2022
 * @last modified by  : Mehmet AK
**/
public class GetAnimals {
    @invocableMethod
    public static void getAllAnimals(){
        
        Http http = new Http();

        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.

        if(response.getStatusCode() == 200) {
        // Deserialize the JSON string into collections of primitive data types.
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
        // Cast the values in the 'animals' key as a list
            List<Object> animals = (List<Object>) results.get('animals');
            System.debug('Received the following animals:');
      
        for(Object animal: animals) {
            System.debug(animal);
        }
    }
    }
}