
import 'package:clean_demo/core/usecases/usecase.dart';
import 'package:clean_demo/features/posts/domain/entities/post.dart';
import 'package:clean_demo/features/posts/domain/repository/post_repository.dart';
import 'package:dartz/dartz.dart';

class GetPostsUseCase
    implements UseCase<Either<ErrorModel, List<PostEntity>>, void> {
  final PostRepository _postRepository;

  GetPostsUseCase({required PostRepository postRepository})
      : _postRepository = postRepository;
  @override
  Future<Either<ErrorModel, List<PostEntity>>> call({void params}) {
    return _postRepository.getPosts.call();
  }
}
