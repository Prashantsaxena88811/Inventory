@isTest
public class LeadConvertCls_test {
    static testMethod void validateLeadConvert() {
        
        Contact c = new Contact();
        c.LastName = 'Test LastName';
        c.Email = 'test@gmail.com';
        
        Test.startTest();
        LeadConvertCls.leadConvert();
        LeadConvertCls.createContactRecord(c);
        Test.stopTest();
    }
}