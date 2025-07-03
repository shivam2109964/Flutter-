void main() {
  List<int> array = [45, 78, 96, 48, 21, 46, 35, 28, 71, 65, 84, 92, 64];
  int result = findLargestElement(array);
  print("Largest Element is: $result");
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
