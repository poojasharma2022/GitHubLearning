public class update_region_acc {
    
    public void update_region(list<account> acctrigger)
    {
        ID recordTypeid = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('company relationship').getRecordTypeId();

        
        List<account> accT = new List<Account>();
        
        for(account a:acctrigger){
            if(a.RecordTypeID == recordTypeid){
                accT.add(a);
            }
        }
        
        
        list<zones__c> zc= [select id, state__c,zone__c from zones__c];
        map<string, decimal> pmap= new map<string, decimal>();
        for(zones__c zcc:zc)
        {
            pmap.put(zcc.state__c,zcc.zone__c);
        }
        for (account acc:acctrigger)
        {
            decimal region_number= pmap.get(acc.billingstate);
            acc.region_code__c=region_number;
             
        }
        
    }

}