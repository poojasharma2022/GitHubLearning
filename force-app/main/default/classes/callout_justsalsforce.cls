public class callout_justsalsforce {
     @future(callout=true)
    public static void rej()
    {
        Http http = new Http();
     	HttpRequest request = new HttpRequest();
        request.setEndpoint('https://pzcozn78ng.execute-api.us-east-1.amazonaws.com/production/-fifthapi');
    	request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json');
      
        Map<String, String> jinp = new Map<String, String>();
        jinp.put('name','pooja14');
        jinp.put('email','test@gmail.com');
        jinp.put('feedback','callout testing');
        jinp.put('result','pass');
        jinp.put('exam_category','admintest');
        jinp.put('exam_set','set1');
        String jsonInput = JSON.serialize(jinp);
        system.debug('JSON String: ' + jsonInput);
         request.setBody(jsonInput);
     
        HttpResponse response = http.send(request);
		
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