public class TestSchedule {
    public void updatedescription(){
    lead l = [select id,description from lead where id='00Q1I00000FKxZj'];
    l.Description = l.Description + ' ' + String.valueof(system.now());
    update l;
        
        
        TestScheduleInterface m = new TestScheduleInterface();
		String sch = '0 18 17 * * ?';
		String jobID = system.schedule('TestMyJob', sch, m);
    }

}