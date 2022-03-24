@RestResource(urlMapping='/fetchmycity/*')
global with sharing class cityRESTService 
{
    @Httppost
    global static void getMyCity(string f, string l, string ph ) 
    {
        
        pre_lead__c obj  =   new pre_lead__c();
       obj.Name = f+l;
        obj.First_name__c = f;
        obj.Last_Name__c = l;
        obj.Phone__c = ph;
                     
        insert obj;
        
    }
}