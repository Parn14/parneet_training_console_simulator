class DashboardTools {
  static void printLines(int amount) {
    if (amount == 0) {
      return;
    }

    print(' ');
    printLines(amount - 1);
  }
}

void printDashboard() {
  DashboardTools.printLines(3);
  print('What scouting would you like to do today?');
}