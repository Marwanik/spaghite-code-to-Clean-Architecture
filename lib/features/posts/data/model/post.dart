

import 'dart:convert';

import 'package:clean_demo/features/posts/domain/entities/post.dart';

class PostModel extends PostEntity {
  final int id;
  final String title;
  final String body;
  PostModel({
    required this.id,
    required this.title,
    required this.body,
  }) : super(
          id: id,
          title: title,
          body: body,
        );

  PostModel copyWith({
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'body': body,
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id: map['id'] as int,
      title: map['title'] as String,
      body: map['body'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PostModel.fromJson(String source) =>
      PostModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PostModel(id: $id, title: $title, body: $body)';

  @override
  bool operator ==(covariant PostModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.title == title && other.body == body;
  }

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ body.hashCode;
}
