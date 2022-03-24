public class my_opp_lead {
 @AuraEnabled
    
    public static list<lead> get_lead(id recordid)
    {
        list<lead> lc= [select id, name, company,leadsource,Email from lead where opp__c=:recordid ];
        System.debug(lc.size());
       
        return lc;
    }
        

}