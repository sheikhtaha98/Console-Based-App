import 'dart:io';

import 'check_balance.dart';

void deposit() {
  print(' ');
  stdout.write('Enter the amount to deposit: ');
  var amount = double.tryParse(stdin.readLineSync()!);

  if (amount != null) {
    balance += amount;
    print(' ');
    print('Deposit successful. Your new balance is $balance');
  } else {
    print(' ');
    print('Invalid amount entered!');
  }
}
