import 'dart:async';

void main() {
  Future(() => print('f1')); //声明一个匿名Future
  Future fx = Future(() => null); //声明Future fx，其执行体为 null

  //声明一个匿名Future，并注册了两个then。在第一个then回调里启动了一个微任务
  Future(() => print('f2')).then((_) {
    print('f3');
    scheduleMicrotask(() => print('f4'));
  }).then((_) => print('f5'));

  //声明了一个匿名Future，并注册了两个then。第一个then是一个Future
  Future(() => print('f6'))
      .then((_) => Future(() => print('f7')))
      .then((_) => print('f8'));

  //声明了一个匿名Future
  Future(() => print('f9'));

  //往执行体为 null 的 fx 注册了了一个 then
  fx.then((_) => print('f10'));

  //启动一个微任务
  scheduleMicrotask(() => print('f11'));
  print('f12');
}
