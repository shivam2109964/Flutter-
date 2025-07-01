// Given an array arr. The task is to find the largest element in the given array.
import 'dart:math';

void main() {
  List<int> array = [45, 78, 59, 12, 14, 36, 52, 46, 75, 95];
  int result = getLargest(array, array.length);
  print("Largest value is: $result");
  int resultByRec = recLargest(array);
  print("Largest Value by Recursion: $resultByRec");
}

int recLargest(List<int> array) {
  return findMax(array, 0);
}

int findMax(List<int> array, int index) {
  if (index == array.length - 1) {
    return array[index];
  }
  int recMax = findMax(array, index + 1);
  return max(recMax, array[index]);
}

int getLargest(List<int> array, int length) {
  int max = array[0];
  for (int i = 1; i < length; i++) {
    if (array[i] > max) {
      max = array[i];
    }
  }
  return max;
}
