import 'dart:io';

void main() {
  List<int> array = [10, 9, 9];
  List<num> getValue = getThreeLargest(array);
  for (var value in getValue) {
    stdout.write("$value ");
  }
  print("");
  List<num> getValueTrav = threeTraversal(array);
  for (var value in getValueTrav) {
    stdout.write("$value ");
  }
}

List<num> threeTraversal(List<num> array) {
  int length = array.length;
  num largest = double.negativeInfinity;
  num secondLargest = double.negativeInfinity;
  num thirdLargest = double.negativeInfinity;

  List<num> res = [];

  for (int i = 0; i < length; i++) {
    if (array[i] > largest) {
      largest = array[i];
    }
  }
  if (largest == double.negativeInfinity) {
    return res;
  }
  res.add(largest);

  for (int i = 0; i < length; i++) {
    if (array[i] > secondLargest && array[i] != largest) {
      secondLargest = array[i];
    }
  }
  if (secondLargest == double.negativeInfinity) {
    return res;
  }
  res.add(secondLargest);

  for (int i = 0; i < length; i++) {
    if (array[i] > thirdLargest &&
        array[i] != secondLargest &&
        array[i] != largest) {
      thirdLargest = array[i];
    }
  }
  if (thirdLargest == double.negativeInfinity) {
    return res;
  }
  res.add(thirdLargest);
  return res;
}

List<num> getThreeLargest(List<int> array) {
  num first = double.negativeInfinity;
  num second = double.negativeInfinity;
  num third = double.negativeInfinity;
  for (var value in array) {
    if (value > first) {
      third = second;
      second = first;
      first = value;
    } else if (value > second && value != first) {
      third = second;
      second = value;
    } else if (value > third && value != second && value != first) {
      third = value;
    }
  }
  List<num> res = [];
  if (first < 0) {
    return res;
  }
  res.add(first);
  if (second < 0) {
    return res;
  }
  res.add(second);
  if (third < 0) {
    return res;
  }
  res.add(third);
  return res;
}
