import 'dart:io' show stdin, stdout;
import 'check_balance.dart' show checkbalance;
import 'deposit_amount.dart' show deposit;
import "withdraw_amount.dart" show withdraw;

mainMenu() {
  bool input = true;
  while (input == true) {
    print(' ');
    print('===========================');
    print('        Main Menu          ');
    print("Press 1 For Check Balance");
    print("Press 2 For Deposit");
    print("Press 3 For Withdraw");
    print("Press 5 For Exit");
    print('===========================');

    stdout.write("Enter your choice: ");
    var Input = stdin.readLineSync();

    if (Input == "1") {
      checkbalance();
    } else if (Input == "2") {
      deposit();
    } else if (Input == "3") {
      withdraw();
    } else if (Input == "5") {
      print(' ');
      print("Exiting main menu.");
      input = false;
    }
  }
}
