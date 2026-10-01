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
  List<ScoutingReport> reports = [];

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

    // next to do: split score into auto and teleop, save scouting reports instead of just printing them, make stats work for the teams' data which has been saved and previously scouted, etc.
    if (choice == '1') {
      print('Time to scout a match!');

      print('Enter team number:');
      String? teamNumber = stdin.readLineSync();

      print('Enter team name:');
      String? teamName = stdin.readLineSync();

      print('Enter match number:');
      String? matchInput = stdin.readLineSync();
      int? matchNumber = int.tryParse(matchInput ?? '');

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
        print('Invalid number of scouters. Please try again.');
        continue;
      }

      ScoutingReport report = ScoutingReport(
        teamNumber ?? '',
        teamName ?? '',
        matchNumber,
        score,
        allianceColor ?? '',
        scoutMembers,
      );

      reports.add(report);

      print('Scouting report saved for the team $teamNumber: $teamNumber!');
    } else if (choice == '2') {
      print('Time to scout a robot in pits!');
    } else if (choice == '3') {
      print('Time to strategy scout!');
    } else if (choice == '4') {
      print('Time to predict the results of 3v3 matches!')
    } else if (choice == '5') {
      print('Saved scouting reports:');

      if (reports.isEmpty) {
        print('No reports have been saved yet.');
      } else {
        for (ScoutingReport report in reports) {
          report.printInfo();
        }
      }
    } else if (choice == '6') {
      print('Time to view team stats!')
    } else if (choice == '7') {
      print('Goodbye! Please visit again!')
      working = false;
    } else {
      print('Invalid option. Please try again!');
    }
  }
}


class ScoutingReport {
  String teamNumber;
  String teamName;
  int matchNumber;
  int score;
  String alliance;
  int scoutMembers;

  ScoutingReport(
      this.teamNumber,
      this.teamName,
      this.matchNumber,
      this.score,
      this.alliance,
      this.scoutMembers,
      );

  void printInfo() {
    print('Team $teamNumber:$teamName');
    print('Match: $matchNumber');
    print('Score: $score');
    print('Alliance: $alliance');
    print('Scout count: $scoutCount');
  }
}