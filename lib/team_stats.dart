import 'scouting_report.dart';

void teamStatsReports(List <ScoutingReport> reports) {

  print('\nEnter team number to view reports:\n');
  String? searchedTeam = stdin.readLineSync();

  foundTeam = false;
  for (ScoutingReport report in reports) {
    if (report.teamNumber == searchTeam) {
      report.printInfo();
      foundTeam = true;
    }
  }

  if (foundTeam == false) {
    print('No reports have been found for that team. Please scout and come back again!');
  }
} else if (choice == '6') {
print('Enter team number to view stats:');

String? teamStats = stdin.readLineSync();

List<int> teamScores = [];

for (ScoutingReport report in reports) {
if (report.teamNumber == teamStats) {
teamScores.add(report.score);
}
}

if (teamScores.isEmpty) {
print('No scores found for that team.');
} else {
int totalScore = 0;

//mean
for (int score in teamScores) {
totalScore += score;
}

double mean = totalScore/teamScores.length;

int minimum = teamScores[0];
int maximum = teamScores[0];
//min
for (int score in teamScores) {
if (score < minimum) {
minimum = score;
}
//max
if (score > maximum) {
maximum = score;
}
}

print('Mean score: $mean');
print('Minimum score: $minimum');
print('Maximum score: $maximum');

// median
teamScores.sort();

double median;
int middle = teamScores.length ~/2; //integer division (divides and throws away the decimal poriton (step functions but it won't round)

if (if (teamScores.length/2) == (teamScores.length ~/2)) {
median = (teamScores[middle -1] + teamScores[middle])/2;
} else {
median = teamScores[middle].toDouble();
}

print('Median score: $median');
//q3 and q1
List<int> lowerHalf = [];
List<int> upperHalf = [];

int upperStart = middle;

if ((teamScores.length/2) != (teamScores.length ~/2)) {
upperStart = middle + 1;
}

for (int i = upperStart; i < teamScores.length; i++) {
upperHalf.add(teamScores[i]);
}

int lowerMiddle = lowerHalf.length ~/2;
int upperMiddle = upperHalf.length ~/2;

double q1 = 0
double q3 = 0

if ((lowerHalf.length/2) == (lowerHalf.length ~/2)) {
q1 = (lowerHalf[lowerMiddle-1] + lowerHalf[lowerMiddle])/2;
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

//sd
double differenceTotal = 0;

for (int score in teamScores) {
double difference = score - mean;
differenceTotal += difference * difference;
}

double variance = differenceTotal/teamScores.length;
double standardDeviation = sqrt(variance);

print('Standard deviation: $standardDeviation');
}
}