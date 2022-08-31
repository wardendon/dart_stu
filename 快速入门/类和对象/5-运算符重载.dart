class Point {
  int x;
  int y;

  Point(this.x, this.y);

  // 使用operator关键字，为该类重载“+”运算符
  Point operator +(Point p) {
    return Point(this.x + p.x, this.y + p.y);
  }

  // 为该类重载“-”运算符
  Point operator -(Point p) {
    return Point(this.x - p.x, this.y - p.y);
  }
}

void main() {
  var p1 = Point(1, 5);
  var p2 = Point(5, 6);
  var p3 = p1 + p2;
  var p4 = p2 - p1;
  print("${p3.x},${p3.y}"); // 6, 11
  print("${p4.x} , ${p4.y}"); // 4, 1
}
