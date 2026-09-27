import 'package:training_2027_project1/main.dart';

void main() {
  print("Please log into Bear Scouter");
  print('Enter your name:');

  String name = stdin.readLineSync() ?? '';

  if (name.isEmpty) {
    name = 'Guest';
  }

    print('Welcome $name!');

  print('\nWelcome to Parneet\'s scouting simulator!\n');

  bool working = true;

  while (working) {
    print ('What scouting would you like to do today?');
    print('1. Match scouting');
    print('2. Pits scouting');
    print('3. View scouting reports');//ask user if they'd like to view pits or match before.
    print('4. Look at a team\'s stats');
    print('5. Exit');

    String? choice = stdin.readLineSync();

    if (choice == '1') {
      print('Match scouting has been selected!');
    } else if (choice == '2') {
      print('Pits scouting has been selected!');
    } else if (choice == '3') {
      print('View reports has been selected!');
    } else if (choice == '4') {
      print('Viewing team stats has been selected!');
    } else if (choice == '5') {
      print('Bye! Please visit again!');
      working = false;
    } else {
      print('Invalid option. Please try again!');
    }
}
