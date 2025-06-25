import 'dart:io';

void main() {
  print("Enter the first number:");
  int valueOne = int.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  int valueTwo = int.parse(stdin.readLineSync()!);

  int sum = valueOne + valueTwo;

  print("Total sum = $sum");
}
