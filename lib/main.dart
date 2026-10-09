import 'login.dart';
import 'dart:io';
import 'scouting_report.dart';
import 'match_scouting.dart';
import 'pit_scouting.dart';
import 'pit_scouting_report.dart';
import 'view_reports.dart';
import 'team_stats.dart';
import 'match_predictions.dart';

String red = '\x1B[38;2;255;102;99m';
String orange = '\x1B[38;2;254;177;68m';
String yellow = '\x1B[38;2;253;253;151m';
String green = '\x1B[38;2;158;224;158m';
String blue = '\x1B[38;2;158;193;207m';
String purple = '\x1B[38;2;204;153;201m';

void main() {
  String name = login();

  print('\nWELCOME $name TO PARNEET\'S SCOUTING SIMULATOR!\n');

  List <ScoutingReport> matchReports = [];
  List <PitScoutingReport> pitReports = [];

  bool working = true;

  while (working) {
    print('\nWhat scouting would you like to do today?\n');
    print('${red}1. Match Scouting');
    print('${orange}2. Pit Scouting');
    print('${yellow}3. View Scouting Reports');
    print('${green}4. View Team Stats');
    print('${blue}5. Predict a 3v3 Match');
    print('${purple}6. Exit');

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