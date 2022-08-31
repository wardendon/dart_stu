void main() {
  // String 转 int
  int one = int.parse('123');
  print(one);

  // String 转 double
  double two = double.parse('123.456');
  print(two);

  // int 转String
  String oneStr = 123.toString();
  print(oneStr);

  // double 转String
  String twoStr = 3.14159.toStringAsFixed(2);
  print(twoStr); // 3.14
}
