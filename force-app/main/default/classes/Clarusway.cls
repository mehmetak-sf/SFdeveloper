/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 12-13-2022
 * @last modified by  : Mehmet AK
**/
public class Clarusway { // Wrapper Class
// class variables = properties-------------------------
private Integer sf=0;
private Integer aws=0;
private static Integer all=0;
private List<String> sfStudent=new List<String>();
private List<String> awsStudent=new List<String>();
private String nickName;

// constructor method----------------------------------
public Clarusway(){
nickName=null;

	}
public Clarusway(String nick){
nickName=nick;
	}
    
public String getNickName(){
return nickName;
	}

public void addSF(String fullName){

sfStudent.add(fullName);
setSF(1);
	}
public Boolean checkSF(String fullName){
Boolean result = sfStudent.contains(fullName);
return result; // true or false
	}
public Boolean addSF(List<String> StudentList){ // 5
Integer oldListSize= sfStudent.size(); // 0
Integer studentListSize=StudentList.size(); // 5
sfStudent.addAll(StudentList);
sf+=StudentList.size();
all+=StudentList.size();
Integer newListSize= sfStudent.size(); // 0 +5 = 5

	if(studentListSize==newListSize-oldListSize){return True;	} 
    else {return False;	}
	}
public Boolean addAWS(String fullName){

awsStudent.add(fullName);
setAWS(1);
Boolean result;
result = awsStudent.contains(fullName);
return result;
	}
public Boolean addAWS(List<String> StudentList){

Integer oldAWSListSize=awsStudent.size();
awsStudent.addAll(StudentList);
Integer newAWSListSize=awsStudent.size();
aws+=StudentList.size();
all+=StudentList.size();
Integer stdSize=StudentList.size();
	if(stdSize==newAWSListSize-oldAWSListSize){return True;} 
    else {return False;}
	}
public static Integer all(){
return all;
	}
private void setSF(Integer numberOfStudent){
sf=sf+numberOfStudent;
all=all+numberOfStudent;
// sf+=numberOfStudent;
	}
public Integer getSF(){
return sf;
	}
private void setAWS(Integer numberOfStudents){
aws=aws+numberOfStudents;
all=all+numberOfStudents;
	}
public Integer getAWS(){
return aws;
	}

	}