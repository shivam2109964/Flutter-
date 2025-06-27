void main() {
  List<int> array = [6, 3, 17, 85, 31, 764, 24, 270];
  int key = 270;
  int result = linearSearch(key, array.length, array);
  if (result != -1) {
    print("Match is found at index: $result");
  } else {
    print("Match is not found");
  }
}

int linearSearch(int key, int length, List<int> array) {
  for (int i = 0; i < length; i++) {
    if (array[i] == key) {
      return i;
    }
  }
  return -1;
}
