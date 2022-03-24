({
	onChange : function(component, event, helper) 
    	{
        	component.set("v.flag","false");
        	component.set("v.flagnew","true");
         	var selectedValue = component.find("selectID").get("v.value");
       		component.set("v.selectedType",selectedValue );
            $A.get('e.force:refreshView').fire();
         },
    onclick: function(component, event, helper) 
    	{
             component.set("v.flagnew","false");
             component.set("v.flagnewone","true");
             var selectedValue = component.get("v.selectedType");
             var recid= component.get("v.recordId");
             var action= component.get("c.new_create");
             action.setParams({ "recordId":recid,"Selected":selectedValue});
            $A.get('e.force:refreshView').fire();
             $A.enqueueAction(action);
        },
    
    backclick:function(component, event, helper) {
          component.set("v.flag","true");
          component.set("v.flagnew","false");
          component.set("v.flagnewone","false");
       },
     update:function(component, event, helper) {
         component.set("v.flagnewone","false");
          component.set("v.flagsecond","true");
          var recid= component.get("v.recordId");
          var action= component.get("c.case_edit");
          action.setParams({ "recordId":recid });
         $A.get('e.force:refreshView').fire();
          $A.enqueueAction(action);
        },
     cancelrequest:function(component, event, helper) {
          component.set("v.flag","true");
          component.set("v.flagnew","false");
          component.set("v.flagnewone","false");
          var recid= component.get("v.recordId");
          var action= component.get("c.case_del");
          action.setParams({ "recordId":recid });
       
          $A.enqueueAction(action);
          $A.get('e.force:refreshView').fire();
      },
    submitrequest:function(component, event, helper) {
         component.set("v.flag","true");
         component.set("v.flagnew","false");
         component.set("v.flagnewone","false");
         component.set("v.flagsecond","false");
         var recid= component.get("v.recordId");
         var action= component.get("c.case_update");
         action.setParams({ "recordId":recid });
         action.setCallback(this, function(response){
         var state = response.getState();
         var toastEvent = $A.get("e.force:showToast");
         if (state === 'SUCCESS'){
             toastEvent.setParams({ "type":"Sccess","title": "Success!","message": " update sccessfully."});
                }
				else{
                   toastEvent.setParams({"type":"error", "title": "Error!","message": " Something has gone wrong."});
                }
            	   

				toastEvent.fire();
                 
               });
         $A.enqueueAction(action);
        $A.get('e.force:refreshView').fire();
       
     }
})