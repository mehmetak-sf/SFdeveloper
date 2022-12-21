// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents


Client client1 = new Client();
client1.clientDataMethod();

Client client2 = new Client();
client2.name='Max';
client2.age =36;
client2.clientDataMethod();

Game.main();

SumCalculation newSum = new SumCalculation();
newSum.sumMethod(2,3);
SumCalculation newSum = new SumCalculation();
newSum.sumMethod(2.5,3.5);