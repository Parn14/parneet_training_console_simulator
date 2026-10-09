import 'scouting_report.dart';
import 'dart:math';
import 'dart:io';

void teamStatsReports(List <ScoutingReport> reports) {
  print('Enter team number to view stats:');

  int? teamNumber = int.tryParse(stdin.readLineSync() ?? '');

  if (teamNumber == null) {
    print('Invalid team number. Please try again!');
    return;
  }

  List<int> teamScores = [];

  for (ScoutingReport report in reports) {
    if (report.teamNumber == teamNumber) {
      teamScores.add(report.scores.totalScore());
    }
  }

  if (teamScores.isEmpty) {
    print('Unfortunately, no scores can be found for that team. Please finish scouting and try again!');
    return;
  }

  //mean
  int totalScore = 0;

  for (int score in teamScores) {
    totalScore += score;
  }

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

  print('\nTeam Stats:\n');

  print('Mean score: $mean\n');
  print('Minimum score: $minimum\n');
  print('Maximum score: $maximum\n');

  //median
  teamScores.sort();//orders in smallest to largest

  double findMedian(List<int> scores) {
    int middle = scores.length ~/ 2;

    if (scores.length.isOdd) {
      return scores[middle].toDouble();
    } else {
      return (scores[middle -1]+ scores [middle])/2;
    }
  }

  double median = findMedian(teamScores);

  double q1;
  double q3;

  if(teamScores.length == 1) {
    q1 = teamScores[0].toDouble();
    q3 = teamScores[0].toDouble();
  }else {
    int middle = teamScores.length ~/ 2;

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

    q1 = findMedian(lowerHalf);
    q3 = findMedian(upperHalf);
  }

  double iqr = q3 - q1;
  double differenceTotal = 0;

  print('Median: $median\n');
  print('Q1: $q1\n');
  print('Q3: $q3\n');
  print('IQR: $iqr\n');


  for (int score in teamScores) {
    double difference = score - mean;
    differenceTotal += difference * difference;
  }

  double variance = differenceTotal/teamScores.length;
  double standardDeviation = sqrt(variance);

  print('Standard deviation: $standardDeviation\n');
}