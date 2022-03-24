public class lead_dnc {

   
public void callingRestWS()
 {
Http h = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint('https://login.salesforce.com/services/oauth2/token?grant_type=password&client_id=3MVG9szVa2RxsqBY9KAzr6Z7EwUrGGUuL6dbohRM.6TsILewkr1NprS94uzBfPix98PtfyDLS1JswlQ3IQGcy&client_secret=01F967833D57EDFF1304A72C3AB48014B22C857037D1D8D1BCEBC3BABC5ED5B8 &username=amit.gs.sharma99@gmail.com&password=Greatdeal@1414');
request.setMethod('POST');
//request.setHeader('Content-Type', 'application/x-www-form-urlencoded');
     
     
HttpResponse response = h.send(request);
System.debug('response'+response.getBody());
      if (response.getStatusCode() == 200) {

     Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
     
      
    //string BerearID = (String)results.get('access_token');
     
     //system.debug('hiiii'+BerearID);
      }
 

 }
}