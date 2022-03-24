public class mycontactcontroller {
    
    @AuraEnabled

   public static List<Contact> getContacts(Id recordId) {
   List<contact> con = [Select Id,Name,FirstName, LastName, Email, Phone,LeadSource From Contact Where AccountId = :recordId];
   system.debug('contact'+con);
    return con; 
       
}

    

}