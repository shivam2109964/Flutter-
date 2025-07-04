import 'dart:io';

void main() {
  stdout.write("Enter the String value: ");
  String str = stdin.readLineSync()!;
  reverseString(str, str.length - 1);
}

void reverseString(String str, int index) {
  if (index < 0) {
    return;
  }
  stdout.write(str[index]);
  reverseString(str, index - 1);
}
