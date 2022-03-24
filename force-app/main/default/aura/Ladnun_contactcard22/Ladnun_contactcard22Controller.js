({
    
    doInit:function(component, event, helper) {
        //alert('I have ben initilized');
        var recId = component.get("v.recordId");
          
        var action = component.get('c.getContacts');
        action.setParams({
            "recordId" : recId 
        });
        
        action.setCallback(this, function(a){
            var state = a.getState(); // get the response state
            if(state == 'SUCCESS') {
                console.log(a.getReturnValue().length);
                component.set("v.contact",a.getReturnValue());
                component.set("v.totalcount",a.getReturnValue().length);
                //component.set('v.sObjList', a.getReturnValue());
                
            }
        });
        $A.enqueueAction(action);
        
        
    },
	
    gotorecord : function(component, event, helper) {
        
        alert("welcome to pooja world");
		
	},
    
    
})