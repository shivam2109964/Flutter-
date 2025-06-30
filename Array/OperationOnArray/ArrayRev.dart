import 'dart:io';

void main() {
  List<int> arrayRev = [1, 2, 3, 4, 5];
  stdout.write("Original Array: $arrayRev");
  print("\nLinear Array");
  for (int i = arrayRev.length - 1; i >= 0; i--) {
    stdout.write("${arrayRev[i]} ");
  }
}
