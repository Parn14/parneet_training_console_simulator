class PitScoutingReport {
  String teamNumber;
  String teamName;
  String driveTrain;
  String intakeType;
  bool canClimb;
  String notes;

  PitScoutingReport(this.teamNumber, this.teamName, this.driveTrain, this.intakeType, this.canClimb, this.notes);

  void printInfo() {
    print('Team $teamNumber: $teamName');
    print('Drive train: $driveTrain');
    print('Intake type: $intakeType');
    print('Can robot climb: $canClimb');
    print('Additional Notes: $notes');
  }
}