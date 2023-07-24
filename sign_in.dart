// ignore_for_file: unnecessary_null_comparison

import 'dart:io';

signIn(Map<String, String> userData) {
  print(' ');
  stdout.write('User Name: ');
  String userName = stdin.readLineSync()!;
  stdout.write('Password: ');
  String password = stdin.readLineSync()!;

  if (userName == null) {
    print(' ');
    print('Please provide both user name and password.');
  }

  if (userData.containsKey(userName) && userData[userName] == password) {
    print(' ');
    print('Welcome, $userName!');
  } else {
    print(' ');
    print('Incorrect username or password! Please try again.');
  }
}
