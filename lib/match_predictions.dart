import 'scouting_report.dart';
import 'dart:io';

void predict3v3Match(List<ScoutingReport> reports) {
  print('\nTime to predict a 3v3 match!\n');

  int? red1;

  while (red1 == null) {
    print('Enter Red Team 1:');
    String? teamName = stdin.readLineSync();

    if (teamName == null || teamName.isEmpty) {
      print('Returning to main menu now!');
      return;
    }

    red1 = int.tryParse(teamName);

    if (red1 == null) {
      print('Invalid team number. Please try again.');
    }
  }

  int? red2;

  while (red2 == null) {
    print('Enter Red Team 2:');
    String? teamName = stdin.readLineSync();

    if (teamName == null || teamName.isEmpty) {
      print('Returning to main menu now!');
      return;
    }

    red2 = int.tryParse(teamName);

    if (red2 == null) {
      print('Invalid team number. Please try again.');
    }
  }

  int? red3;

  while (red3 == null) {
    print('Enter Red Team 3:');
    String? teamName = stdin.readLineSync();

    if (teamName == null || teamName.isEmpty) {
      print('Returning to main menu now!');
      return;
    }

    red3 = int.tryParse(teamName);

    if (red3 == null) {
      print('Invalid team number. Please try again.');
    }
  }

  int? blue1;

  while (blue1 == null) {
    print('Enter Blue Team 1:');
    String? teamName = stdin.readLineSync();

    if (teamName == null || teamName.isEmpty) {
      print('Returning to main menu now!');
      return;
    }

    blue1 = int.tryParse(teamName);

    if (blue1 == null) {
      print('Invalid team number. Please try again.');
    }
  }

  int? blue2;

  while (blue2 == null) {
    print('Enter Blue Team 2:');
    String? teamName = stdin.readLineSync();

    if (teamName == null || teamName.isEmpty) {
      print('Returning to main menu now!');
      return;
    }

    blue2 = int.tryParse(teamName);

    if (blue2 == null) {
      print('Invalid team number. Please try again.');
    }
  }

  int? blue3;

  while (blue3 == null) {
    print('Enter Blue Team 3:');
    String? teamName = stdin.readLineSync();

    if (teamName == null || teamName.isEmpty) {
      print('Returning to main menu now!');
      return;
    }

    blue3 = int.tryParse(teamName);

    if (blue3 == null) {
      print('Invalid team number. Please try again.');
    }
  }

  print('\nRed Alliance: $red1, $red2, $red3\n');
  print('Blue Alliance: $blue1, $blue2, $blue3\n');

  //red totals
  int red1Total = 0;
  int red1Matches = 0;

  for (ScoutingReport report in reports) {
    if (report.teamNumber == red1) {
      red1Total += report.scores.totalScore();
      red1Matches++;
    }
  }

  double red1Average = 0;

  if (red1Matches> 0) {
    red1Average = red1Total/red1Matches;
  }

  int red2Total = 0;
  int red2Matches = 0;

  for (ScoutingReport report in reports) {
    if (report.teamNumber == red2) {
      red2Total += report.scores.totalScore();
      red2Matches++;
    }
  }

  double red2Average = 0;
  if (red2Matches > 0) {
    red2Average = red2Total/red2Matches;
  }

  int red3Total = 0;
  int red3Matches = 0;

  for (ScoutingReport report in reports) {
    if (report.teamNumber == red3) {
      red3Total += report.scores.totalScore();
      red3Matches++;
    }
  }

  double red3Average = 0;
  if (red3Matches > 0) {
    red3Average = red3Total/red3Matches;
  }

  //blue totals
  int blue1Total = 0;
  int blue1Matches = 0;

  for (ScoutingReport report in reports) {
    if (report.teamNumber == blue1) {
      blue1Total += report.scores.totalScore();
      blue1Matches++;
    }
  }

  double blue1Average = 0;
  if (blue1Matches > 0) {
    blue1Average = blue1Total/blue1Matches;
  }

  int blue2Total = 0;
  int blue2Matches =0;

  for (ScoutingReport report in reports) {
    if (report.teamNumber == blue2) {
      blue2Total += report.scores.totalScore();
      blue2Matches++;
    }
  }

  double blue2Average = 0;
  if (blue2Matches > 0) {
    blue2Average = blue2Total/blue2Matches;
  }

  int blue3Total = 0;
  int blue3Matches = 0;

  for (ScoutingReport report in reports) {
    if (report.teamNumber == blue3) {
      blue3Total += report.scores.totalScore();
      blue3Matches++;
    }
  }

  double blue3Average = 0;
  if (blue3Matches> 0) {
    blue3Average = blue3Total/blue3Matches;
  }

  //not enough data to make prediciton
  if (red1Matches == 0|| red2Matches == 0 || red3Matches == 0 || blue1Matches == 0 || blue2Matches == 0 || blue3Matches == 0) {
    print('\n Unfortunately, there isn\'t enough scouting data to make a prediction yet.\n');
    return;
  }

  print('\nRed Team Averages');
  print('$red1: ${red1Average.toStringAsFixed(1)}');
  print('$red2: ${red2Average.toStringAsFixed(1)}');
  print('$red3: ${red3Average.toStringAsFixed(1)}');

  print('\nBlue Team Averages');
  print('$blue1: ${blue1Average.toStringAsFixed(1)}');
  print('$blue2: ${blue2Average.toStringAsFixed(1)}');
  print('$blue3: ${blue3Average.toStringAsFixed(1)}');

  double redPrediction = red1Average + red2Average + red3Average;
  double bluePrediction = blue1Average + blue2Average + blue3Average;

  print('\nRed Alliance Predicted Score: ${redPrediction.toStringAsFixed(1)}\n');
  print('Blue Alliance Predicted Score: ${bluePrediction.toStringAsFixed(1)}\n');

  if (redPrediction > bluePrediction) {
    print('\nRed Alliance is predicted to win! Woo!');
  } else if (bluePrediction > redPrediction) {
    print('\nBlue Alliance is predicted to win! Woo!');
  } else {
    print('\nThe match is predicted to tie! Woo!');
  }
}