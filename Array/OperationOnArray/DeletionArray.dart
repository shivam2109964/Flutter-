void main() {
  List<int> array = [];
  array.add(0);
  array.add(1);
  array.add(2);
  array.add(3);
  array.add(4);
  array.add(5);
  array.add(6);
  array.insert(4, 69);
  print(array);
  array.removeAt(4);
  array.removeAt(0);
  array.removeLast();
  print(array);
}
