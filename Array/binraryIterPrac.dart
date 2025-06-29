import 'dart:io';

void main() {
  stdout.write("Enter the length of an array: ");
  int length = int.parse(stdin.readLineSync()!);
  List<int> array = List.generate(length, (index) {
    stdout.write("Enter the ${index + 1} element: ");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });
  stdout.write("Enter the number you search for: ");
  int search = int.parse(stdin.readLineSync()!);

  insertionSort(array, length);
  print(array);
  int result = binarySearchIter(array, search, 0, length - 1);
  if (result != -1) {
    print("Match found at index: $result");
  } else {
    print("Match not found");
  }
}

int binarySearchIter(List<int> array, int search, int low, int high) {
  while (low <= high) {
    int mid = low + (high - low) ~/ 2;
    if (search == array[mid]) {
      return mid;
    }
    if (search < array[mid]) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }
  return -1;
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
