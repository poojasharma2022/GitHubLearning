@istest
public class test_new_createcontact {
   @istest
    public static void  test_contact(){
        
        account acc =new account();
        acc.Name='poojatest';
      
        insert acc;
        
        account acc1 = [select id from account where Name='poojatest'];
        
        
        new_createcontact.getcontact('test class','sharma', 'mr.', 'acc1.id');
        
        contact con = [select id,AccountId from contact];
        system.assertEquals('acc1.id', con.AccountId);
        
        }

}