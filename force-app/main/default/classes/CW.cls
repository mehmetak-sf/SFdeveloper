public class CW {
public Integer sfcohort = 0; // public olması istenmeyen bir davranış
Integer awscohort=0;
    public void settoSFCOHORT (Integer numberOfStudent) {
        sfcohort = sfcohort+numberOfStudent;
        awscohort = awscohort+numberOfStudent;
    }
public Integer gettoSFCOHORT(){return sfcohort; }}