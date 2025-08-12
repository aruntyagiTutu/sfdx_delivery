trigger ProjectTrigger on DeliveryTracking__c (before insert) {
    for (DeliveryTracking__c proj : Trigger.new) {
        if (String.isBlank(proj.Arun__c)) {
            proj.Arun__c = 'North'; // Set default region
        }
    }
}
