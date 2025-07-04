import 'dart:io';

void main() {
  stdout.write("Enter the String value: ");
  String str = stdin.readLineSync()!;
  stdout.write("Enter the char value: ");
  String char = stdin.readLineSync()!;
  int result = freqCount(str, char);
  print("The String: $str char: $char frequency is $result");
}

int freqCount(String str, String char) {
  int count = 0;
  for (int i = 0; i < str.length; i++) {
    if (str[i] == char) {
      count++;
    }
  }
  return count;
}
