trigger zone on Lead (after insert,after update) {
	for(lead lc : trigger.new)
        {

       if(run_recursive.run==true)
            {
            run_recursive.run=false;
                /*if (lc.state!= null)
                  {
                    zone obj = new zone();
                    obj.getstate_code();
                     lead_expiry lx = new lead_expiry();
                         lx.expiry();
                     }*/
               
                 if(lc.Reject__c==true)
            {
                
               	rejlead_pooja42.rej(lc.lastname,lc.company,lc.Status,lc.MobilePhone,lc.Email);
            }
				} 
           

          }
        
      
    
 }