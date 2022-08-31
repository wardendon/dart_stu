import 'dart:io';

/**
 * Dart中两种方式可以使用Future对象来进行异步编程
 * - 使用 async 和 await关键字
 * - 使用 Future API
 */
doTask() async {
  sleep(Duration(seconds: 3));
  return "OK";
}

test() async {
  var res = await doTask();
  print(res);
}

void main() async {
  // 正常顺序执行
  print("main start");
  var res = await doTask();
  print(res);
  print('main end');
  // 最后打印 ok
  print('main start');
  test();
  print('main end');
}
