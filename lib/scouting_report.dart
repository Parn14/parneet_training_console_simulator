class ScoutingReport {
  String teamNumber;
  String teamName;
  int matchNumber;
  int score;
  String alliance;
  int scoutMembers;

  ScoutingReport(
      this.teamNumber,
      this.teamName,
      this.matchNumber,
      this.score,
      this.alliance,
      this.scoutMembers,
      );

  void printInfo() {
    print('Team $teamNumber: $teamName');
    print('Match: $matchNumber');
    print('Score: $score');
    print('Alliance: $alliance');
    print('Scout count: $scoutMembers');
  }
}