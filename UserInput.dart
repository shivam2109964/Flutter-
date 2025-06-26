import 'dart:io';

void main() {
  stdout.write("Enter an Integer: ");
  int value = int.parse(stdin.readLineSync()!);

  print("You entered: $value");
}
