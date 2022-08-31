import 'dart:convert';
import 'dart:io';

void main() {
  tcpClient();
  // startTcpClient();
}

// TCP 客户端 简洁写法
void tcpClient() {
  // 连接127.0.0.1的8081端口
  Socket.connect('127.0.0.1', 8081).then((socket) {
    socket.write('Hello, Server!');
    socket.cast<List<int>>().transform(utf8.decoder).listen(print);
  });
}

// 更清晰写法如下
void startTcpClient() async {
  //连接服务器的8081端口
  Socket socket = await Socket.connect('127.0.0.1', 8081);
  socket.write('Hello, Server!');
  socket.cast<List<int>>().transform(utf8.decoder).listen(print);
}
