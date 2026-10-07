import 'match_scores.dart';

class ScoutingReport {
  String teamNumber;
  String teamName;
  int matchNumber;
  MatchScores scores;
  String alliance;
  int scoutMembers;

  ScoutingReport(this.teamNumber, this.teamName, this.matchNumber, this.scores, this.alliance, this.scoutMembers);

  void printInfo() {
    print('Team $teamNumber: $teamName');
    print('Match: $matchNumber');
    scores.printScores();
    print('Alliance: $alliance');
    print('Scout count: $scoutMembers');
  }
}