public class AccountApexClassToFetchData {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountData(){
        List<Account> accList = [SELECT Id,Name,Phone,Rating,Website FROM Account LIMIT 25 ];
        return accList;
    }
    
    public static List<Account> getAccountDatabyName(string accName){
        List<Account> accList = [SELECT Id,Name,Phone,Rating FROM Account Where Name=:'accName'];
        return accList;
    }
}