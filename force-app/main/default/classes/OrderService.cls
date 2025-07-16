public class OrderService {
    public static Decimal calculateDiscount(Order__c order) {
        if (order.LoyalCustomer__c) {
            return 10;
        }
        return 0;
    }
}
