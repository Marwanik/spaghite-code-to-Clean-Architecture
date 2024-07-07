import 'package:clean_demo/features/posts/data/data_sources/remote/base_api_service.dart';
import 'package:dio/dio.dart';

class PostServcie extends BaseServcie {
  PostServcie({required super.dio});
  Future<Response> getPosts() async {
    response = await dio.get(baseUrl);
    return response;
  }
}