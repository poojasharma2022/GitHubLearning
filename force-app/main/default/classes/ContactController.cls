public with sharing class ContactController {
    
    public static list<contact>getContacts(){
        list <contact> contacts = [Select id, name,mailingStreet, Phone,Email,Leadsource from contact];
        return contacts;
        
    }
}