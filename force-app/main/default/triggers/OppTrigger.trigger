/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 10-04-2022
 * @last modified by  : Mehmet AK
**/
trigger OppTrigger on Opportunity (before update) {
System.debug('Trigger New: ' + Trigger.new);
System.debug('Trigger Old: ' + Trigger.old);
System.debug('Trigger NewMap: ' + Trigger.newMap);
System.debug('Trigger OldMap: ' + Trigger.oldMap);
for (Opportunity o : Trigger.new) {
    o.Description = 'Updated by Trigger';
}
}