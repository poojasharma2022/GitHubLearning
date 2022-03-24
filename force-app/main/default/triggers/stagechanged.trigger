trigger stagechanged on account (before insert) {
  for (account acc : Trigger.new) {
    // Access the "old" record by its ID in Trigger.oldMap
    //account ac = Trigger.oldMap.get(acc.Id);

    
    if (acc.Billingcity=='usa') {//pooja
    //if (acc.Priority__c=='Rush') {
    
    acc.Rating='Hot';
    //acc.stage__c='Applicant';
     system.debug('**************************histage*********');
    }
  }
}