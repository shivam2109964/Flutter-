import 'dart:io';

void main() {
  stdout.write("Enter the n value: ");
  int n = int.parse(stdin.readLineSync()!);
  printRec(n);
}

void printRec(int n) {
  if (n == 0) {
    return;
  }
  print(n);
  printRec(n - 1);
}
