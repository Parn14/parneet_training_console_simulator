import 'scouting_report.dart';

void scoutMatches(List <ScoutingReport> reports) {
print('Time to scout a match!');

print('Enter team number:');
String? teamNumber = stdin.readLineSync();

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
continue;
}

MatchScores scores = MatchScores(autoScore, teleopScore);

print('Enter alliance color (red/blue):');
String? allianceColor = stdin.readLineSync();

print('Enter number of team members scouting:');
String? scoutMembers = stdin.readLineSync();
int? scoutMembers = int.tryParse(scoutCountInput ?? '');

if (scoutCount == null) {
print('Invalid number of scouters. Please try again.');
continue;
}

ScoutingReport report = ScoutingReport(
teamNumber ?? '',
teamName ?? '',
matchNumber,
score,
allianceColor ?? '',
scoutMembers,
);

  reports.add(report);

  print('Scouting report saved for the team $teamNumber: $teamNumber!');