import 'dart:io';
import 'dart:convert';

void main() async {
  File file = File('文件操作/test.txt');
  easyRead(file);
}

// 简便方式 readAsString
void easyRead(File file) async {
  try {
    String content = await file.readAsString();
    print(content);
  } catch (e) {
    print(e);
  }
}

// 另一种更低级别的方式
void lowRead() async {
  try {
    // LineSplitter Dart语言封装的换行符，此处将文本按行分割
    Stream lines = File('test.txt')
        .openRead() //打开文件
        .transform(utf8.decoder)
        .transform(const LineSplitter());

    await for (var line in lines) {
      print(line);
    }
  } catch (_) {}
}
