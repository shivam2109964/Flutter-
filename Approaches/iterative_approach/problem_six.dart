import 'dart:io';

void main() {
  stdout.write("Enter the length of an array: ");
  int length = int.parse(stdin.readLineSync()!);
  List<int> array = List.generate(length, (index) {
    stdout.write("Enter the ${index + 1} value: ");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });
  int max = maxValue(array);
  int min = minValue(array);
  print("MAX: $max, MIN: $min");
}

int maxValue(List<int> array) {
  int max = array[0];
  for (int i = 1; i < array.length; i++) {
    if (array[i] > max) {
      max = array[i];
    }
  }
  return max;
}

int minValue(List<int> array) {
  int min = array[0];
  for (int i = 1; i < array.length; i++) {
    if (array[i] < min) {
      min = array[i];
    }
  }
  return min;
}
