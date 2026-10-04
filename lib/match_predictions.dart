import 'scouting_report.dart';

void predictMatch(List<ScoutingReport> reports) {
  print('Time to predict the results of 3v3 matches!');

  print('Enter red alliance team 1:');
  String? red1 = stdin.readLineSync();

  print('Enter red alliance team 2:');
  String? red2 = stdin.readLineSync();

  print('Enter red alliance team 3:');
  String? red3 = stdin.readLineSync();

  print('Red Alliance: $blue1, $blue2, $blue3');

  print('Enter blue alliance team 1:');
  String? blue1 = stdin.readLineSync();

  print('Enter blue alliance team 2:');
  String? blue2 = stdin.readLineSync();

  print('Enter blue alliance team 3:');
  String? blue3 = stdin.readLineSync();

  print('Blue Alliance: $blue1, $blue2, $blue3');

  //average score for red1
  int red1Total = 0;
  int red1Matches = 0;

  for (ScoutingReport report in reports) {
    if (report.teamNumber == red1) {
      red1Total += report.score;
      red1Matches++;
    }
  }

  double red1Average = 0;

  if (red1Matches > 0) {
    red1Average = red1Total / red1Matches;
  }

  int red2Total = 0;
  int red2Matches = 0;

  for (ScoutingReport report in reports) {
    if (report.teamNumber == red2) {
      red2Total += report.score;
      red2Matches++;
    }
  }

  double red2Average = 0;

  if (red2Matches > 0) {
    red2Average = red2Total / red2Matches;
  }

  int red3Total = 0;
  int red3Matches = 0;

  for (ScoutingReport report in reports) {
    if (report.teamNumber == red3) {
      red3Total += report.score;
      red3Matches++;
    }
  }

  double red3Average = 0;

  if (red3Matches > 0) {
    red3Average = red3Total / red3Matches;
  }

  print('Red 1 average: $red1Average');
  print('Red 2 average: $red2Average');
  print('Red 3 average: $red3Average');

  int blue1Total = 0;
  int blue1Matches = 0;

  for (ScoutingReport report in reports) {
    if (report.teamNumber == blue1) {
      blue1Total += report.score;
      blue1Matches++;
    }
  }

  double blue1Average = 0;

  if (blue1Matches > 0) {
    blue1Average = blue1Total / blue1Matches;
  }

  int blue2Total = 0;
  int blue2Matches = 0;

  for (ScoutingReport report in reports) {
    if (report.teamNumber == blue2) {
      blue2Total += report.score;
      blue2Matches++;
    }
  }

  double blue2Average = 0;

  if (blue2Matches > 0) {
    blue2Average = blue2Total / blue2Matches;
  }

  int blue3Total = 0;
  int blue3Matches = 0;

  for (ScoutingReport report in reports) {
    if (report.teamNumber == blue3) {
      blue3Total += report.score;
      blue3Matches++;
    }
  }

  double blue3Average = 0;

  if (blue3Matches > 0) {
    blue3Average = blue3Total / blue3Matches;
  }

  print('Blue 1 average: $blue1Average');
  print('Blue 2 average: $blue2Average');
  print('Blue 3 average: $blue3Average');

  double redAllianceAverage = red1Average + red2Average + red3Average;

  double blueAllianceAverage = blue1Average + blue2Average + blue3Average;

  print('\n 3v3 Match Predictions\n')
  print('Red alliance predicted score: $redAllianceAverage');
  print('Blue alliance predicted score: $blueAllianceAverage');

  double scoreDifference = redAllianceAverage - blueAllianceAverage;
  print('Predicted score difference: $scoreDifference'); //remember e=a-p

  if (redAllianceAverage > blueAllianceAverage) {
    print('The red alliance is predicted to win!');
  } else if (blueAllianceAverage > redAllianceAverage) {
    print('The blue alliance is predicted to win!');
  } else {
    print('The match is predicted to be a tie!');
  }

  print('Prediction complete!');
}