public class CustomerOperationClass {
   static final Double regularCustomerDiscount = 0.1;
   static Double finalPrice =5;
   static integer price =100;
   
   static void provideDiscount () {
      //calculate the discount
      finalPrice = price - price * regularCustomerDiscount;
      
   }
}