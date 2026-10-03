import 'package:training_2027_project1/main.dart';
import 'login.dart';
import 'menu.dart';
import 'scouting_report.dart';
import 'dart:math';

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
      print('Time to predict the results of 3v3 matches!');

      print('Enter red alliance team 1:');
      String? red1 = stdin.readLineSync();

      print('Enter red alliance team 2:');
      String? red2 = stdin.readLineSync();

      print('Enter red alliance team 3:');
      String? red3 = stdin.readLineSync();

      print('Red Alliance: $red1, $red2, $red3');

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
      } else {
        int totalScore = 0;

        //mean
        for (int score in teamScores) {
          totalScore += score;
        }

        double mean = totalScore/teamScores.length;

        int minimum = teamScores[0];
        int maximum = teamScores[0];
        //min
        for (int score in teamScores) {
          if (score < minimum) {
            minimum = score;
          }
          //max
          if (score > maximum) {
            maximum = score;
          }
        }

        print('Mean score: $mean');
        print('Minimum score: $minimum');
        print('Maximum score: $maximum');

        // median
        teamScores.sort();

        double median;
        int middle = teamScores.length ~/2; //integer division (divides and throws away the decimal poriton (step functions but it won't round)

        if (if (teamScores.length/2) == (teamScores.length ~/2)) {
          median = (teamScores[middle -1] + teamScores[middle])/2;
        } else {
          median = teamScores[middle].toDouble();
        }

        print('Median score: $median');
        //q3 and q1
        List<int> lowerHalf = [];
        List<int> upperHalf = [];

        int upperStart = middle;

        if ((teamScores.length/2) != (teamScores.length ~/2)) {
          upperStart = middle + 1;
          }

        for (int i = upperStart; i < teamScores.length; i++) {
        upperHalf.add(teamScores[i]);
        }

        int lowerMiddle = lowerHalf.length ~/2;
        int upperMiddle = upperHalf.length ~/2;

        double q1 = 0
        double q3 = 0

        if ((lowerHalf.length/2) == (lowerHalf.length ~/2)) {
          q1 = (lowerHalf[lowerMiddle-1] + lowerHalf[lowerMiddle])/2;
        } else {
          q1 = lowerHalf[lowerMiddle].toDouble();
        }

        if ((upperHalf.length/2) == (upperHalf.length ~/2)) {
          q3 = (upperHalf[upperMiddle - 1] + upperHalf[upperMiddle])/2;
        } else {
          q3 = upperHalf[upperMiddle].toDouble();
        }

        print('Q1: $q1');
        print('Q3: $q3');

        //iqr
        double iqr = q3 - q1;
        print('IQR: $iqr');

        //sd
        double differenceTotal = 0;

        for (int score in teamScores) {
        double difference = score - mean;
        differenceTotal += difference * difference;
        }

        double variance = differenceTotal/teamScores.length;
        double standardDeviation = sqrt(variance);

        print('Standard deviation: $standardDeviation');
      }
    } else if (choice == '7') {
      print('Goodbye! Please visit again!')
      working = false;
    } else {
      print('Invalid option. Please try again!');
    }
  }
}