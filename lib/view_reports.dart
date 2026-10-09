import 'pit_scouting_report.dart';
import 'scouting_report.dart';
import 'dart:io';

void viewReports(List<ScoutingReport> matchReports, List<PitScoutingReport> pitReports) {
  print('\nWhat type of report would you like to view?\n');
  print('1. Match Reports');
  print('2. Pit Reports');

  String? reportChoice = stdin.readLineSync();

  if (reportChoice == null || reportChoice.isEmpty) {
    print('No option has been entered. Returning to main menu now!');
    return;
  }

  int? searchedTeam;

  while (searchedTeam == null) {
    print('\nWhat team would you like to view?');
    String? teamInput = stdin.readLineSync();

    if (teamInput == null || teamInput.isEmpty) {
      print('No team has been entered. Returning to main menu now!');
      return;
    }

    searchedTeam = int.tryParse(teamInput);

    if (searchedTeam == null) {
      print('Invalid team number. Please enter a number!');
    }
  }

  bool foundTeam = false;

  if (reportChoice == '1') {
    if (matchReports.isEmpty) {
      print('There are no match reports saved yet!');
      return;
    }

    for (ScoutingReport report in matchReports) {
      if (report.teamNumber.toString() == searchedTeam.toString()) {
        report.printInfo();
        foundTeam = true;
      }
    }
  } else if (reportChoice == '2') {
    if (pitReports.isEmpty) {
      print('There are no pit reports saved yet!');
      return;
    }

    for (PitScoutingReport report in pitReports) {
      if (report.teamNumber.toString() == searchedTeam) {
        report.printInfo();
        foundTeam = true;
      }
    }
  } else {
    print('Invalid report option.');
    return;
  }

  if (foundTeam == false) {
    print('No reports were found for Team $searchedTeam.');
  }
}