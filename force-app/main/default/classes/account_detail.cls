public class account_detail {
    
    private final Account account;

    public account_detail()
    {
        account= [select id, name, phone, stage__c from account WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
        
    }
 public Account getAccount() {

        return account;
    }

}