import 'package:training_2027_project1/main.dart'

void main() {
  print("Please log into Bear Scouter");
  print('Enter your name:');

  String? name = stdin.readLineSync();

  print('Welcome $name!');

  print('Welcome to Parneet\'s scouting simulator!');


  bool working = true;

  while (working) {
    print ('What scouting would you like to do today?');
    print('1. Match scouting');
    print('2. Pits scouting');
    print('3. Strategy scouting');
    print('4. View scouting reports');//ask user if they'd like to view strategy, pits, or match before.
    print('5. Look at a team\'s stats');
    print('6. Exit');

    //next task: stdin for user input, change colors/bg, hardcode teams??, etc

    if (choice == '1') {
      print('Match scouting has been selected!');
    } else if (choice == '2') {
      print('Pits scouting has been selected!');
    } else if (choice == '3') {
      print('Strategy scouting has been selected');
    } else if (choice == '4') {
      print('View reports has been selected!');
    } else if (choice == '5') {
      print('Viewing team stats has been selected!');
    } else if (choice == '6') {
      print('Bye! Visit again!');
      working = false;
    } else {
      print('Invalid option. Please try again!');
    }
}
