public class OrderService {
    public static Decimal calculateDiscount(Order__c order) {
        if (order.name == ' Salesforce Partner') {
            return 25;
        }
        return 0;
        
    }
}
