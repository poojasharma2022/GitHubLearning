({
doInit : function(component, event, helper) {
// Retrieve contacts during component initialization
helper.loadContacts(component);
},
    
handleSelect : function(component, event, helper) {
	var contacts = component.get("v.contacts");
	var contactList = component.get("v.contactlist");
	//Get the selected option: "Referral", "Social Media", or "All"
	var selected = event.getSource().get("v.value");
    //alert(selected);
	var filter = [];
	var k = 0;
    //alert('**Length**'+contactList.length);
	for (var i=0; i<contactList.length; i++){
		var c = contactList[i];
        //alert(c.LeadSource);
		if (selected != "All"){
			if(c.LeadSource == selected) {
                //alert('Matched');
				filter[k] = c;
				k++;
            }
		}
		else {
			filter = contactList;
		}
	}
    
	//Set the filtered list of contacts based on the selected option
	component.set("v.contacts", filter);
	helper.updateTotal(component);
}
})