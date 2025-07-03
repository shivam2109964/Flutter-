import 'dart:math';

void main() {
  List<int> array = [45, 78, 96, 48, 21, 46, 35, 28, 71, 65, 84, 92, 64];
  int result = findLargestElement(array);
  print("Largest Element is: $result");
  int resultOne = largest(array);
  print("Largest Element is: $resultOne");
}

int findLargestElementRec(List<int> array, int i) {
  // Base case
  if (i == array.length - 1) {
    return array[i];
  }

  int recMax = findLargestElementRec(array, i + 1);
  return max(recMax, array[i]);
}

int largest(List<int> array) {
  return findLargestElementRec(array, 0);
}

int findLargestElement(List<int> array) {
  int length = array.length;
  int max = array[0];
  for (int i = 1; i < length; i++) {
    if (array[i] > max) {
      max = array[i];
    }
  }
  return max;
}
