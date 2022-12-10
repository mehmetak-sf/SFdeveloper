public class Saturday {
  public String name;
    public Integer num;
    
    public Saturday (){
        name = 'Mehmet';
        num = 36;
        }
    
    public Saturday (String s, Integer n, Integer t){
        name = s;
        num = n + t;
        System.debug('test');
       }
    
    public void satMethod(){
        String newNum = String.valueOf(num);
        System.debug('İsim: ' + name);
         System.debug(' Yaş: ' + newNum);
        
    }

}