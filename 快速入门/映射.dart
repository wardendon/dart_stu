void main() {
  var gifts = {
    'first': 'Java',
    'second': 'Node.js',
  };

  gifts['third'] = 'Dart';
  print(gifts.length); // 3
  print(gifts['first']); // Java
  print(gifts['aaa']); // null
}
