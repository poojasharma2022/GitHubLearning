public class access_token_restapi {
   	public string callingRestWS()
 		{
			Http h = new Http();
			HttpRequest request = new HttpRequest();
			request.setEndpoint('https://login.salesforce.com/services/oauth2/token?grant_type=password&client_id=3MVG9IHf89I1t8hqtlJS5FzcJcPhgFrGtiWGGlvvE_R0pblk1tPIk7AmrhtRlVvlv4EiBkSEO1xjUZGekINcZ&client_secret=9EB6E05F2A7CF6A3828FE1975634D8BE5FA8CCA159FA45719B1B8B36814D606F&username=pooja42@gmail.com&password=Greatdeal@42');
			request.setMethod('POST');
			 request.setHeader('Content-Type','application/x-www-form-urlencoded');
			HttpResponse response = h.send(request);
			System.debug('response '+response.getBody());
        		
     				Map<String,object> myresponse = (Map<String, Object>)Json.deserializeUntyped(response.getBody());
					string BerearID = (String)myresponse.get('access_token');
                    system.debug('hiiii'+BerearID);
        		
     		return BerearID;
                
 		}

}