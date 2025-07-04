import 'dart:io';

void main() {
  stdout.write("Enter the n value: ");
  int n = int.parse(stdin.readLineSync()!);
  int result = sumRec(n);
  print("Total sum is: $result");
}

int sumRec(int n) {
  if (n == 0) {
    return n;
  }
  return n + sumRec(n - 1);
}
