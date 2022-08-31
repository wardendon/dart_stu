import 'dart:math';

class Point {
  final num x;
  final num y;
  final num distance;

  // 初始化列表的调用是在构造方法之前，也就是在类完成实例化之前，因此初始化列表中是不能访问 this的
  Point(x, y)
      : x = x,
        y = y,
        distance = sqrt(x * x + y * y) {
    print("这是构造方法");
  }
}

void main() {
  var p = Point(2, 4);
  print(p.distance); // 这是构造方法; 4.47213595499958
}
