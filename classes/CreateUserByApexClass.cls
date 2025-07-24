public class CreateUserByApexClass {

    Public static void createUser(){
    User newUser = new User();
Profile p = [SELECT Id,Name FROM Profile 
             where Name='System Administrator' LIMIT 01];
newUser.FirstName='Ashwini';
newUser.LastName='Kokare';
newUser.UserName='AshwiniK06@Tejo.Com';
newUser.Alias='Akoka';
newUser.Email='AshwiniKokare06@gmail.com';
newUser.TimeZoneSidKey='Asia/Kolkata';
newUser.LocaleSidKey ='en_US';
newUser.LanguageLocaleKey ='en_US';
newUser.EmailEncodingKey='UTF-8';
newUser.ProfileId=p.Id;
        
Account acc = new Account(Name = 'Test Account',Rating='Hot',Phone='9689562356');

insert newUser;
insert acc;
    }
}