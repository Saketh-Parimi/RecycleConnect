// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['_id'] as String,
      title: json['title'] as String,
      text: json['text'] as String,
      address:
          (json['address'] as List<dynamic>).map((e) => e as String).toList(),
      user_id: json['user_id'] as String,
      type: json['type'] as String,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'text': instance.text,
      'address': instance.address,
      'user_id': instance.user_id,
      'type': instance.type,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };

_$_NewPost _$$_NewPostFromJson(Map<String, dynamic> json) => _$_NewPost(
      title: json['title'] as String,
      text: json['text'] as String,
      address:
          (json['address'] as List<dynamic>).map((e) => e as String).toList(),
      user_id: json['user_id'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_NewPostToJson(_$_NewPost instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'address': instance.address,
      'user_id': instance.user_id,
      'type': instance.type,
    };
