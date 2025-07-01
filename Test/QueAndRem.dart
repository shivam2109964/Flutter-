import 'dart:io';

void main() {
  stdout.write("Enter dividend: ");
  int numerator = int.parse(stdin.readLineSync()!);
  stdout.write("Enter divisor: ");
  int denominator = int.parse(stdin.readLineSync()!);

  int quotient = numerator ~/ denominator;
  int remainder = numerator % denominator;

  print("Quotient = $quotient");
  print("Remainder = $remainder");
}
