import 'dart:io';

void main() {
  stdout.write("Enter the number: ");
  int value = int.parse(stdin.readLineSync()!);
  int result = sumOfDigit(value);
  print(result);
}

int sumOfDigit(int value) {
  if (value == 0) {
    return 0;
  }
  return value % 10 + sumOfDigit(value ~/ 10);
}
