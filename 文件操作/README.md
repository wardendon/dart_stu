
## writeAsString 原型
```dart
 Future<File> writeAsString(String contents,
     {
      FileMode mode: FileMode.write,
      Encoding encoding: utf8,
       bool flush: false
     }
    )
```
- mode 文件模式，这里默认为写模式
- encoding 字符编码，默认为utf-8
- flush 是否立刻刷新缓存，默认为false

| 常量值 | 说明 |
|----|----|
|read	|只读模式|
|write	|可读可写模式，如果文件存在则会覆盖|
|append	|追加模式，可读可写，文件存在则往末尾追加|
|writeOnly	|只写模式|
|writeOnlyAppend	|只写模式下的追加模式，不可读|

除了writeAsString方法外，还可以使用writeAsBytes写入一个字节列表。需要注意的是，这两个方法都是异步执行的，返回值都是Future，如果有必要，也可以使用同步方法执行写入操作

- writeAsStringSync

- writeAsBytesSync

