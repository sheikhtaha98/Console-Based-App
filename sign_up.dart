import 'dart:io';

void signUp(Map<String, String> userData) {
  print(' ');
  stdout.write('Enter New User Name: ');
  String userName = stdin.readLineSync()!;
  print(' ');
  stdout.write('Enter Password: ');
  String password = stdin.readLineSync()!;

  if (userData.containsKey(userName)) {
    print(' ');
    print('User $userName already exists. Please choose a different username.');
  } else {
    userData[userName] = password;
    print(' ');
    print('New user registered!');
  }
}
