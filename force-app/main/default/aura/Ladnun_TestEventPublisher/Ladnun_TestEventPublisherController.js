({
	onChange : function(component, event, helper) {
        
		var selectedCountry = component.find("selectID").get("v.value");
        //alert('***selectedCountry***'+selectedCountry);
        //var updateEvent = component.getEvent("countryeventATTR");
        var updateEvent = $A.get("e.c:Ladnun_TestApplicationEvent");

        //alert(updateEvent);
        updateEvent.setParams({ "countryevent": selectedCountry });
        //alert(updateEvent);
        updateEvent.fire();
        //alert("event fired");
        //
        var sentvalue = component.getEvent("countryeventATTR");
        //alert('***sentvalue***'+sentvalue);
		
	}
})