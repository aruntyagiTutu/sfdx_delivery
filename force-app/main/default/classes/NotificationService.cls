public class NotificationService {
    public static void sendNotification(String userId, String message) {
        // Send Email
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setToAddresses(new String[] { getUserEmail(userId) });
        mail.setSubject('Notification');
        mail.setPlainTextBody(message);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }

    private static String getUserEmail(String userId) {
        User u = [SELECT Email FROM User WHERE Id = :userId LIMIT 1];
        return u.Email;
    }
}
