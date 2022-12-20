public class GoldMembershipFee implements MembershipFee {
 public Decimal discount(){
        Decimal discountPercentage = .10; // Flat 10% discount
        System.debug('The discount is ' + discountPercentage*100 + '&');
        return discountPercentage;
    }
 public Integer paymentNumber(){
        Integer numberOfPayments = 12; // Monthly payment
        System.debug('Payments will be monthly ');
        return numberOfPayments;
    }
}
/*
MembershipFee newMembership = new GoldMembershipFee();
newMembership.discount();
newMembership.paymentNumber();
*/
