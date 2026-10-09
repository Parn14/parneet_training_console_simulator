import 'pit_scouting_report.dart';
import 'pit_scouting.dart';
import 'dart:io';

void pitScouting(List<PitScoutingReport> pitReports) {
  print('\nPit Scouting has been selected!\n');

  int? teamNumber;

  while (teamNumber == null) {
    print('Enter team number:');

    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print('No team number entered. Returning to main menu.');
      return;
    }

    teamNumber = int.tryParse(input);

    if (teamNumber == null) {
      print('Invalid team number. Please enter a number!');
    }
  }

  print('Enter team name:');
  String? teamName = stdin.readLineSync();

  if (teamName == null || teamName.isEmpty) {
    print('No team name entered. Returning to main menu.');
    return;
  }

  print('Enter drive train type:');
  String? driveTrain = stdin.readLineSync();

  if (driveTrain == null || driveTrain.isEmpty) {
    print('No drive train entered. Returning to main menu.');
    return;
  }

  print('Enter intake type:');
  String? intakeType = stdin.readLineSync();

  if (intakeType == null || intakeType.isEmpty) {
    print('No intake entered. Returning to main menu.');
    return;
  }

  bool? canClimb;

  while (canClimb == null) {
    print('Can this robot climb? yes/no');

    String? climbInput = stdin.readLineSync();

    if (climbInput == null || climbInput.isEmpty) {
      print('No answer entered. Returning to main menu.');
      return;
    }

    climbInput = climbInput.toLowerCase();

    if (climbInput == 'yes' || climbInput == 'y') {
      canClimb = true;
    } else if (climbInput == 'no' || climbInput == 'n') {
      canClimb = false;
    } else {
      print('Invalid answer. Please enter yes or no!');
    }
  }

  print('Enter additional notes:');
  String? notes = stdin.readLineSync();

  PitScoutingReport report = PitScoutingReport(
    teamNumber,
    teamName,
    driveTrain,
    intakeType,
    canClimb,
    notes ?? '',
  );

  pitReports.add(report);

  print('Pit scouting report saved!');
}