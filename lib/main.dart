void main() {
  print("Welcome to the Parneet'/s scouting simulator!");
  bool working = true;

  while (working) {
    print ('What scouting would you like to do today?');
    print('1. Scout a robot'); //ask match or pits after?
    print('2. View scouting reports');
    print('3. Look at a team's stats');
    print('4. Exit');

    //next task: stdin for user input, match or pits scouting (maybe strategy too), define choice variable, change colors/bg, hardcode teams??, etc

    if (choice == '1') {
      print('Scouting a robot has been selected!');
    } else if (choice == '2') {
      print('View reports has been selected!');
    } else if (choice == '3') {
      print('Viewing team stats has been selected!');
    } else if (choice == '4') {
      print('Bye! Visit again!');
      working = false;
    } else {
      print('Invalid option. Please try again!');
    }
}
