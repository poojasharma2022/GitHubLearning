public class insert_case  {
   /* public void get_insert()
    {
        list<case> newcase = new list<case>();
        for (integer i=0;i<50000;i++)
        {
       case cc = new case();
        cc.origin ='phone';
        cc.Status= 'closed';
        cc.Contactid= '0031I00000hiWRFQA2';
        newcase.add(cc);
        }
        insert newcase;
    }*/

    public static void delete_record()
    {
        list<case> cc =[select id  from case where Contactid ='0031I00000hiWRFQA2' ];
                        list<case> cnew = new list<case>();
                    for(case c:cc)
                        {
                            cnew.add(c);
                        }
                        delete cnew;
    }
}