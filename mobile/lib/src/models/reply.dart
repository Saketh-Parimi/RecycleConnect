import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'reply.freezed.dart';
part 'reply.g.dart';

@freezed
class Reply with _$Reply {
  const factory Reply(
      {required String post_id,
      required String user_id,
      required String text,
      required String created_at,
      String? updated_at}) = _Reply;

  factory Reply.fromJson(Map<String, Object?> json) => _$ReplyFromJson(json);
}

@freezed
class NewReply with _$NewReply {
  const factory NewReply(
      {required String post_id,
      required String user_id,
      required String text}) = _NewReply;

  factory NewReply.fromJson(Map<String, Object?> json) =>
      _$NewReplyFromJson(json);
}
