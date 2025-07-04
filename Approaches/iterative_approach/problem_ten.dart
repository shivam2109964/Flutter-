import 'dart:io';

void main() {
  stdout.write("Enter the length of an array: ");
  int length = int.parse(stdin.readLineSync()!);
  List<int> array = List.generate(length, (index) {
    stdout.write("Enter the ${index + 1} value: ");
    int value = int.parse(stdin.readLineSync()!);
    return value;
  });
  bool result = isPalindrome(array, length);
  if (result == true) {
    print("Its Palindrome");
  } else {
    print("Its not Palindrome");
  }
}

bool isPalindrome(List<int> array, int length) {
  bool isPalindrome = true;
  for (int i = 0; i <= (length ~/ 2) && length != 1; i++) {
    if (array[i] != array[length - 1 - i]) {
      isPalindrome = false;
      break;
    }
  }
  return isPalindrome;
}
