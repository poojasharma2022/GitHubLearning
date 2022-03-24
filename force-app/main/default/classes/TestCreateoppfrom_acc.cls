@istest
public class TestCreateoppfrom_acc {
    @istest
    public static void testAccount(){
        list <Account> acclist = new list <Account>();
        for(integer i = 0;i<151;i++)
        {
        account acc = new account();
        acc.name='Pooja Test'+i;
        acc.stage__c = 'Applicant';
        insert acc;
            acclist.add(acc);
        }
       
      list<account> updateacc = [select id,stage__c from account where id =:acclist];
        //updateacc.stage__c = 'Customer';
       // update updateacc;
        system.debug('****accountsize'+updateacc.size());
        
        //List<opportunity> opp = [select id from opportunity where accountId =:updateacc.id];
      // system.debug('****'+opp.size());
        //system.assertEquals(2,opp.size());
        
    }

}