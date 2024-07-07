import 'package:dio/dio.dart';

class BaseServcie {
  final Dio dio;
  String baseUrl = 'https://jsonplaceholder.typicode.com/posts';
  late Response response;

  BaseServcie({required this.dio});
}


