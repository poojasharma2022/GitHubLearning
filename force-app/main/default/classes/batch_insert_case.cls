global class batch_insert_case implements Database.batchable<sObject> {
    
    global Database.QueryLocator start(Database.BatchableContext BC){
		return Database.getQueryLocator('select id from case limit 1'); 
         }   
 global void execute(Database.BatchableContext info, List<Case> scope)
    {
        list<case> newcase = new list<case>();
        for(integer j=0;j<20;j++){
        for (integer i=0;i<8000;i++)
        {
       case cc = new case();
        cc.origin ='web';
        cc.Status= 'closed';
        cc.Contactid= '0031I00000hiWRFQA2';
        newcase.add(cc);
        }
            insert newcase;
        }
        
    }
    global void finish(Database.BatchableContext info){     
       } 
}