public class OrderService {
    public static Decimal calculateDiscount(Order__c order) {
        if (order.name == ' Salesforce ISV Partner') {
            return 75;
        }
        return 0;
        
    }
}
