@istest
public  class test_dnc_webservice {
    public static testmethod void  dnc()
    {
    	// Set up a test request
		RestRequest request = new RestRequest();
			// Set request properties
			string phone = '2019361287';
		request.requestUri ='https://poojamit14-dev-ed.my.salesforce.com/services/apexrest/dnccheking/'+phone;
		request.httpMethod = 'GET';
		
		RestContext.request = request;
        
        Dnc_Data__c dc = new  Dnc_Data__c();
        dc.Mobile_Number__c ='(201) 936-1287';
        dc.Activated__c = true;
        insert dc;
        
        boolean active = dnc_webservice.getDNC();
        //System.debug('******return active value '+active);
        system.assert( active!=null);
        system.assertEquals(true, active, 'this is working');
    
 }
}