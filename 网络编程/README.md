# Dart 网络编程

## TCP

## UDP

## HTTP服务器与请求

通常我们并不会直接使用Dart 标准库提供的http 网络请求API，因为标准库库使用上仍然过于繁琐，第三方库则更加简洁强大。在Flutter上主要使用dio库，功能十分强大，另外还可以使用官方推出的http库，更加简洁精炼，链接如下

- [http](https://pub.dev/packages/http?_from_=227020040_59851621_233928268_4aeb228b6d4078d6b5e2a90705729d99&_from_=227020040_59851621_233928268_4aeb228b6d4078d6b5e2a90705729d99)
- [dio](https://pub.dev/packages/dio?_from_=227020040_59851621_233928268_4aeb228b6d4078d6b5e2a90705729d99&_from_=227020040_59851621_233928268_4aeb228b6d4078d6b5e2a90705729d99)

## WebScoket



注意：本篇内容主要为Dart编程示例，在实际开发中，还有许多问题需要处理，例如TCP的粘包问题，心跳机制，并在Dart中将WebSocket结合ProtoBuf使用等。