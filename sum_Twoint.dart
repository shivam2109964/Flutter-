import 'dart:io';

void main() {
  print("Enter the integers:");
  int value = int.parse(stdin.readLineSync()!);
  int value_one = int.parse(stdin.readLineSync()!);
  int result = value + value_one;
  print("$value + $value_one = $result");
}
