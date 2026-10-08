import 'package:training_2027_project1/main.dart';
import 'login.dart';
import 'menu.dart';
import 'scouting_report.dart';
import 'match_predictions.dart';
import 'dart:math';
import 'match_scouting.dart';
import 'team_stats.dart';
import 'view_reports.dart';

void main() {
  String name = login();

  if (name.isEmpty) {
    name = 'GUEST';
  }

  print('\nWELCOME $name TO PARNEET\'S SCOUTING SIMULATOR!\n');

  bool working = true;
  List<ScoutingReport> reports = [];
  bool foundTeam = false;

  while (working) {
    printDashboard();
    print('\nWhat scouting would you like to do today?\n');
    print('1. Match Scouting');
    print('2. Pits Scouting');
    print('3. Predict a 3v3 Match');
    print('4. View Scouting Reports') //ask user if they'd like to view pits or match before.
    print('5. View Team Stats');
    print('6. Exit');

    String? choice = stdin.readLineSync();

    if (choice == '1') {
      scoutMatches(reports);
    } else if (choice == '2') { //make pits file
      print('Time to scout a robot in pits!');
    } else if (choice == '3') {
      predict3v3Match(reports);
    } else if (choice == '4') {
      viewReports(reports);
    }else if (choice == '5') {
      teamStatsReports(reports);

    } else if (choice == '6') {
      print('Goodbye! Please visit again!')
      working = false;
    } else {
      print('Invalid option. Please try again!');
    }
  }
}