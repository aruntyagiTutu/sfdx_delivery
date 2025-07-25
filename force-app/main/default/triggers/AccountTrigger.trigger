trigger AccountTrigger on Account (before insert) {
    for (Account acc : Trigger.new) {
        if (acc.Phone != null) {
            acc.Phone = acc.Phone.replaceAll('[^0-9]', '');
        }
    }
}
