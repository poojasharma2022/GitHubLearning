public class EmailManager {
    public static void sendmail(string[] address, string[] subject, string[] message){
        Messaging.SingleEmailMessage[] emails = new Messaging.SingleEmailMessage[]{};
        Integer totaladd = address.size();
        system.debug('***********'+totaladd);
        for(Integer i=0;i<totaladd;i++){
            Messaging.SingleEmailMessage email= new Messaging.SingleEmailMessage();
            system.debug('***********add***'+address[i]);
            email.settoaddresses(new list<string> {address[i]});
        email.setSubject( subject[i]);
            email.setplaintextbody(message[i]);
        
        emails.add(email);
        }
        Messaging.sendEmail(emails);
    } 

}