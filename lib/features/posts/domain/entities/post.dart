import 'package:equatable/equatable.dart';

class PostEntity extends Equatable{
  final int id;
  final String title;
  final String body;

  PostEntity({
    required this.id,
    required this.title,
    required this.body,
  });
  List<Object?>get props{
    return[
      id,
      title,
      body
    ];
  }
}
class ErrorModel extends Equatable{
  final String errorMessage;

  ErrorModel({required this.errorMessage});
  List<Object?>get props{
    return[
      errorMessage,
  

    ];
  }

}