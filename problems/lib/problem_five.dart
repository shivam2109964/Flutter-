void main() {
  List<int> array = [10, 5, 3, 4, 4, 3, 5, 6];
  int index = firstRepeatingElement(array, array.length);
  if (index != -1) {
    print("First Element is ${array[index]}");
  } else {
    print("No Repeating Element");
  }
}

int firstRepeatingElement(List<int> array, int length) {
  for (int i = 0; i < length; i++) {
    for (int j = 1 + 1; j < length; j++) {
      if (array[i] == array[j]) {
        return i;
      }
    }
  }
  return -1;
}
