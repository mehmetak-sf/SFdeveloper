public class SilverMembershipFee implements MembershipFee {
 public Decimal discount(){
        Decimal discountPercentage = .05; // Flat 5% discount
        System.debug('The discount is ' + discountPercentage*100 + '&');
        return discountPercentage;
    }
 public Integer paymentNumber(){
        Integer numberOfPayments = 6; // Bi-Monthly payment
        System.debug('Payments will be bi-monthly ');
        return numberOfPayments;
    }
}
/*
MembershipFee newMembership = new SilverMembershipFee();
newMembership.discount();
newMembership.paymentNumber();
*/
