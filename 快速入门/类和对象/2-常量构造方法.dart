/**
 * 如果想提供一个状态永远不变的对像，在Dart中，我们可以创建一个编译时常量对象，节省开销。
 */
class ConstPoint {
  final num x;
  final num y;
  // 使用const 修饰构造方法
  const ConstPoint(this.x, this.y);
  // 编译时常量对象，需使用const来创建对象
  static final ConstPoint origin = const ConstPoint(11, 22);
}

void main() {
  print(ConstPoint.origin.x); // 11
  print(ConstPoint.origin.y); // 22
}
