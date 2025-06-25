import 'dart:io';

void main() {
  print("Enter the first number:");
  int value = int.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  int value_one = int.parse(stdin.readLineSync()!);

  int total = value ~/ value_one;

  print("Total sum is: $total");
}
