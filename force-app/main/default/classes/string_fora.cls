public class string_fora {
    public static void mymethod(){
    
    list<string> mylist = new list<string>();  
      
        for(integer i=1;i<=50;i++) {
    		//string mystring = string.valueOf(i);
       		//integer j= integer.valueof(mystring);
        	integer remainder = math.mod(i,3);
            integer remain = math.mod(i,5);
         	if(remainder == 0){
              
                mylist.add('fora');
        		
         	}
            else
            
                if(remain == 0){
              
                mylist.add('financial');
        		
         	
                
            }
             else
            
                if(remainder == 0&&remain == 0){
              
                mylist.add('fora financial');
        		
         	
                
            }
            
            else{
         	
                string mystr = string.valueOf(i);
                mylist.add(mystr);
            }
            
			
	}
     
    System.debug(mylist);  
        //return mylist;
}
}