public class OrderService {
    public static Decimal calculateDiscount(Order__c order) {
        if (order.Quantity__c > 100) {
            return 20;
        }
        return 0;
    }
}
