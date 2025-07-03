// Print Even Numbers from 1 to N
// Input: N = 10
// Output: 2 4 6 8 10

import 'dart:io';

void main() {
  stdout.write("Enter the N value to know Even numbers: ");
  int value = int.parse(stdin.readLineSync()!);
  List<int> result = evenNumbers(value);
  print(result);
}

List<int> evenNumbers(int value) {
  List<int> evenValue = [];
  for (int i = 1; i <= value; i++) {
    if (i % 2 == 0) {
      evenValue.add(i);
    }
  }
  return evenValue;
}
