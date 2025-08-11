public class OrderService {
    public static Decimal calculateDiscount(Order__c order) {
        if (order.name == 'Salesforce Dreamforce') {
            return 50;
        }
        return 0;
        
    }
}
