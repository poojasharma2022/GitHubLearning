public class case_create {
    
    @auraenabled
    public static void new_create(ID recordId, String Selected)
    {
        case cc= new case();
        cc.Status = 'New';
        cc.AccountId= recordId;
        cc.Avidia_Case_type__c	= Selected;
        cc.Origin = 'Avidia Case Request';
        insert cc;
       }
     @auraenabled
    public static void case_edit (ID recordId)
    {
        
      list<case> cc = [select id,avidia_case_request__c from case where AccountId = :recordId];
      for(case c:cc)
       {
           c.avidia_case_request__c = true;
           update c;
       
       }   
     }
     @auraenabled
    public static void case_del (ID recordId)
    {
        list<case> cc = [select id  from case where AccountId = :recordId];
         delete cc;
        list<account> acc= [select id,Avidia_Case__c from account where id=:recordId];
        for(account ac: acc)
        {
            ac.Avidia_Case__c=null;
            update ac;
        }
     }
     @auraenabled
    public static void case_update (ID recordId)
    {
       list<case> cc = [select id,ownerId from case where AccountId = :recordId];
       for(case c:cc)
       {
          c.ownerId = '00G1I000002HkSZ';
           update c;
           system.debug(c);
       }   
     }
}