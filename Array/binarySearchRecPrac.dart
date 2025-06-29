import 'dart:io';

void main() {
  stdout.write("Enter the length of array: ");
  int length = int.parse(stdin.readLineSync()!);
  List<int> array = List.generate(length, (index) {
    stdout.write("Enter the ${index + 1} value: ");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });
  insertionSort(array, length);
  print(array);
  stdout.write("Enter the value you search for: ");
  int search = int.parse(stdin.readLineSync()!);
  int result = binarySearchRecPrac(array, search, 0, length - 1);
  if (result != -1) {
    print("Match found at index: $result");
  } else {
    print("Match not found");
  }
}

int binarySearchRecPrac(List<int> array, int search, int low, int high) {
  if (low > high) {
    return -1;
  }
  if (low == high) {
    if (array[low] == search) {
      return low;
    } else {
      return -1;
    }
  } else {
    int mid = low + (high - low) ~/ 2;
    if (search == array[mid]) {
      return mid;
    }
    if (search < array[mid]) {
      return binarySearchRecPrac(array, search, low, mid - 1);
    } else {
      return binarySearchRecPrac(array, search, mid + 1, high);
    }
  }
}

void insertionSort(List<int> array, int length) {
  for (int i = 1; i < length; i++) {
    int key = array[i];
    int j = i - 1;
    while (j >= 0 && array[j] > key) {
      array[j + 1] = array[j];
      j--;
    }
    array[j + 1] = key;
  }
}
