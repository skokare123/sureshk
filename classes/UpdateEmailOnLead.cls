public class UpdateEmailOnLead {

    public void updateEmailByClass(){
List<Lead> ledList=[SELECT Id,FirstName,LastName,LeadSource,Email FROM Lead Where Email=Null];
        for(Lead led:ledList){
            led.Email='kirankumar123@gamil.com';
        }
        update ledList;
    }
}