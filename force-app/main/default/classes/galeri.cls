public class galeri {
Integer audi=0;
Integer bmw=0;
Integer toplamSehir=0;
static Integer tumaraclarim=0;
private String galeriAdi;
List<String>  audiAraci = new List<String>();
List<String>  bmwAraci = new List<String>();
    
    public galeri(){
       System.debug('yeni galeri açıldı');
    }
    
    public galeri (String nick){
        galeriAdi=nick;
        System.debug(nick + ' isimli galeri hayırlı olsun.');
    }
    
    
     
    public void kayitAudi(String aracisim){
        audiAraci.add(aracisim);
        ekleAudi(1);
    }
    
   
    public void kayitAudi(List<String> araclist){
        
        System.debug(galeriAdi + ' isimli galerinin yeni araçları '+araclist );
        
        audiAraci.addAll(araclist);
        audi+=araclist.size();
        toplamSehir+=araclist.size();
        tumaraclarim+=araclist.size();
    }
    public void ekleAudi(Integer yeniAudi){
      audi=audi+yeniAudi;
      toplamSehir=toplamSehir+yeniAudi;
      tumaraclarim+=yeniAudi;
    }
    public Integer hesaplaAudi(){
        return audi;
    }
    public void ekleBmw(Integer yeniBmw){
      bmw=bmw+yeniBmw;
      toplamSehir+=yeniBmw;
      tumaraclarim+=yeniBmw;
    }
    public Integer hesaplaBmw(){
        return bmw;
    }
     public Integer hesaplasehir(){
        return toplamSehir;
    }
     public static Integer hesaplatum(){
        return tumaraclarim;
    } 
    /// yedek parca adındaki class
    private class yedekparca {
        private void parcaekle(){
            
           System.debug('yedek parca tanımlandı');
        }
    }
    //// yedek parca class bitti
    
    public void ihtiyacparca(){
        yedekparca far = New yedekparca();
        far.parcaekle();
    }
 
}