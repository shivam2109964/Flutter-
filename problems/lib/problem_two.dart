void main() {
  List<int> array = [10, 10, 10, 10, 10, 9];
  int result = secondLargestElem(array);
  print("Second Largest value is: $result");
  int resultTwo = secondLargestByTwoPass(array);
  print("Second Largest Value by Two pass: $resultTwo");
  int resultThree = secondLargestByOnePass(array);
  print("Second Largest Value by One Pass: $resultThree");
}

int secondLargestByOnePass(List<int> array) {
  int length = array.length;
  int largest = -1;
  int secondLargest = -1;
  for (int i = 0; i < length; i++) {
    if (array[i] > largest) {
      secondLargest = largest;
      largest = array[i];
    } else if (array[i] < largest && array[i] > secondLargest) {
      secondLargest = array[i];
    }
  }
  return secondLargest;
}

int secondLargestByTwoPass(List<int> array) {
  int length = array.length;
  int largest = -1;
  int secondLargest = -1;
  for (int i = 0; i < length; i++) {
    if (array[i] > largest) {
      largest = array[i];
    }
  }
  for (int i = 0; i < length; i++) {
    if (array[i] > secondLargest && array[i] != largest) {
      secondLargest = array[i];
    }
  }
  return secondLargest;
}

int secondLargestElem(List<int> array) {
  int length = array.length;
  insertionSort(array, length);
  for (int i = length - 2; i >= 0; i--) {
    if (array[i] != array[length - 1]) {
      return array[i];
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
