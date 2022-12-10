trigger Ownership on Account (before insert) {
    for(Account acc : Trigger.new){
        If(acc.Industry == 'Banking'){
            acc.Ownership = 'Private';
        }
    }
}