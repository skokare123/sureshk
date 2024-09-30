public class getAccountData {
@AuraEnabled(cacheable=true)
public static List<Account> getAccounntwithwire(String AccountList){
    List<Account> accList =[SELECT Id,Name FROM Account where Name LIKE :'%'+AccountList+'%'];
    return accList;}

}