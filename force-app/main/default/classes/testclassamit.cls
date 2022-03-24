@isTest
public class testclassamit {
    
    static testmethod void dotest(){  
 			RestRequest req = new RestRequest();
  			RestResponse res = new RestResponse();
			req.requestURI = '/services/apexrest/Leadinsert';  //Request URL
			req.httpMethod = 'POST';//HTTP Request Type
			RestContext.request = req;
			RestContext.response= res;

			//MyRestResource s=new MyRestResource ();
 			//Map <String,String> stas=s.dopost('Test','Test','1232','dummymail@test.com');

			//system.assert(stas.get('isSuccess')==true);//Similarly assert rest as well

}
}