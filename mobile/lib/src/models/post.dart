import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

enum PostType {
  giving,
  getting,
  listing,
}

@freezed
class Post with _$Post {
  const factory Post({
    required String id,
    required String title,
    required String text,
    required List<String> address,
    required String user_id,
    required String type,
    String? created_at,
    String? updated_at,
  }) = _Post;

  factory Post.fromJson(Map<String, Object?> json) => _$PostFromJson(json);
}

@freezed
class NewPost with _$NewPost {
  const factory NewPost({
    required String title,
    required String text,
    required List<String> address,
    required String user_id,
    required String type,
  }) = _NewPost;

  factory NewPost.fromJson(Map<String, Object?> json) =>
      _$NewPostFromJson(json);
}
