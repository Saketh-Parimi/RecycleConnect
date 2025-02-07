// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reply _$$_ReplyFromJson(Map<String, dynamic> json) => _$_Reply(
      post_id: json['post_id'] as String,
      user_id: json['user_id'] as String,
      text: json['text'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_ReplyToJson(_$_Reply instance) => <String, dynamic>{
      'post_id': instance.post_id,
      'user_id': instance.user_id,
      'text': instance.text,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };

_$_NewReply _$$_NewReplyFromJson(Map<String, dynamic> json) => _$_NewReply(
      post_id: json['post_id'] as String,
      user_id: json['user_id'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_NewReplyToJson(_$_NewReply instance) =>
    <String, dynamic>{
      'post_id': instance.post_id,
      'user_id': instance.user_id,
      'text': instance.text,
    };
