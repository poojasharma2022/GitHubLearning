@istest
public class test_string_fora {
    @istest
    public static void print(){
        string_fora obj = new string_fora();
       list< String> mylist = obj.mymethod(3);
        //string mylist= obj.mymethod.mylist;
        system.assertEquals('fora',mylist[2]);
    }
    

}