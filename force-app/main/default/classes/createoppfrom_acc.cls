public  class createoppfrom_acc {

   public void createopp (List<account> accTrigger){
    
    system.debug('**********hiiiiiiii*********');
    
        
        List<Opportunity> oppList = new List<Opportunity>();
        
        
        for(integer i=0;i<2;i++){
        for(account currentacc:accTrigger){
        
           
           
           opportunity opp = new opportunity();
            
           
            opp.Name = currentacc.Name;
            opp.closeDate = date.today();
            opp.Stagename= 'Prospecting';
            opp.accountid = currentacc.id;
            
            
            
            //Add the con object to the conList 
            oppList.add(opp);
            //insert opp;
             

        }
        }
    //Persist the conList to the database
    Database.insert(oppList);
    }
}