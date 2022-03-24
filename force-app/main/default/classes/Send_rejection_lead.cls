global class Send_rejection_lead {
    	@future(callout=true)
    public static void rejection(string n,string c, string s)
    {
            
  		access_token_restapi obj = new access_token_restapi();
        String BerearerID = obj.callingRestWS();
     	Http http = new Http();
     	HttpRequest request = new HttpRequest();
        request.setEndpoint('https://na132.salesforce.com/services/apexrest/Leadinsert');
    	request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json');
        request.setHeader('Authorization','Bearer '+BerearerID);
        JSONGenerator gen = JSON.createGenerator(true); 
        gen.writeStartObject();
        gen.writeStringField('name', n);
        gen.writeStringField('company', c);
     	gen.writeStringField('status', s);
        gen.writeEndObject(); 
        String jsonS = gen.getAsString();
       	System.debug('jsonMaterials'+jsonS);
       	request.setBody(jsonS);
       	system.debug('*** Request Body : '+request.getBody());
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
   	}
}