import 'dart:io';

void main() {
  print("Enter the character value to know its ASCII");
  String value = stdin.readLineSync()!;
  print(value.codeUnits);
}
