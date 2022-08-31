import 'dart:io';

doTask() async {
  sleep(Duration(seconds: 3));
  return "OK";
}

test() async {
  var res = await doTask();
  print(res);
}


void main() async{
  print('main start');
  // 正常顺序执行
  var res = await doTask();
  print(res);
  print('main end');

  print('main start');
  // 最后打印ok
  test();
  print('main end');
}