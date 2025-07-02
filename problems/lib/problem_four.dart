void main() {
  List<int> array = [8, 2, 4, 5, 3, 7, 1];
  int result = missingValueByLinear(array);
  print("Missing value is: $result");
  int resultOne = missingNumberByHash(array);
  print("Missing Value is: $resultOne");
  int resultTwo = missingNumberByFormula(array);
  print("Missing Value is: $resultTwo");
  int resultThree = missingByXor(array);
  print("Missing Value is: $resultThree");
}

int missingByXor(List<int> array) {
  int length = array.length + 1;
  int xor_1 = 0;
  int xor_2 = 0;
  for (int i = 0; i < length - 1; i++) {
    xor_2 ^= array[i];
  }
  for (int i = 1; i <= length; i++) {
    xor_1 ^= i;
  }
  return xor_1 ^ xor_2;
}

int missingNumberByFormula(List<int> array) {
  int length = array.length + 1;
  int sum = 0;
  for (int i = 0; i < array.length; i++) {
    sum += array[i];
  }
  int expSum = length * (length + 1) ~/ 2;
  return expSum - sum;
}

int missingNumberByHash(List<int> array) {
  int length = array.length + 1;
  List<int> hash = List.filled(length + 1, 0);
  for (int i = 0; i < length - 1; i++) {
    hash[array[i]]++;
  }
  for (int j = 1; j <= length; j++) {
    if (hash[j] == 0) {
      return j;
    }
  }
  return -1;
}

int missingValueByLinear(List<int> array) {
  int length = array.length + 1;
  for (int i = 1; i <= length - 1; i++) {
    bool found = false;
    for (int j = 0; j < length - 1; j++) {
      if (array[j] == i) {
        found = true;
        break;
      }
    }
    if (!found) {
      return i;
    }
  }
  return -1;
}
