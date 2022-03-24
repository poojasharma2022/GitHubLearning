public class lead_expiry {
    
    public void expiry()
    {
        list <lead_expiry__c> lex= [select id,valid_till_months__c, State_code__c from lead_expiry__c];
        list<lead> lc= [select state_code__c,expire_month__c,Expiry_Date__c,createddate  from lead where state_code__c!=null];
        list<lead> lnew= new list<lead>();
       
       
        map<string,string> lmap= new map<string,string>();
        for(lead_expiry__C lx:lex)
        {
            lmap.put(lx.State_code__c,lx.valid_till_months__c);
        }
        
        for (lead lcc:lc)
        {
           string months= lmap.get(lcc.state_code__c);
            integer ex_month = integer.valueof(months);
            lcc.expire_month__c= months;
           // integer month = lcc.createddate.month();
           // system.debug(month);
            //lcc.Expiry_Date__c = ex_month+month;
           
           //lcc.Expiry_Date__c =null;
           lcc.Expiry_Date__c = lcc.createddate.addMonths(ex_month);
             system.debug(lcc.createddate );
            system.debug(months);
            system.debug(lcc.Expiry_Date__c );
            
            lnew.add(lcc);
        }
       update lnew; 
    }

}