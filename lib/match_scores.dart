// class with scores being seperated into auto and tele, so it's easier to do calculations with them
class MatchScores {
  int autoScore;
  int teleopScore;

  MatchScores(this.autoScore, this.teleopScore);

  int totalScore() {
    return autoScore + teleopScore;
  }

  void printScores() {
    print('Auto score: $autoScore');
    print('Teleop score: $teleopScore');
    print('Total score: ${totalScore()}');
  }
}