class Person {
  String? name;
  int? age;

  // 构造函数
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  //默认构造函数的简写
  Person(this.name, this.age);

  // 命明构造方法
  Person.formData(Map data) {
    this.name = data['username'];
    this.age = data['age'];
  }
  /**
   * 构造方法重定向
   * 有时候一个构造方法会调动类中的其他构造方法来实例化，这时候可以使用构造方法重定向，
   */
  Person.aloneName(String name) : this(name, 1);

  void printInfo() {
    print("Person1:$name----$age");
  }
}

void main() {
  // 在创建对象时，new关键字并不是必须的，可以省略不写
  Person p = Person("wangdong", 12);
  p.printInfo(); // Person1:wangdong----12
  Person p2 = Person.formData({"username": "jojo", "age": 22});
  p2.printInfo(); // Person1:jojo----22
  Person p3 = Person.aloneName("xulun");
  p3.printInfo(); // Person1:xulun----1
}
