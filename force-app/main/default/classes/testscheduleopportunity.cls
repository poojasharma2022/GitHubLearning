public class testscheduleopportunity {
    public  void updateamount()
    {
        opportunity  opp = [select id,amount from opportunity where id='0061I00000DV4sq'];
        opp.amount= opp.amount+1000;
        update opp;
    }

}