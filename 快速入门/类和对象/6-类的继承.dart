class Father {
  myFun() {
    print('father class');
  }
}

class Mather {
  myFun() {
    print('mather class');
  }

  makeup() {
    print('Draw eyebrow');
  }
}

/// 单继承
class Son extends Father {
  @override
  myFun() {
    super.myFun();
    print('son class');
  }
}

/// 多继承
class daughter with Father, Mather {}

void main() {
  var f = Father();
  f.myFun();

  print('-------------');

  var s = Son();
  s.myFun();

  print('-------------');

  var d = daughter();
  d.myFun(); // mather class
  d.makeup(); // Draw eyebrow
}
