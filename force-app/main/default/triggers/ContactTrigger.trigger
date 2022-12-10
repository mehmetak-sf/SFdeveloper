trigger ContactTrigger on Contact (before insert, after insert,before update,after update,
                                  before delete,after delete, after undelete) {
    System.debug('Trigger.operationType : '+ Trigger.operationType);
 switch on Trigger.operationType {
        when BEFORE_INSERT { system.debug('BEFORE INSERT WORKING'); }
        when BEFORE_UPDATE { system.debug('BEFORE UPDATE WORKING'); }
        when AFTER_INSERT { system.debug('AFTER  INSERT WORKING'); }
        when AFTER_UPDATE {
            system.debug('AFTER UPDATE WORKING');
            for (Contact con:Trigger.new){
                System.debug('Contact Old Title  :'+Trigger.oldMap.get(con.id).title);
                System.debug('Contact New Title  :'+Trigger.newMap.get(con.id).title);
                System.debug('Contact NEW Title  :' + con.title);
                 System.debug('Contact Old phone  :'+Trigger.oldMap.get(con.id).phone);
                System.debug('Contact New phone  :'+Trigger.newMap.get(con.id).phone);
                System.debug('Contact NEW phone  :' + con.phone);
            }
        }
        when BEFORE_DELETE { system.debug('BEFORE  DELETE WORKING'); }
        when AFTER_DELETE { system.debug('AFTER  DELETE WORKING'); }
        when AFTER_UNDELETE { system.debug('AFTER  UNDELETE WORKING'); }
 }  }