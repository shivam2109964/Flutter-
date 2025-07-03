import 'dart:io';

void main() {
  stdout.write("Enter the n value for cal fac: ");
  int value = int.parse(stdin.readLineSync()!);
  int result = factorialCalc(value);
  print("Factorial of $value is $result");
}

int factorialCalc(int value) {
  int fact = 1;
  for (int i = 1; i <= value; i++) {
    fact *= i;
  }
  return fact;
}
