@istest
public class test_insert_case 
{
   
    static testmethod void getinsert()
    { 
        test.startTest();
            insert_case a = new insert_case();
            a.get_insert();
        test.stopTest();
        
           	List<case> all_inserted_cases = [select id from case];
         	Integer casecount = all_inserted_cases.size();
        
        	system.assertEquals(50000,casecount);
        
        
        
    }
    
}