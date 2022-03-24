public class zone {
    
    public void getstate_code()
    {
     list<zones__c> zc  = [select id, state__c,state_name__c,zone__c from zones__c];
        //list <lead> lc = [select id, state_code__c, state from lead where state != null and id='00Q1I00000FKhXA'];
       list <lead> lc = [select id, state_code__c, state from lead where state != null];
        list<lead> updatelc = new List<lead>();
        map<string, string> zcmap= new map<string, string>();
        for (zones__c zcc:zc)
        {
            string zcupper= zcc.state_name__c.touppercase();
            zcmap.put(zcupper,zcc.state__c);
           system.debug(zcmap);
            
        }
        
        for (lead lcc :lc)
        {
           string lcupper =lcc.state.toUpperCase();
          // system.debug(lcupper);
           string state = zcmap.get(lcupper);
            lcc.state_code__c = state;
           // system.debug(lcc.state_code__c);
            updatelc.add(lcc);
        }
       update updatelc; 
    }
    
    
 

}