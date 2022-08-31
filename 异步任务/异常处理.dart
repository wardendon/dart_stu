void main() {
  try {
    print(11 ~/ 0);
  } on UnsupportedError {
    print("除数为0");
  } on Exception {
    print("Exception");
  } finally {
    print("退出");
  }

  try {
    print(11 ~/ 0);
  } catch (e, s) {
    print(e);
    print(s);
  } finally {
    print("退出");
  }
}
