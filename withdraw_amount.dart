import 'dart:io';
import 'check_balance.dart';

void withdraw() {
  print(' ');
  stdout.write('Enter amount to withdraw:');
  String? input = stdin.readLineSync();
  double? amount = double.tryParse(input ?? '');
  if (amount == null || amount <= 0) {
    print(' ');
    print('Invalid amount. Please enter a valid positive number.');
    return;
  }

  if (balance >= amount) {
    balance -= amount;
    print(' ');
    print('Withdrawn: ${amount.toStringAsFixed(2)}');
    print(' ');
    print('Remaining Balance: ${balance.toStringAsFixed(2)}');
  } else {
    print(' ');
    print(
        'Insufficient balance. Available balance: ${balance.toStringAsFixed(2)}');
  }
}
