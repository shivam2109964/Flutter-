import 'dart:io';

void main() {
  stdout.write("Enter the n value: ");
  int n = int.parse(stdin.readLineSync()!);
  int result = factorialFind(n);
  print(result);
}

int factorialFind(int n) {
  if (n == 1) {
    return n;
  }
  return n * factorialFind(n - 1);
}
