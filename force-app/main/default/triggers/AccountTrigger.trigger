trigger AccountTrigger on Account (before insert) {
    for (Account acc : Trigger.new) {
        if (acc.Name == 'axe') {
            acc.addError('Account name "axe" is not allowed in this org.');
        }


        if (acc.Name == 'Dummy') {
            acc.addError('Account name "Dummy" is not allowed.');
        }
    }
}
