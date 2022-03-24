({
    goToRecord : function(component, event, helper)
    {
        var recid= component.get("v.recordId");
        //alert(recid);
         var action= component.get("c.getallcontact");
        action.setParams({ "recordId":recid});
        
        action.setCallback(this, function(response) 
                           {
                               component.set("v.contact", response.getReturnValue());
                           });
        
        $A.enqueueAction(action);
        
    
     },
    
    show : function(component, event, helper){
        component.set("v.flag","True");
    },
    
    hide : function(component, event, helper){
        component.set("v.flag","false");
    },
    
    
    
     deleterecord : function(component, event, helper)
    {
        var conid= component.get("v.contact.Id");
       alert(conid);
         var action= component.get("c.deletecontact");
        action.setParams({ "recordId":recid});
        
      /*  action.setCallback(this, function(response) 
                           {
                               component.set("v.contact", response.getReturnValue());
                           });*/
        
        $A.enqueueAction(action);
        
    
     },
    handleClick  : function(component, event, helper)
    {
        
          var recid= component.get("v.recordId");
         console.log(recid);
          var FirstName= component.get("v.simpleNewContact.FirstName");
          var LastName= component.get("v.simpleNewContact.LastName");
          var Title= component.get("v.simpleNewContact.Title");
          var action= component.get("c.getcontact");
      	  action.setParams({"Firstname":FirstName,"Lastname":LastName,"title":Title,"recordId" :recid});
          action.setCallback(this, function(response) 
             {
                var state = response.getState();
                var toastEvent = $A.get("e.force:showToast");
				if (state === 'SUCCESS')
                {
                     
			     toastEvent.setParams({ "type":"info","title": "Success!","message": " Your contacts have been loaded successfully."});
                 //$A.get('e.force:refreshView').fire();
                }
				else {
                   
                    toastEvent.setParams({"type":"error", "duration": "500000ms","title": "Error!","message": " Something has gone wrong."});
                     }
		toastEvent.fire();
                 
               });
         $A.enqueueAction(action);
        
    }
    
  
    
      
})