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
}