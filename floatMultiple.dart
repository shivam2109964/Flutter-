import 'dart:io';

void main() {
  print("Enter the number");
  double value = double.parse(stdin.readLineSync()!);
  double value_one = double.parse(stdin.readLineSync()!);

  double result = value * value_one;
  print("$value * $value_one = $result");
}
