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
		integer i3;
		integer i32;
		integer i33;
		integer i34;
		integer i35;
		integer i36;
		integer i37;
		integer i38;
		integer i39;
		integer i41;
		integer i42;
		return null;
    }
    
    
}