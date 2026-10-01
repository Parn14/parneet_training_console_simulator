String login() {
  print('Please log into Bear Scouter');
  print('Enter your name:');

  String name = stdin.readLineSync() ?? '';

  return name;
}