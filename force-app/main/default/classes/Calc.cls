/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 06-13-2022
 * @last modified by  : Mehmet AK
**/

public class Calc {
    // NORMAL APEX CLASS
    public Decimal sum(Decimal x, Decimal y){Decimal result=x+y;	return result;}
    
    public Decimal sub(Decimal x, Decimal y){Decimal result=x-y;	return result;}
    
    public Decimal mul(Decimal x, Decimal y){Decimal result=x*y;	return result;}
    
    public Decimal div(Decimal x, Decimal y){Decimal result;	
    if(y==0){y=1;	result=x/y;}
	  else {result=x/y;}	return result.setscale(2);    }
}