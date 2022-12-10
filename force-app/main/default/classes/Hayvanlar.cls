public class Hayvanlar { // Wrapper Class
// class variables = properties-------------------------
private Integer Evcil=0;
private Integer Vahsi=0;
private static Integer all=0;
private List<String> EvcilKedi=new List<String>();
private List<String> VahsiKedi=new List<String>();
private String snfAdi;

// constructor method-----------------------------------
public Hayvanlar(){
snfAdi=null;	}

public Hayvanlar(String snf){
snfAdi=snf;	}

public String getsnfAdi(){
return snfAdi;	}

// class methods ---------------------------------Behaviours
public void addEvcil(String KediTipi){
EvcilKedi.add(KediTipi);
setEvcil(1);
	}

public Boolean checkEvcil(String KediTipi){
Boolean result = EvcilKedi.contains(KediTipi);
return result; // true or false
	}

public Boolean addEvcil(List<String> KediList){ // 5

Integer oldListSize= EvcilKedi.size(); // 0

Integer kediListSize=KediList.size(); // 5

evcilKedi.addAll(KediList);
evcil+=KediList.size();
all+=KediList.size();
Integer newListSize= EvcilKedi.size(); // 0 +5 = 5

	if(kediListSize==newListSize-oldListSize){return True;	} 
    else {return False;	}
	}

public Boolean addVahsi(String KediTipi){

VahsiKedi.add(KediTipi);
setVahsi(1);
Boolean result;
result = VahsiKedi.contains(KediTipi);
return result;
	}

public Boolean addVahsi(List<String> KediList){

Integer oldVahsiListSize=VahsiKedi.size();
VahsiKedi.addall(KediList);
Integer newVahsiListSize=VahsiKedi.size();
Vahsi+=KediList.size();
all+=KediList.size();
Integer KediSize=KediList.size();
	if(KediSize==newVahsiListSize-oldVahsiListSize){return True;} 
    else {return False;}
	}

public static Integer all(){
return all;
	}

private void setEvcil(Integer KediSayisi){
Evcil=Evcil+KediSayisi;
all=all+KediSayisi;
//
	}

public Integer getEvcil(){
return Evcil;
	}

private void setVahsi(Integer KediSayisi){
Vahsi=Vahsi+KediSayisi;
all=all+KediSayisi;
	}

public Integer getVahsi(){
return Vahsi;
	}

	}