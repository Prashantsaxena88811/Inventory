public with sharing class ContactController {
    
    public Contact c { get; set; }
    
    public List<Contact> samepage { get; set; }
    
    public ContactController(){
        c=new Contact();
        c.LastName='Jhon';
    }
    
    public PageReference save() {
        insert c;  
        samepage= [select id,FirstName,LastName,Email,Birthdate from Contact where id=:c.id];
        c = new Contact();
		integer ii;
        return null;
    }
    
    
}