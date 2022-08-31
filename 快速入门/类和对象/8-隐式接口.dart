class People {
  void greet() {
    print("Hello");
  }
}

// 每个类都有一个隐式接口可以被实现
class Student implements People {
  @override
  void greet() => print("Hi, 你好哇");
}

test(People p) {
  p.greet();
}

void main() {
  test(Student()); // Hi, 你好哇
}
