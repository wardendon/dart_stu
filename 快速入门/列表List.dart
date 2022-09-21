void main() {
  // 创建列表
  // var list = [1, 2, 4];
  // print(list[0]);
  // print(list.length);
  // // add 添加元素
  // list.add(8);

  // // 可在list字面前添办const关經字，定义一个不可改变的列表（编译时常量）
  // var constantList = const [3, 2, 1];
  // constantList[1] = 1; // 报错，Cannot modify an unmodifiable list

  var res =
      dataList.map((e) => Book(e['name'], e['author'], e['category'])).toList();
  res.forEach((element) {
    print(element.name);
  });
}

class Book {
  String? name;
  String? author;
  String? category;

  Book(this.name, this.author, this.category);
}

final dataList = [
  {'name': '黄金时代', 'author': '王小波', 'category': '风流史'},
  {'name': '青铜时代', 'author': '王小波', 'category': '唐人故事新编'},
  {'name': '白银时代', 'author': '王小波', 'category': '无聊'},
  {'name': '黑铁时代', 'author': '王小波', 'category': '绝望'},
];
