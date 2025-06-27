import 'dart:io';

void main() {
  stdout.write("Enter the legnth of an array: ");
  int length = int.parse(stdin.readLineSync()!);
  List<int> array = List.generate(length, (index) {
    print("Enter the ${index + 1} value");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });

  // there are many ways so some of all element in dart
  //First fold
  int value = array.fold(0, (prev, next) => prev + next);
  print("The sum of value by fold: $value");

  // by forEach
  int byForEach = 0;
  array.forEach((value) {
    byForEach += value;
  });
  print("By forEach method the sum is $byForEach");

  // Manually
  int sum = 0;
  for (int i = 0; i < length; i++) {
    sum += array[i];
  }
  print("Manually Sum is $sum");
}
