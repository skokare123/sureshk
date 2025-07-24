public with sharing class SmartEscalationController {
    @AuraEnabled(cacheable=true)
    public static List<Case> getUserOpenCases() {
        return [
            SELECT Id, CaseNumber, Subject, Due_Date__c
            FROM Case
            WHERE OwnerId = :UserInfo.getUserId()
            AND Status != 'Closed'
            AND Due_Date__c != NULL
            ORDER BY Due_Date__c ASC
        ];
    }
}