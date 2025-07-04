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
  printRec(n - 1);
  print("$n");
}
