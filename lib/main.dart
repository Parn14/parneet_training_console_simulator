import 'package:training_2027_project1/main.dart';
import 'login.dart';
import 'menu.dart';
import 'scouting_report.dart';

void main() {
  String name = login();

  if (name.isEmpty) {
    name = 'Guest';
  }

  print('Welcome $name!');

  print('\nWelcome to Parneet\'s scouting simulator!\n');

  bool working = true;
  List<ScoutingReport> reports = [];
  bool foundTeam = false;

  while (working) {
    printDashboard();
    print('1. Match scouting');
    print('2. Pits scouting');
    print('3. Strategy scouting');
    print('4. Predict a 3v3 match');
    print('5. View scouting reports') //ask user if they'd like to view pits or match before.
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
      print('Enter team number to view reports:');
      String? searchedTeam = stdin.readLineSync();

      foundTeam = false;
      for (ScoutingReport report in reports) {
        if (report.teamNumber == searchTeam) {
          report.printInfo();
          foundTeam = true;
        }
      }

      if (foundTeam == false) {
        print('No reports have been found for that team. Please scout and come back again!');
      }
    } else if (choice == '6') {
      print('Enter team number to view stats:');

      String? teamStats = stdin.readLineSync();

      List<int> teamScores = [];

      for (ScoutingReport report in reports) {
        if (report.teamNumber == teamStats) {
          teamScores.add(report.score);
        }
      }

      if (teamScores.isEmpty) {
        print('No scores found for that team.');
      }
    } else if (choice == '7') {
      print('Goodbye! Please visit again!')
      working = false;
    } else {
      print('Invalid option. Please try again!');
    }
  }
}