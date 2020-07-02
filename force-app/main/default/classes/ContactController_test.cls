@isTest
public class ContactController_test {
    static testMethod void validateSave() {
        Test.startTest();
        ContactController aa = new ContactController();
        aa.save();
        Test.stopTest();
    }
}