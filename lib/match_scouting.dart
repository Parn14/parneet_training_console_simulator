import 'scouting_report.dart';
import 'match_scores.dart';

void scoutMatches(List<ScoutingReport> reports) {
  print('\nTime to scout a match!\n');

  // team number
  int? teamNumber;

  while (teamNumber == null) {
    print('Enter team number:');
    String? teamInput = stdin.readLineSync();

    if (teamInput == null || teamInput.isEmpty) {
      print('No team number entered. Returning to main menu.');
      return;
    }

    teamNumber = int.tryParse(teamInput);

    if (teamNumber == null) {
      print('Invalid team number. Please enter a number!');
    }
  }

  // team name
  print('Enter team name:');
  String? teamName = stdin.readLineSync();

  if (teamName == null || teamName.isEmpty) {
    print('No team name entered. Returning to main menu.');
    return;
  }

  // match number
  int? matchNumber;

  while (matchNumber == null) {
    print('Enter match number:');
    String? matchInput = stdin.readLineSync();

    if (matchInput == null || matchInput.isEmpty) {
      print('No match number entered. Returning to main menu.');
      return;
    }

    matchNumber = int.tryParse(matchInput);

    if (matchNumber == null) {
      print('Invalid match number. Please enter a number!');
    }
  }

  // auto score
  int? autoScore;

  while (autoScore == null) {
    print('Enter auto score:');
    String? autoInput = stdin.readLineSync();

    if (autoInput == null || autoInput.isEmpty) {
      print('No auto score entered. Returning to main menu.');
      return;
    }

    autoScore = int.tryParse(autoInput);

    if (autoScore == null) {
      print('Invalid auto score. Please enter a number!');
    }
  }

  // teleop score
  int? teleopScore;

  while (teleopScore == null) {
    print('Enter teleop score:');
    String? teleopInput = stdin.readLineSync();

    if (teleopInput == null || teleopInput.isEmpty) {
      print('No teleop score entered. Returning to main menu.');
      return;
    }

    teleopScore = int.tryParse(teleopInput);

    if (teleopScore == null) {
      print('Invalid teleop score. Please enter a number!');
    }
  }

  MatchScores scores = MatchScores(
    autoScore,
    teleopScore,
  );

  // alliance
  String? allianceColor;

  while (allianceColor == null) {
    print('Enter alliance color (red/blue):');
    String? allianceInput = stdin.readLineSync();

    if (allianceInput == null || allianceInput.isEmpty) {
      print('No alliance color entered. Returning to main menu.');
      return;
    }

    allianceInput = allianceInput.toLowerCase();

    if (allianceInput == 'red' || allianceInput == 'blue') {
      allianceColor = allianceInput;
    } else {
      print('Invalid alliance color. Please enter red or blue!');
    }
  }

  // number of scouts
  int? scoutMembers;

  while (scoutMembers == null) {
    print('Enter number of team members scouting:');
    String? scoutMembersInput = stdin.readLineSync();

    if (scoutMembersInput == null || scoutMembersInput.isEmpty) {
      print('No number of scouters entered. Returning to main menu.');
      return;
    }

    scoutMembers = int.tryParse(scoutMembersInput);

    if (scoutMembers == null) {
      print('Invalid number of scouters. Please enter a number!');
    }
  }

  ScoutingReport report = ScoutingReport(
    teamNumber,
    teamName,
    matchNumber,
    scores,
    allianceColor,
    scoutMembers,
  );

  reports.add(report);

  print('Scouting report saved for Team $teamNumber: $teamName!');
}