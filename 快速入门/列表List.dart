void main() {
  // 创建列表
  var list = [1, 2, 4];
  print(list[0]);
  print(list.length);
  // add 添加元素
  list.add(8);

  // 可在list字面吊前添办const关經字，定义一个不可改变的列表（编译时常量）
  var constantList = const [3, 2, 1];
  constantList[1] = 1; // 报错，Cannot modify an unmodifiable list
}
