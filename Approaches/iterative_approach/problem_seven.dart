import 'dart:io';

void main() {
  stdout.write("Enter the value to check its prime or not: ");
  int value = int.parse(stdin.readLineSync()!);
  bool result = checkPrime(value);
  if (result == true) {
    print("$value is prime no.");
  } else {
    print("Its not a prime no.");
  }
}

bool checkPrime(int value) {
  if (value <= 1) {
    return false;
  }
  if (value == 2) {
    return true;
  }
  if (value % 2 == 0) {
    return false;
  }
  for (int i = 3; i * i <= value; i += 2) {
    if (value % i == 0) {
      return false;
    }
  }
  return true;
}
