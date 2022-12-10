/**
 * @description       : 
 * @author            : Mehmet AK
 * @group             : 
 * @last modified on  : 10-11-2022
 * @last modified by  : Mehmet AK
**/
// Automatically create opportunity when an Account record is created.

// When a new Account is created with Account Type as "Prospect" then Create new Task for yourself and send email alert, notification to yourself

trigger Account1 on Account (after insert) {
List<Opportunity> oppList = new List<Opportunity>();
List<Task> tasks = new List<Task>();

    for (Account a : Trigger.new) {
        Opportunity o = new Opportunity();
        o.Name = a.Name + ' Opp';  // Burlington Textile Opp
        o.StageName = 'Qualification';
        o.CloseDate = Date.today() + 90;
        o.AccountId = a.Id;
        oppList.add(o);
 
        
        if (a.Type == 'Prospect') {
            Task t = new Task();
            t.Subject = 'New Account Test';
            t.Status = 'In Progress';
            t.WhatId = a.Id;
            t.OwnerId = UserInfo.getUserId();
            tasks.add(t); 

            List<Messaging.Email> emails = new List<Messaging.Email>();

            Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
            msg.setSubject('First Email');
            msg.setPlainTextBody('This is my first email!');
            List<String> emailList = new List<String>();
            emailList.add('kenansbox@gmail.com');
            emailList.add('kenansbox@gmail.com');
            emailList.add('kenansbox@gmail.com');
            msg.setToAddresses(emailList);

            emails.add(msg);
            Messaging.sendEmail(emails);
           


            User u = [SELECT Id, Name FROM User WHERE Name = 'Kenan Yildirim' LIMIT 1];

            Set<String> myId = new Set<String>();
            myId.add(u.Id);

            Messaging.CustomNotification notif = new Messaging.CustomNotification();
            notif.setTitle('First Notification');
            notif.setBody('Hello');
            notif.setNotificationTypeId('0ML8c000000kEVYGA2');
            notif.setTargetId(a.Id);
            notif.send(myId);

        }

    }
    insert oppList;
    insert tasks;

}