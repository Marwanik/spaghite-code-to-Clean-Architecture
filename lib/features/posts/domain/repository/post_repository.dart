import 'package:clean_demo/features/posts/data/model/post.dart';
import 'package:clean_demo/features/posts/domain/entities/post.dart';
import 'package:dartz/dartz.dart';

abstract class PostRepository {
  Future<Either<ErrorModel, List<PostModel>>> getPosts();
}
