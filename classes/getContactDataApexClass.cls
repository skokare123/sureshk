public class getContactDataApexClass {
	@AuraEnabled
	public static List<Contact> getContactData(String conFirstName){
		List<Contact> conList=[SELECT Id,FirstName,LastName,Phone,Email FROM Contact WHERE FirstName LIKE:'%'+conFirstName+'%'];
		return conList;
	}
}