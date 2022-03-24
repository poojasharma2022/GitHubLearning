public class rejlead_pooja42 {
    @future(callout=true)
    public static void  rej(string n,string c, string s,string mp,string e)
    {
            
  		access_token_restapi obj = new access_token_restapi();
        String BerearerID = obj.callingRestWS();
     	Http http = new Http();
     	HttpRequest request = new HttpRequest();
        request.setEndpoint('https://na132.salesforce.com/services/apexrest/Leadinsert');
    	request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json');
        request.setHeader('Authorization','Bearer '+BerearerID);
        Map<String, String> jinp = new Map<String, String>();
        jinp.put('name',n);
        jinp.put('company',c);
        jinp.put('status',s);
        jinp.put('mobile',mp);
        jinp.put('email',e);
        String jsonInput = JSON.serialize(jinp);
        system.debug('JSON String: ' + jsonInput);
         request.setBody(jsonInput);
     
        HttpResponse response = http.send(request);
		// Parse the JSON response
		if (response.getStatusCode() != 200)
        {
    	System.debug('The status code returned was not expected: ' +
        	response.getStatusCode() + ' ' + response.getStatus());
		} 
        else 
        {
    	System.debug(response.getBody());
		}
        // return response;
   	}
   

}