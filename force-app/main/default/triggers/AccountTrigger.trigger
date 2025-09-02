trigger AccountTrigger on Account (before insert) {
    for (Account acc : Trigger.new) {
        if (acc.Name == 'conflict') {
            acc.addError('Account name "conflict" is not allowed in this org.');
        }


        if (acc.Name == 'Dummy') {
            acc.addError('Account name "Dummy" is not allowed.');
        }
    }
}
