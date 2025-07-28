trigger ContactTrigger on Contact (before insert) {
    for (Contact con : Trigger.new) {
        if (con.LastName == 'Test') {
            con.addError('Contact last name "Test" is not allowed in this org.');
        }
        con.LeadSource = 'Web';
    }
}
