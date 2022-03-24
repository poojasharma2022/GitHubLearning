public class new_createcontact {
   
    @AuraEnabled
      public static void deletecontact(ID recordId)
    {
   
        list<contact> con = [select id,name,email,phone from contact where ID=:recordId ];
            System.debug('hello'+con);
        delete con;
      
    }
    @AuraEnabled
     public static list<contact> getallcontact(ID recordId)
    {
   
        list<contact> con = [select id,name,email,phone from contact where AccountID=:recordId ];
            System.debug('hello'+con);
        return con;
      
    }
    @AuraEnabled
    public static void getcontact(String Firstname,String Lastname, String title, Id recordId)
        
        {
            
        contact conn = new contact();
        conn.firstname= Firstname;
        conn.lastname = Lastname;
        conn.title = title;
        conn.accountiD = recordId;
        insert conn;
        }
   

}