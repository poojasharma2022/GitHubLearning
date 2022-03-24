trigger Winning on Opportunity (before update) {
  for (Opportunity opp : Trigger.new) {
    // Access the "old" record by its ID in Trigger.oldMap
    Opportunity oldOpp = Trigger.oldMap.get(opp.Id);//pooja

    // Trigger.new records are conveniently the "new" versions!
    //Boolean oldOppIsWon = oldOpp.StageName.equals('Closed Won');//pooja sharma
    //Boolean newOppIsWon = opp.StageName.equals('Closed Won');
    
    // Check that the field was changed to the correct value
    if (oldOpp.StageName=='Closed Won') {
     system.debug('**************************hi*********');
    }
  }
}