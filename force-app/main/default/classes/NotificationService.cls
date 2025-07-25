public class NotificationService {
    public static void sendNotification(String userId, String message) {
        // Send Email
        String email = getUserEmail(userId);
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setToAddresses(new String[] { email });
        mail.setSubject('Notification');
        mail.setPlainTextBody(message);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }

    private static String getUserEmail(String userId) {
        User u = [SELECT Email FROM User WHERE Id = :userId LIMIT 1];
        return u.Email;
    }
}
