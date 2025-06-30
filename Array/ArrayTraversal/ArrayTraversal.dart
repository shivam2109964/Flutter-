import 'dart:io';

void main() {
  List<int> array = [3, 2, 56, 75, 31, 32];
  stdout.write("Enter the original array: $array");
  print("\nLinear Array");
  for (int i = 0; i < array.length; i++) {
    stdout.write("${array[i]} ");
  }
}
