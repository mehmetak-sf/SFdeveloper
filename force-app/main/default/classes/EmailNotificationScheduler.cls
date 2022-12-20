// Send email to users having System Administrator profile about the closed opportunities.
public class EmailNotificationScheduler implements Schedulable {
	public void execute(SchedulableContext sc) {
// Get list of opportunities which were closed won/lost in the month
		List<Opportunity> listOfClosedOps = [Select Id, Name, StageName From Opportunity Where CloseDate = THIS_MONTH and (StageName='Closed Won' or StageName='Closed Lost')];
// Get user ids in a list
		Profile adminProfile = [Select Id From Profile Where Name = 'System Administrator'];
		List<Id> listOfUserIds = new List<Id>();
		for(User usr : [Select Id From User Where ProfileId =:adminProfile.Id]) {
			listOfUserIds.add(usr.Id);
	}
// Get all the opportunities Name and StageName in a String
		String closedOpportunities = 'Opportunity Name' + ' : ' + 'Status';
		for(Opportunity op : listOfClosedOps) {
			closedOpportunities = ClosedOpportunities + '\n' + op.Name + ' : ' + op.StageName;
	}	
		sendmail(listOfUserIds, closedOpportunities);
}
	public void sendmail(List<Id> listOfUserIds, String closedOpportunities){
// Creating instance of email and set values
    Messaging.SingleEmailMessage email = new
    Messaging.SingleEmailMessage();
    email.setToAddresses(listOfUserIds);
    email.setSubject('Opportunities closed this month');
    email.setPlainTextBody(closedOpportunities);
// Send email
	Messaging.sendEmail(new List<Messaging.SingleEmailMessage> {email});
	}
}