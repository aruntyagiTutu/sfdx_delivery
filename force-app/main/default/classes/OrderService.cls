public class OrderService {
    public static Decimal calculateDiscount(Order__c order) {
        Decimal discount = 0;
        if (order.Quantity__c > 100) {
            discount += 20;
        }
        return discount;
    }
}
