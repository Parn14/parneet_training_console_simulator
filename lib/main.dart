import 'package:training_2027_project1/main.dart';
import 'login.dart';
import 'scouting_report.dart';
import 'match_scouting.dart';
import 'pit_scouting.dart';
import 'pit_scouting_report.dart';
import 'view_reports.dart';
import 'team_stats.dart';
import 'match_predictions.dart';

void main() {
  String name = login();

  print('\nWELCOME $name TO PARNEET\'S SCOUTING SIMULATOR!\n');

  List<ScoutingReport> matchReports = [];
  List<PitScoutingReport> pitReports = [];

  bool working = true;

  while (working) {
    print('\nWhat scouting would you like to do today?\n');
    print('1. Match Scouting');
    print('2. Pit Scouting');
    print('3. View Scouting Reports');
    print('4. View Team Stats');
    print('5. Predict a 3v3 Match');
    print('6. Exit');

    String? choice = stdin.readLineSync();

    if (choice == '1') {
      scoutMatches(matchReports);
    } else if (choice == '2') {
      pitScouting(pitReports);
    } else if (choice == '3') {
      viewReports(matchReports, pitReports);
    } else if (choice == '4') {
      teamStatsReports(matchReports);
    } else if (choice == '5') {
      predict3v3Match(matchReports);
    } else if (choice == '6') {
      print('Goodbye! Please visit again!');
      working = false;
    } else {
      print('Invalid option. Please try again!');
    }
  }
}