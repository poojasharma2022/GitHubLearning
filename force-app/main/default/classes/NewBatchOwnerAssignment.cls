global class NewBatchOwnerAssignment implements Database.Batchable<sObject>{

  // global final String Query;
   global final String Entity;
   //global final String Field;
   //global final String Value;

   global NewBatchOwnerAssignment(String e){
             Entity=e;
   }

   global Database.QueryLocator start(Database.BatchableContext BC){
        ID ownerid1 = [select id , name from user where name ='pooja sharma'].id;
       //asset = Database.query('SELECT ID, Price, Asset_MRR__c FROM Asset WHERE id =\'' + asset.id + '\' limit 1');
       String query = 'select id,servicer_number__c,name,ownerId from '+ Entity + ' where ownerid =\'' + ownerid1 + '\'';
       system.debug('---My quesry---'+query);
      return Database.getQueryLocator(query);
   }

   global void execute(Database.BatchableContext BC,List<sObject> scope){
       List<sObject> update_sObject = new List<sObject>();
       ID owneridcyn = [select id , name from user where name ='Cynthia Capobianco'].id;
      for(Sobject s : scope) {
         Decimal accservicer = (Decimal)s.get('servicer_number__c');
         if(accservicer!=null){
                system.debug('ac.servicer_number__c'+accservicer);
                 string s1=string.valueof(accservicer).right(2);
		   		Integer servicer = Integer.valueof(s1);
        		if(servicer>=00 && servicer <=50){
          			s.put('ownerId',owneridcyn);
            		update_sObject.add(s);
            		system.debug('aclist.size'+update_sObject);
        		}
                
            }  
      }
       update update_sObject;
      
   }

   global void finish(Database.BatchableContext BC){

   }

}