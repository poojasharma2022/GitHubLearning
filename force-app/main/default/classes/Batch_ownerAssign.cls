public class Batch_ownerAssign {
    public static void get(SObjectType sObjectType)
    {
      string query = 'select id,servicer_number__c , name from '+ sObjectType + ' where ownerid = :ownerid1';
        system.debug('---My Query--'+query);
        ID ownerid1 = [select id , name from user where name ='pooja sharma'].id;
        ID owneridcyn = [select id , name from user where name ='Cynthia Capobianco'].id;
       // list<sObjectType> acc = [select id,servicer_number__c , name from sObjectType where ownerid = :ownerid1  ];
       list<sObject> acc = Database.query(query);

        list<sObject> aclist = new list<sObject>();
        system.debug('acc.size'+acc.size());
        for(sObject ac : acc)
        {
            Integer accservicer = (Integer)ac.get('servicer_number__c');
            system.debug('acc.size'+acc.size());
            //if(ac.servicer_number__c!=null)
            if(accservicer!=null)
            {
                system.debug('ac.servicer_number__c'+accservicer);
               string s1=string.valueof(accservicer).right(2);
		   Integer servicer = Integer.valueof(s1);
        if(servicer>=00 && servicer <=50)
        {
          
            ID ownerID11 = (ID)ac.get('ownerId');
            ownerID11 =   owneridcyn;
            aclist.add(ac);
            system.debug('aclist.size'+aclist.size());
        }
            }  
        }
        update aclist;
        system.debug('***'+aclist);
    }

}