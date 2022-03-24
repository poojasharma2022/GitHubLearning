@RestResource(urlMapping='/dnccheking/*')
global class dnc_webservice {
    @HttpGet
    global static boolean getDNC() 
    {
        system.debug('****getDNC called***');
        RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL
        String s = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        string phone = phoneformatting.formatphonenumber(s);


        system.debug('*****mobile_number****'+phone);
        Dnc_Data__c dc = [select id, name,Mobile_Number__c,Activated__c from Dnc_Data__c where Mobile_Number__c = :phone];
        system.debug('*****dncactivated****'+dc.Activated__c);
        boolean send_active = dc.Activated__c;
        return send_active ;
    }
}