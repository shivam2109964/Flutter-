import 'dart:io';

void main() {
  stdout.write("Enter the String value: ");
  String str = stdin.readLineSync()!;
  List<String> revStr = [];
  for (int i = str.length - 1; i >= 0; i--) {
    revStr.add(str[i]);
  }
  print("Reverse String: ${revStr.join("")}");
}
