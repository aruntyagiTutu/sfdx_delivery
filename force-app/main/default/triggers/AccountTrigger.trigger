trigger AccountTrigger on Account (before insert) {
    for (Account acc : Trigger.new) {
        if (acc.Name == 'WI something') {
            acc.addError('Account name "WI" is not allowed in this org something something.');
        }


        if (acc.Name == 'Dummy') {
            acc.addError('Account name "Dummy" is not allowed.');
        }
    }
}
