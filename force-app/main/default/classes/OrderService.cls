public class OrderService {
    public static Decimal calculateDiscount(Order__c order) {
        Decimal discount = 0;
        if (order.LoyalCustomer__c) {
            discount += 10;
        }
        return discount;
    }
}
