void main() {
  int number = 1;
  int numberTwo = 2;

  print("Original Number: $number");
  print("Original Number: $numberTwo");
  print("");

  String numberStr = number.toRadixString(2).padLeft(4, "0");
  String numberStrTwo = numberTwo.toRadixString(2).padLeft(4, "0");

  print(numberStr);
  print(numberStrTwo);
  print("");

  int shiftOne = number << 3;
  int shiftTwo = numberTwo << 3;

  String resultOne = shiftOne.toRadixString(2).padLeft(4, "0");
  String resultTwo = shiftTwo.toRadixString(2).padLeft(4, "0");

  print("New value: $resultOne");
  print("New value: $resultTwo");
  print("");
  int decimalOne = int.parse(resultOne, radix: 2);
  int decimalTwo = int.parse(resultTwo, radix: 2);

  print("New number: $decimalOne");
  print("New number: $decimalTwo");
}
