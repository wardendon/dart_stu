void main() {
  ListCycle();
  MapCycle();
}

/// List 遍历循环
void ListCycle() {
  List myList = ['Vue', 'NodeJS', 'TS', 'Dart'];
  // for...in...循环
  for (var it in myList) {
    print(it);
  }
  // forEach循环,参数为一个function对象，这里传入一个匿名函数，也可用箭头函数
  myList.forEach((element) {
    print(element);
  });
}

/// Map 遍历循环
void MapCycle() {
  Map myMap = {'王東': 23, '王二': 45, '薛嵩': 50};

  // forEach遍历Map
  myMap.forEach((key, value) {
    print("$key : $value");
  });
  // 根据键获取值来遍历，通key返回map中所有键的集合
  for (var k in myMap.keys) {
    print("$k: ${myMap[k]}");
  }
}
