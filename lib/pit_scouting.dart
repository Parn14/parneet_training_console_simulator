import 'pit_scouting_report.dart';
import 'dart:io';

void pitScouting(List <PitScoutingReport> pitReports) {
  print('\nTime to scout a robot in pits!\n');

  int? teamNumber;

//team number
  while (teamNumber == null) {
    print('Enter team number:');
    String? teamNumberEntry= stdin.readLineSync();

    if (teamNumberEntry == null || teamNumberEntry.isEmpty) {
      print('Returning to main menu now!');
      return;
    }

    teamNumber = int.tryParse(teamNumberEntry);

    if (teamNumber == null) {
      print('Invalid team number. Please try again!');
    }
  }

//team name
  print('Enter team name:');
  String? teamName = stdin.readLineSync();

  if (teamName == null || teamName.isEmpty) {
    print('Returning to main menu now!');
    return;
  }

  //drive train type
  print('Enter drive train type:');
  String? driveTrainType = stdin.readLineSync();

  if (driveTrainType == null || driveTrainType.isEmpty) {
    print('Returning to main menu now!');
    return;
  }

  print('Enter intake type:');
  String? intakeType = stdin.readLineSync();

  if (intakeType == null || intakeType.isEmpty) {
    print('Returning to main menu now!');
    return;
  }

  bool? canClimb;

  while (canClimb == null) {
    print('Can this robot climb? (yes/no)');
    String? climbPossibility = stdin.readLineSync();

    if (climbPossibility == null || climbPossibility.isEmpty) {
      print('Returning to main menu now!');
      return;
    }

    climbPossibility = climbPossibility.toLowerCase();

    if (climbPossibility == 'yes' ||climbPossibility == 'y') {
      canClimb = true;
    } else if (climbPossibility == 'no' || climbPossibility == 'n') {
      canClimb = false;
    } else {
      print('Please enter yes or no.');
    }
  }

  print('Enter any additional pit notes:');
  String? notes = stdin.readLineSync();

  PitScoutingReport report = PitScoutingReport (teamNumber, teamName, driveTrainType, intakeType, canClimb, notes ?? '');

  pitReports.add(report);

  print('Pit scouting report has been saved! Woo!');
}