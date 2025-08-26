public class OrderService {
    public static Decimal calculateDiscount(Order__c order) {
        if (order.name == ' Salesforce DF 2026 ISV Partner') {
            return 90;
        }
        return 0;
        
    }
}
