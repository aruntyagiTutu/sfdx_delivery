public class OrderService {
    public static Decimal applyDiscount(String customerType, Decimal orderAmount) {
        Decimal discount = DiscountCalculator.calculateDiscount(customerType, orderAmount);
        return orderAmount - discount;
    }
}
