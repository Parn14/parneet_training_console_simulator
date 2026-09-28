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
    print('\nWhat scouting would you like to do today?\n');
    print('1. Match scouting');
    print('2. Pits scouting');
    print('3. Strategy scouting');
    print('4. Predict a 3v3 match');
    print(
        '5. View scouting reports') //ask user if they'd like to view pits or match before.
    print('6. Look at a team\'s stats');
    print('7. Exit');

    String? choice = stdin.readLineSync();

    if (choice == '1') {
      print('Time to scout a match!');

      print('Enter team number:');
      String? teamNumber = stdin.readLineSync();

      print('Enter team name:');
      String? teamName = stdin.readLineSync();

      print('Enter match number:');
      String? matchInput = stdin.readLineSync();
      int? matchNumber= int.tryParse(matchInput ?? '');

      print('Enter score:');
      String? scoreInput = stdin.readLineSync();
      int? score = int.tryParse(scoreInput ?? '');

      if (matchNumber == null || score == null) {
        print('Invalid number entered.');
        continue;
      }

      print('Enter alliance color (red/blue):');
      String? allianceColor = stdin.readLineSync();

      print('Enter number of team members scouting:');
      String? scoutMembers = stdin.readLineSync();
      int? scoutMembers = int.tryParse(scoutCountInput ?? '');

      if (scoutCount == null) {
        print('Invalid number of scouters');
        continue;
      }

      print('Team $teamNumber: $teamName, Match $matchNumber, Score $score, Alliance $allianceColor, Scouts $scoutMembers');

    } else if (choice == '2') {
      print('Time to scout a robot in pits!');
    } else if (choice == '3') {
      print('Time to strategy scout!');
    } else if (choice == '4') {
      print('Fancy Nancy! You want to predict 3v3 match stats! Let\'s give it a try!')
    } else if (choice == '5') {
      print('Time to view scouting reports!')
    } else if (choice == '6') {
      print('Time to view team stats!')
    } else if (choice == '7') {
      print('Goodbye! Please visit again!')
    }

    if (choiceReceived.containsKey(choice)) {
      print(choiceReceived[choice]);

      if (choice == '7') {
        working = false;
      }
    } else {
      print('Invalid option. Please try again!');
    }
}
