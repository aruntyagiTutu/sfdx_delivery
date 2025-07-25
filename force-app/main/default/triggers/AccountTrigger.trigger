trigger AccountTrigger on Account (before insert) {
    for (Account acc : Trigger.new) {
        if (acc.Name == 'Test') {
            acc.addError('Account name "Test" is not allowed.');
        }
    }
}
