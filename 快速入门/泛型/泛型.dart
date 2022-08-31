void main() {
  List names = <num>[];
  names.add(12);
  names.add(12.4);
  names.forEach((element) {
    print(element);
  });

  Map map = Map<int, String>();
  map[1] = "success";
  map[2] = "error";
  map.forEach((key, value) {
    print("$key --- $value");
  });

  // 字面量写法
  List infos = <String>['Seth', 'Kathy', 'joker'];
  print(infos);

  Map pages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
  };

  print(pages);

  /// generic method
  T getData<T>(T value) {
    return value;
  }

  print(getData(21));
  print(getData('hello'));
  print(getData<String>('你好'));
  print(getData<int>(12));
}
