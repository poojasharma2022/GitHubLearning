public class create_record {
    public void create(list<opportunity> optrigger)
        {
         list<underwriting__c> mylist = new list<underwriting__c>();  
            for(opportunity oppty:optrigger)
            {
                system.debug('******oppty.recordtype.name**'+oppty.recordtypeId);
                string oppRecTypeName = Schema.SObjectType.opportunity.getRecordTypeInfosById().get(oppty.recordtypeId).getName();
              
                ID recordTypeid = Schema.SObjectType.underwriting__c.getRecordTypeInfosByName().get(oppRecTypeName).getRecordTypeId();
              underwriting__c c=new underwriting__c();
                c.name=oppty.name;
                c.recordtypeid=recordTypeid;
                c.Opportunity__c=oppty.id;
                mylist.add(c);
            }
            
        insert mylist;
    }

}