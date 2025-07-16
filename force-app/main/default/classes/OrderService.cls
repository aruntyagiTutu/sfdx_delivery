public class OrderService {
    public static Decimal calculateDiscount(Order__c order) {
        if (Date.today().month() == 12) {
            return 15;
        }
        return 0;
    }
}
