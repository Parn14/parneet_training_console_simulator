import 'pit_scouting_report.dart';
import 'dart:io';

class PitScoutingReport {
  int teamNumber;
  String teamName;
  String driveTrain;
  String intakeType;
  bool canClimb;
  String notes;

  PitScoutingReport(
      this.teamNumber,
      this.teamName,
      this.driveTrain,
      this.intakeType,
      this.canClimb,
      this.notes,
      );

  void printInfo() {
    print('Team $teamNumber: $teamName');
    print('Drive train: $driveTrain');
    print('Intake: $intakeType');
    print('Can climb: $canClimb');
    print('Notes: $notes');
  }
}
