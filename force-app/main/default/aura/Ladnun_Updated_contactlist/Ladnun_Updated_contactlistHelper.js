({
loadContacts : function(cmp) {
// Load all contact data
 var recId = cmp.get("v.recordId");
var action = cmp.get("c.getContacts");
     action.setParams({
            "recordId" : recId 
        });
action.setCallback(this, function(response) {
var state = response.getState();
if (state == "SUCCESS") {
cmp.set("v.contacts", response.getReturnValue());
cmp.set("v.contactlist", response.getReturnValue());
this.updateTotal(cmp);
}
// Display toast message to indicate load status
var toastEvent = $A.get("e.force:showToast");
if (state === 'SUCCESS'){
toastEvent.setParams({
"title": "Success!",
"message": " Your contacts have been loaded successfully."
});
}
else {
toastEvent.setParams({
"title": "Error!",
"message": " Something has gone wrong."
});
}
toastEvent.fire();
});
$A.enqueueAction(action);
},

updateTotal: function(cmp) {
var contacts = cmp.get("v.contacts");
cmp.set("v.totalcontacts", contacts.length);
}
})