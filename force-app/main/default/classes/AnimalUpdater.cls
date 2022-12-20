/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 11-08-2022
 * @last modified by  : Mehmet AK
**/
public class AnimalUpdater {
    @InvocableMethod
    public static void sendAnimalName(){
    
        Http http = new Http();

        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setBody('{"name":"super cat"}');

        
        HttpResponse response = new HttpResponse();
        response = http.send(request);

        if (response.getStatusCode() != 201) {
            System.debug('Request was not successful!' + 'Error Code: ' + response.getStatusCode());
        }else {
            System.debug(response.getBody());
        }
    }
}