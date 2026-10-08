import 'pit_scouting_report.dart';

void pitScout(List<PitScoutingReport> pitReports) {
  print('\nTime to scout a robot in pits!\n');

  print('Enter team number:');
  String? teamNumber = stdin.readLineSync();

  print('Enter team name:');
  String? teamName = stdin.readLineSync();

  print('Enter drive train type:');
  String? driveTrain = stdin.readLineSync();

  print('Enter intake type:');
  String? intakeType = stdin.readLineSync();

  print('Can this robot climb? (yes/no)');
  String? climbInput = stdin.readLineSync();

  bool canClimb = false;

  if (climbInput == 'yes') {
    canClimb = true;
  }

  print('Enter any pit notes:');
  String? notes = stdin.readLineSync();

  PitScoutingReport report = PitScoutingReport(
    teamNumber ?? '',
    teamName ?? '',
    driveTrain ?? '',
    intakeType ?? '',
    canClimb,
    notes ?? '',
  );

  pitReports.add(report);

  print('Pit scouting report saved!');
}