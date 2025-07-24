@RestResource(urlMapping='/Account/*')
Global class SalesforceIntegrationClass {
@HttpGet
    Global static List<Account> GetRecord(){
        return [SELECT Id,Name,Rating,Phone FROM Account];
    }
    
    @HttpPost
    Global static Account createAccount(string accName){
        Account acc =new Account();
        acc.Name= accName;
        
        insert acc;
        return acc;
    }
}