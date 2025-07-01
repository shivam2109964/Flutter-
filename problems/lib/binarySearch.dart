import "package:collection/collection.dart";

void main() {
  List<int> array = [85, 45, 76, 24, 15, 64, 84, 76];
  array.sort();
  int result = binarySearch(array, 24);
  print(array);
  print("Result at index: $result");
}
