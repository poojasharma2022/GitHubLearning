trigger region on Account (before insert,before update) {
List<account> accT = new List<account>();
for(account acc:trigger.new)
{
if(acc.billingstate!=null)
{
update_region_acc  obj = new update_region_acc (); // Region_triiger
obj.update_region(trigger.new);
}
/*
if(acc.RecordTypeID == '0121I000001Br1b'){
accT.add(acc);
}
update_region_acc  obj = new update_region_acc ();
obj.update_region(accT);
}
*/

}
}