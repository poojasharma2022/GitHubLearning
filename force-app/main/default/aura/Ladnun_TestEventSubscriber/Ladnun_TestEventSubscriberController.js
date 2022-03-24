({
	handleevent : function(component, event, helper) {
        //alert("abc");
        var updatedExp = event.getParam("countryevent");
        var capital_Name;
        if(updatedExp == 'China'){
            capital_Name = 'Bejing';
           
           }
           else if(updatedExp == 'USA' ){
               capital_Name = 'New York';
            
        	}
          else if(updatedExp == 'India'){
            capital_Name = 'New Delhi';
                
                }
                else if(updatedExp =='UK' ){
                    capital_Name = 'London'
            
        }
        component.set("v.CountryName",updatedExp);
        component.set("v.capital",capital_Name);
		
	}
})