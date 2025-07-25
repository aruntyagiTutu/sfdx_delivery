trigger AccountTrigger on Account (before insert) {
    for (Account acc : Trigger.new) {
        if (acc.Name == 'Test') {
            acc.addError('Account name "Test" is not allowed.');
        }
        if (acc.Phone != null) {
            acc.Phone = acc.Phone.replaceAll('[^0-9]', '');
        }
    }
}
