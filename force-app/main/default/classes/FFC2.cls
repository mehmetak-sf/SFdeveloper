public class FFC2 {
public static void Challenge2(){
Opportunity LowWon=[SELECT Name, Amount, StageName FROM Opportunity WHERE StageName='Closed Won' ORDER BY Amount ASC LIMIT 1];
        
System.debug(LowWon);
Task tekil= new Task();
tekil.WhatId=Lowwon.id;
tekil.Subject='Follow Up4';
tekil.ActivityDate=Date.today()+3;
tekil.Status='Not Started';

System.debug(tekil);

insert tekil;
}	}