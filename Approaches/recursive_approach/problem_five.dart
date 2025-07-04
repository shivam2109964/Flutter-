import 'dart:io';

void main() {
  stdout.write("Enter the x value: ");
  int x = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the y value: ");
  int y = int.parse(stdin.readLineSync()!);
  int result = powerRec(x, y);
  print(result);
}

int powerRec(int x, int y) {
  if (y == 0) {
    return 1;
  }
  return x * powerRec(x, y - 1);
}
