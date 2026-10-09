import 'dart:io';

String login() {
  print('\nPlease log into Bear Scouter!\n');
  print('Enter your name:');

  String userInput = stdin.readLineSync() ?? '';
  String name = userInput.isEmpty ? 'Guest': userInput;

  return name;
}