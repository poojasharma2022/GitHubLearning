({
	doInit : function(component, event, helper) {
        var recid= component.get("v.recordId");
        alert(recid);
        var action= component.get("c.get_lead");
      		action.setParams({
                "recordid" :recid
        	});
			action.setCallback(this,function(response){
  				var state = response.getState();
      				if(state=="SUCCESS")
          				{
          				component.set("v.lead",response.getReturnValue());
      					}
      				});
         $A.enqueueAction(action);
      }
})