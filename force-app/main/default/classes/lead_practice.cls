public class lead_practice {
    
    public  void lead_operations()
    {
        list<lead> lc= [select id,company from lead where company='poojaamit pvt ltd.' ];
        system.debug('size'+lc.size());
        for ( lead lcc: lc)
        {
            system.debug('********'+lcc.company);
         lcc.company='just salesforce.com'; 
    		update lcc;
        }
        
        /*for(integer i=1;i<=2;i++)
        {
            lead lcc= new lead();
            lcc.firstname ='pooja';
             lcc.lastname ='pooja';
            lcc.company='poojaamit pvt ltd.';
            lcc.status='working -contacted';
            lc.add(lcc);
            
            
        }*/
       // insert lc;
        
        
        
    }

}