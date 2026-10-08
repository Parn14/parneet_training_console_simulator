import 'scouting_report.dart';

void viewReports(List <ScoutingReport> reports) {
  print('Enter team number to view their scouting reports:');
  String? searchedTeam = stdin.readLineSync();

  bool foundTeam = false;

  for (ScoutingReport report in reports) {
    if (report.teamNumber == searchedTeam) {
      report.printInfo();
      foundTeam = true;
    }
  }

  if (foundTeam == false) {
    print('Sorry! We couldn\'t find any reports for that team. Please finish scouting before viewing their reports!');
  }
}