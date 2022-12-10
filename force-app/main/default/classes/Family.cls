public class Family {
    public string significantHalfOne = 'Hatice';
    public string significantHalfTwo = 'David';
    public string Wife(){
        return significantHalfOne;
    }
    public string Husband(){
        return significantHalfTwo;
    }
    public void Love(){
        System.debug(Wife() + ' and ' + Husband());
    }
}