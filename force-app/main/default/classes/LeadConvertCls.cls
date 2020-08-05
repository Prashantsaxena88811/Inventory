public class LeadConvertCls {
    
    public static boolean leadConvert(){
        try{
            Lead myLead = new Lead(LastName = 'Fry', Company='Fry And Sons');
            insert myLead;
            
            Database.LeadConvert lc = new database.LeadConvert();
            lc.setLeadId(myLead.id);
            
            LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true LIMIT 1];
            lc.setConvertedStatus(convertStatus.MasterLabel);
            
            Database.LeadConvertResult lcr = Database.convertLead(lc);
            return true;
        }catch(Exception e){
            System.debug('Exception on Line -->'+e.getLineNumber() + ' Error Msg-->'+e.getMessage());
            return false;
        }
        
    }
    
    @AuraEnabled
    public static Map<String, String> createContactRecord(Contact newContact) {
        // Forming a  string map to return response
        Map<String,String> resultMap = new Map<String,String>();
        // Adding try catch for exception handling
        try {
            // Inserting the Contact
            Account a = new Account();
            a.Name = 'Steve';
            insert a;
            insert newContact;
            // Setting the success status and message in resultMap
            resultMap.put('status', 'success');
            resultMap.put('message', 'Contact Inserted Successfully');        
        }
        catch(Exception e) {
            // Setting the error status and message in resultMap
            resultMap.put('status', 'error');
            resultMap.put('message',e.getMessage());
        }
        // Returning the result string map
        return resultMap;        
    }
    
}