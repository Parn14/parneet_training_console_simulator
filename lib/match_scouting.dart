import 'scouting_report.dart';
import 'match_scores.dart';
import 'dart:io';

void scoutMatches(List <ScoutingReport> reports) {
  print('\nTime to scout a match!\n');

  // team number
  int? teamNumber;

  while (teamNumber == null) {
    print('Enter team number:');
    String? teamNumInput = stdin.readLineSync();

    if (teamNumInput == null || teamNumInput.isEmpty) {
      print('No team number has been entered. Returning to main menu now!');
      return;
    }

    teamNumber = int.tryParse(teamNumInput);

    if (teamNumber == null) {
      print('Invalid team number. Please enter a number!');
    }
  }

  //team name
  print('Enter team name:');
  String? teamName = stdin.readLineSync();

  if (teamName == null || teamName.isEmpty) {
    print('No team name has been entered. Returning to main menu now!');
    return;
  }

  //match number
  int? matchNumber;

  while (matchNumber == null) {
    print('Enter match number:');
    String? matchNumEntry = stdin.readLineSync();

    if (matchNumEntry == null || matchNumEntry.isEmpty) {
      print('No match number has been entered. Returning to main menu now!');
      return;
    }

    matchNumber = int.tryParse(matchNumEntry);

    if (matchNumber == null) {
      print('Invalid match number. Please enter a number!');
    }
  }

  //auto score
  int? autoScore;

  while (autoScore == null) {
    print('Enter auto score:');
    String? autoScoreEntry = stdin.readLineSync();

    if (autoScoreEntry == null || autoScoreEntry.isEmpty) {
      print('No auto score has been entered. Returning to main menu now!');
      return;
    }

    autoScore = int.tryParse(autoScoreEntry);

    if (autoScore == null) {
      print('Invalid auto score. Please enter a number!');
    }
  }

  //teleop score
  int? teleopScore;

  while (teleopScore == null) {
    print('Enter teleop score:');
    String? teleopScoreEntry = stdin.readLineSync();

    if (teleopScoreEntry == null || teleopScoreEntry.isEmpty) {
      print('No teleop score has been entered! Returning to main menu now!');
      return;
    }

    teleopScore = int.tryParse(teleopScoreEntry);

    if (teleopScore == null) {
      print('Invalid teleop score. Please enter a number!');
    }
  }

  MatchScores scores = MatchScores(autoScore, teleopScore);

  //alliance infos
  String? allianceColor;

  while (allianceColor == null) {
    print('Enter alliance color (red/blue):');
    String? allianceColorEntry = stdin.readLineSync();

    if (allianceColorEntry == null || allianceColorEntry.isEmpty) {
      print('No alliance color has been entered! Returning to main menu now!');
      return;
    }

    allianceColorEntry = allianceColorEntry.toLowerCase();

    if (allianceColorEntry == 'red' || allianceColorEntry == 'blue') {
      allianceColor = allianceColorEntry;
    } else {
      print('Invalid alliance color. Please enter red or blue!');
    }
  }

  //number of scouts
  int? scoutMembers;

  while (scoutMembers == null) {
    print('Enter number of team members scouting for this match:');
    String? scoutMembersNumbers = stdin.readLineSync();

    if (scoutMembersNumbers == null || scoutMembersNumbers.isEmpty) {
      print('No number of scouters has been entered. Returning to main menu now!');
      return;
    }

    scoutMembers = int.tryParse(scoutMembersNumbers);

    if (scoutMembers == null) {
      print('Invalid number of scouters. Please enter a number!');
    }
  }

  ScoutingReport report = ScoutingReport(teamNumber, teamName, matchNumber, scores, allianceColor, scoutMembers);

  reports.add(report);

  print('Scouting report has now been saved for Team $teamNumber: $teamName!');
}