Integer i=0;
Integer x=0;
while (i<100) {
    i++;
    if(i<8 && i>5){
         x++;
        System.debug('weekend');
        continue;
    }
    if(i==13){
        break;
    }
    System.debug((i-x)+'. Day of Flow Course Plan');
}