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
    print ('\nWhat scouting would you like to do today?\n');
    print('1. Match scouting');
    print('2. Pits scouting');
    print('3. Strategy scouting');
    print('4. Predict a 3v3 match');
    print('5. View scouting reports')//ask user if they'd like to view pits or match before.
    print('6. Look at a team\'s stats');
    print('7. Exit');

   Map<String, String> choiceReceieved = {
     '1': 'Time to scout a match!',
     '2': 'Time to scout a robot in pits!',
     '3': 'Time to strategy scout!',
     '4': 'Fancy Nancy! You want to predict 3v3 match stats! Let\'s give it a try!',
     '5': 'Time to view scouting reports!',
     '6': 'Time to view team stats!',
     '7': 'Goodbye! Please visit again!',
   };

    String? choice = stdin.readLineSync();

    if (choiceReceived.containsKey(choice)) {
      print(choiceReceived[choice]);

      if (choice == '7') {
        working = false;
      }
    } else {
      print('Invalid option. Please try again!');
    }
}
