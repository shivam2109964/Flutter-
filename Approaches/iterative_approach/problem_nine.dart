import 'dart:io';

void main() {
  stdout.write("Enter the length of an array: ");
  int length = int.parse(stdin.readLineSync()!);
  List<int> array = List.generate(length, (index) {
    stdout.write("Enter the ${index + 1} value: ");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });
  int result = secondLargestValue(array, length);
  print("Second Largest Value: $result");
}

int secondLargestValue(List<int> array, int length) {
  int largest = -1;
  int secondLargest = -1;
  for (int i = 0; i < length; i++) {
    if (array[i] > largest) {
      secondLargest = largest;
      largest = array[i];
    } else if (array[i] > secondLargest && array[i] != largest) {
      secondLargest = array[i];
    }
  }
  return secondLargest;
}
