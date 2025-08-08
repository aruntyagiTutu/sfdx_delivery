trigger ProjectTrigger on Project__c (before insert) {
    for (Project__c proj : Trigger.new) {
        if (String.isBlank(proj.Region__c)) {
            proj.Region__c = 'North'; // Set default region
        }
    }
}
