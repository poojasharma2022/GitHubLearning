public class recursive {
      public static boolean run= true;
    public static boolean avoid_recursion()
      {
        
      if(run)
      {
         run=false;
          return true;  
      }
      else
          return run;
          
    }

}