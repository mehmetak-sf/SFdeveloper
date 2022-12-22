/ Try Catch Finally
Try {
    //the code that needs to be checked for error
} Catch (){
    //the code that will be run when above code hits any error
} Finally { //optional
    //the code will always run
}

Account myAccount  = new Account();
myAccount.name = 'David\'s Class';
insert myAccount;

Try{
Account myAccount  = new Account();
insert myAccount; // we wait error.

}Catch ( Exception e){
system.debug('Error occured: '+e.getMessage() );
}
