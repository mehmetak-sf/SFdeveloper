public class PersonalInformation {
    public string studentRollNo; // a variable for student number
    public PersonalInfo personalDetails; // This will be from container class and call all variables from other inner classes
    //outter class method. Here we created a method just to check if class functioning or not.
    public void printOutter(){
        system.debug('Personal Information ' + studentRollNo);
    }
    //inner class (for demonstration we created container class)
    public class PersonalInfo{
        public Name nameInfo;
        public Address addressInfo;
        //to demonstrate if class works or not
        public void printPersonalInfo(){
            system.debug(nameInfo);
            system.debug(addressInfo);
        }
    }
    //another inner class
    public class Name{
        public string firstName;
        public string lastName;
        public void printName(){
            system.debug(firstName + ' ' + lastName);
        }
    }
    //another inner class
    public class Address{
        public string addressLine1;
        public string addressLine2;
        public string addressLine3;
        public void printAddress(){
            system.debug(addressLine1 + ' ' + addressLine2 + ' '+ addressLine3);
        }
    }
}

/* // Code screen
PersonalInformation studentInfo = new PersonalInformation();
PersonalInformation.PersonalInfo personalInf = new PersonalInformation.PersonalInfo();
PersonalInformation.Name nameCls = new PersonalInformation.Name();
PersonalInformation.Address addressCls = new PersonalInformation.Address();
studentInfo.studentRollNo = 'CW-F2212';
studentInfo.personalDetails = personalInf;
nameCls.firstName= 'David';
nameCls.lastName = 'Orajisto';
addressCls.addressLine1 = '1719 Smithers Cres.';
addressCls.addressLine2 = 'Orleans';
addressCls.addressLine3 = ' Ottawa, ON';
personalInf.nameInfo = nameCls;
personalInf.addressInfo = addressCls;
system.debug(studentInfo);
*/