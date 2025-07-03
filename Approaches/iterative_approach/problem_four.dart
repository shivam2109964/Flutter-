import 'dart:io';

void main() {
  stdout.write("Enter the length of value: ");
  int length = int.parse(stdin.readLineSync()!);
  List<int> array = List.generate(length, (index) {
    stdout.write("Enter the ${index + 1} value: ");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });
  int sum = 0;
  for (int i = 0; i < array.length; i++) {
    sum += array[i];
  }
  print("Total sum is: $sum");
}
