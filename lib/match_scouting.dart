import 'scouting_report.dart';
import 'match_scores.dart';

void scoutMatches(List<ScoutingReport> reports) {
  print('Time to scout a match!');

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

  print('Enter team name:');
  String? teamName = stdin.readLineSync();

  print('Enter match number:');
  String? matchInput = stdin.readLineSync();
  int? matchNumber = int.tryParse(matchInput ?? '');

  print('Enter auto score:');
  String? autoInput = stdin.readLineSync();
  int? autoScore = int.tryParse(autoInput ?? '');

  print('Enter teleop score:');
  String? teleopInput = stdin.readLineSync();
  int? teleopScore = int.tryParse(teleopInput ?? '');

  if (matchNumber == null || autoScore == null || teleopScore == null) {
    print('Invalid number entered.');
    return;
  }

  MatchScores scores = MatchScores(
    autoScore,
    teleopScore,
  );

  print('Enter alliance color (red/blue):');
  String? allianceColor = stdin.readLineSync();

  print('Enter number of team members scouting:');
  String? scoutMembersInput = stdin.readLineSync();
  int? scoutMembers = int.tryParse(scoutMembersInput ?? '');

  if (scoutMembers == null) {
    print('Invalid number of scouters. Please try again.');
    return;
  }

  ScoutingReport report = ScoutingReport(
    teamNumber ?? '',
    teamName ?? '',
    matchNumber,
    scores,
    allianceColor ?? '',
    scoutMembers,
  );

  reports.add(report);

  print('Scouting report saved for team $teamNumber: $teamName!');
}