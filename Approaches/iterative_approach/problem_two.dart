import 'dart:io';

void main() {
  stdout.write("Enter the value: ");
  int value = int.parse(stdin.readLineSync()!);
  int result = countValue(value);
  print("Total Digits is: $result");
}

int countValue(int value) {
  int count = 0;
  while (value != 0) {
    value = value ~/ 10;
    count++;
  }
  return count;
}
