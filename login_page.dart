import 'dart:io';

void login() {
  Map<String, String> userData = {'muqees': '12345', 'taha': '6789'};
  print(' ');
  print('01. login');
  print('02. Sign Up');
  print(' ');
  stdout.write("Enter your choice: ");
  var choice = stdin.readLineSync()!;
  print(' ');

  if (choice == '1') {
    signIn();
  }
  if (choice == '2') {
    signUp(userData);
  } else {
    print(' ');
    print('Invalid choice!');
  }
}

void signIn() {
  Map<String, String> userData = {'muqees': '12345', 'taha': '6789'};

  bool isSignIn = false;
  while (isSignIn == false) {
    stdout.write('User Name: ');
    String userName = stdin.readLineSync()!;
    stdout.write('Password: ');
    String password = stdin.readLineSync()!;
    if (userName == '' || password == '') {
      print('Invalid input. Please provide both username and password.');
      print(' ');
      continue;
    }

    if (userData.containsKey(userName)) {
      String? storedPassword = userData[userName];

      if (password == storedPassword) {
        print('Welcome, $userName!');
        isSignIn = true;
      } else {
        print(' ');
        print('Incorrect password!');
        print(' ');
      }
    } else {
      print(' ');
      print('User not found! Try again.');
      print('Please enter valid user name or password.');
      print(' ');
    }
  }
}

void signUp(Map<String, String> userData) {
  bool isSignUp = false;
  while (isSignUp == false) {
    stdout.write('Enter User Name: ');
    String? userName = stdin.readLineSync();
    stdout.write('Enter Password: ');
    String? password = stdin.readLineSync();
    if (userName == '' || password == '') {
      print('Invalid input. Please provide both username and password.');
      return;
    }
    if (userData.containsKey(userName)) {
      print(' ');
      print(
          'User $userName already exists. Please choose a different username.');
      print(' ');
    } else {
      userData[userName!] = password!;
      print(' ');
      print('New user regitered!');
      isSignUp = true;
      login();
    }
  }
}
