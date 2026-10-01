String login() {
  print('Please log into Bear Scouter');
  print('Enter your name:');

  String userInput = stdin.readLineSync() ?? '';
  String name = userInput.isEmpty ? 'Guest': userInput;

  return name;
}