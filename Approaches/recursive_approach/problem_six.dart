import 'dart:io';

void main() {
  stdout.write("Enter the String value: ");
  String value = stdin.readLineSync()!;
  bool result = checkPalindrome(value, 0, value.length - 1);
  if (result) {
    print("Its a palindrome.");
  } else {
    print("Its not a palindrome.");
  }
}

bool checkPalindrome(String str, int start, int end) {
  if (start >= end) {
    return true;
  }
  if (str[start] != str[end]) {
    return false;
  }
  return checkPalindrome(str, start + 1, end - 1);
}
