// Given an array arr. The task is to find the largest element in the given array.
void main() {
  List<int> array = [45, 78, 59, 12, 14, 36, 52, 46, 75, 95];
  int result = getLargest(array, array.length);
  print("Largest value is: $result");
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
