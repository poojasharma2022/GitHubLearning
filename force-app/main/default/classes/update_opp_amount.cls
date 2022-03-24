public with sharing class update_opp_amount {
    public static void  update_opp()
    { 
        
  list<opportunity> opp= [select id,amount from opportunity];
list<opportunity> myopp=new list<opportunity>();
        
for(opportunity oppty:opp)
{
    oppty.amount=7000;
    myopp.add(oppty);
    system.debug(oppty.amount);
}
update myopp;  

}
}