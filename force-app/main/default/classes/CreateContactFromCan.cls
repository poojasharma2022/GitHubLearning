public with sharing class CreateContactFromCan {
    //Declare a method that does not return anything and takes one input parameter of a Candidate list object called candsFromTrigger
    public void createContact (List<Candidates__c> candsFromTrigger){
    
        //Instantiate a Contact list object from the List class called conList 
        List<Contact> conList = new List<Contact>();
        
        //Declare a For list loop to loop through the input parameter list candsFromTrigger with an iterationvariable called currentCandidate
        
        for(Candidates__c currentCandidates:candsFromTrigger){
        
            //Instantiate an object called con from the sObject class contact
            Contact con = new Contact();
            
            //Set the attribute FirstName of the con object to the values of the First_Name__c attribute of the currentCandidate object
            con.FirstName = currentCandidates.First_Name__c;
            
            //Set the attribute Lastname of the con object to the values of the Last_Name__c attribute of the currentCandidate object
            con.LastName = currentCandidates.Last_Name__c;
            
            //Set the attribute Email of the con object to the values of the Email__c attribute of the currentCandidate object
            con.Email = currentCandidates.Email__c;
            
            //Add the con object to the conList 
            conList.add(con);
        }
        
    //Persist the conList to the database
    Database.insert(conList);
    }
}