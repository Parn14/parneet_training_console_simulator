import 'scouting_report.dart';
import 'dart:math';

void teamStatsReports(List<ScoutingReport> reports) {
  print('Enter team number to view stats:');
  String? teamStats = stdin.readLineSync();

  List<int> teamScores = [];

  for (ScoutingReport report in reports) {
    if (report.teamNumber == teamStats) {
      teamScores.add(report.scores.totalScore());
    }
  }

  if (teamScores.isEmpty) {
    print('Unfortunately, no scores can be found for that team. Please finish scouting and try again!');
    return;
  }

  int totalScore = 0;

  for (int score in teamScores) {
    totalScore += score;
  }

  //mean
  double mean = totalScore/teamScores.length;

  int minimum = teamScores[0];
  int maximum = teamScores[0];

  for (int score in teamScores) {
    if (score < minimum) {
      minimum = score;//minimum
    }

    if (score > maximum) {//maximum
      maximum = score;
    }
  }

  print('Mean score: $mean');
  print('Minimum score: $minimum');
  print('Maximum score: $maximum');

  //median
  teamScores.sort();

  double findMedian(List<int> scores) {
    int middle = scores.length ~/ 2;

    if (scores.length.isOdd) {
      return scores[middle].toDouble();
    } else {
      int leftMiddle = scores[middle - 1];
      int rightMiddle = scores[middle];

      return (leftMiddle + rightMiddle)/2;
    }
  }

  print('Median score: $median');

  //q1 and q3
  int middle = teamScores.length ~/2;

  List<int> lowerHalf = [];
  List<int> upperHalf = [];

  for (int i = 0; i < middle; i++) {
    lowerHalf.add(teamScores[i]);
  }

  int upperStart = middle;

  if (teamScores.length.isOdd) {
    upperStart = middle + 1;
  }

  for (int i = upperStart; i < teamScores.length; i++) {
    upperHalf.add(teamScores[i]);
  }

  double q1 = findMedian(lowerHalf);
  double q3 = findMedian(upperHalf);
  double iqr = q3 - q1;

  print('Q1: $q1');
  print('Q3: $q3');
  print('IQR: $iqr');

  double differenceTotal = 0;

  for (int score in teamScores) {
    double difference = score - mean;
    differenceTotal += difference * difference;
  }

  double variance = differenceTotal/teamScores.length;
  double standardDeviation = sqrt(variance);

  print('Standard deviation: $standardDeviation');
}