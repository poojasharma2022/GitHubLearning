global class TestScheduleInterface implements Schedulable {
    global void execute(SchedulableContext SC) {
        TestSchedule t=new TestSchedule();
        t.updatedescription();

    }

}