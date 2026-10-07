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

  int middle = teamScores.length ~/2;
  double median;

  if ((teamScores.length/2) == (teamScores.length ~/2)) {
    median = (teamScores[middle -1] + teamScores[middle])/2;
  } else {
    median = teamScores[middle].toDouble();
  }

  print('Median score: $median');

  //q1 and q3
  List<int> lowerHalf = [];
  List<int> upperHalf = [];

  for (int i = 0; i < middle; i++) {
    lowerHalf.add(teamScores[i]);
  }

  int upperStart = middle;

  if ((teamScores.length/2) != (teamScores.length ~/2)) {
    upperStart = middle + 1;
  }

  for (int i = upperStart; i < teamScores.length; i++) {
    upperHalf.add(teamScores[i]);
  }

  int lowerMiddle = lowerHalf.length ~/2;
  int upperMiddle = upperHalf.length ~/2;

  double q1 = 0;
  double q3 = 0;

  if ((lowerHalf.length/2) == (lowerHalf.length ~/2)) {
    q1 = (lowerHalf[lowerMiddle - 1] + lowerHalf[lowerMiddle])/2;
  } else {
    q1 = lowerHalf[lowerMiddle].toDouble();
  }

  if ((upperHalf.length/2) == (upperHalf.length ~/2)) {
    q3 = (upperHalf[upperMiddle - 1] + upperHalf[upperMiddle])/2;
  } else {
    q3 = upperHalf[upperMiddle].toDouble();
  }

  print('Q1: $q1');
  print('Q3: $q3');

  //iqr
  double iqr = q3 - q1;
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