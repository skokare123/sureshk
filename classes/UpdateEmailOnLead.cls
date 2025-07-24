public class UpdateEmailOnLead {

    public void updateEmailByClass(){
List<Lead> ledList=[SELECT Id,FirstName,LastName,LeadSource,Email FROM Lead Where Email=Null];
        for(Lead led:ledList){
            led.Email='sureshkokare71@gamil.com';
        }
        update ledList;
    }
}
