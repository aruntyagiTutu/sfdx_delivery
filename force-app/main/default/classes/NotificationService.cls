public class NotificationService {
    public static void sendNotification(String userId, String message) {
        // Send SMS (assume external SMS service)
        String phoneNumber = getUserPhone(userId);
        SmsUtility.sendSms(phoneNumber, message);
    }

    private static String getUserPhone(String userId) {
        User u = [SELECT MobilePhone FROM User WHERE Id = :userId LIMIT 1];
        return u.MobilePhone;
    }
}
