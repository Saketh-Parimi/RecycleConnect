// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reply _$ReplyFromJson(Map<String, dynamic> json) {
  return _Reply.fromJson(json);
}

/// @nodoc
mixin _$Reply {
  String get post_id => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyCopyWith<Reply> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyCopyWith<$Res> {
  factory $ReplyCopyWith(Reply value, $Res Function(Reply) then) =
      _$ReplyCopyWithImpl<$Res, Reply>;
  @useResult
  $Res call(
      {String post_id,
      String user_id,
      String text,
      String created_at,
      String? updated_at});
}

/// @nodoc
class _$ReplyCopyWithImpl<$Res, $Val extends Reply>
    implements $ReplyCopyWith<$Res> {
  _$ReplyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post_id = null,
    Object? user_id = null,
    Object? text = null,
    Object? created_at = null,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      post_id: null == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReplyCopyWith<$Res> implements $ReplyCopyWith<$Res> {
  factory _$$_ReplyCopyWith(_$_Reply value, $Res Function(_$_Reply) then) =
      __$$_ReplyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String post_id,
      String user_id,
      String text,
      String created_at,
      String? updated_at});
}

/// @nodoc
class __$$_ReplyCopyWithImpl<$Res> extends _$ReplyCopyWithImpl<$Res, _$_Reply>
    implements _$$_ReplyCopyWith<$Res> {
  __$$_ReplyCopyWithImpl(_$_Reply _value, $Res Function(_$_Reply) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post_id = null,
    Object? user_id = null,
    Object? text = null,
    Object? created_at = null,
    Object? updated_at = freezed,
  }) {
    return _then(_$_Reply(
      post_id: null == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reply with DiagnosticableTreeMixin implements _Reply {
  const _$_Reply(
      {required this.post_id,
      required this.user_id,
      required this.text,
      required this.created_at,
      this.updated_at});

  factory _$_Reply.fromJson(Map<String, dynamic> json) =>
      _$$_ReplyFromJson(json);

  @override
  final String post_id;
  @override
  final String user_id;
  @override
  final String text;
  @override
  final String created_at;
  @override
  final String? updated_at;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Reply(post_id: $post_id, user_id: $user_id, text: $text, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Reply'))
      ..add(DiagnosticsProperty('post_id', post_id))
      ..add(DiagnosticsProperty('user_id', user_id))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('created_at', created_at))
      ..add(DiagnosticsProperty('updated_at', updated_at));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reply &&
            (identical(other.post_id, post_id) || other.post_id == post_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, post_id, user_id, text, created_at, updated_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReplyCopyWith<_$_Reply> get copyWith =>
      __$$_ReplyCopyWithImpl<_$_Reply>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReplyToJson(
      this,
    );
  }
}

abstract class _Reply implements Reply {
  const factory _Reply(
      {required final String post_id,
      required final String user_id,
      required final String text,
      required final String created_at,
      final String? updated_at}) = _$_Reply;

  factory _Reply.fromJson(Map<String, dynamic> json) = _$_Reply.fromJson;

  @override
  String get post_id;
  @override
  String get user_id;
  @override
  String get text;
  @override
  String get created_at;
  @override
  String? get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$_ReplyCopyWith<_$_Reply> get copyWith =>
      throw _privateConstructorUsedError;
}

NewReply _$NewReplyFromJson(Map<String, dynamic> json) {
  return _NewReply.fromJson(json);
}

/// @nodoc
mixin _$NewReply {
  String get post_id => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewReplyCopyWith<NewReply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewReplyCopyWith<$Res> {
  factory $NewReplyCopyWith(NewReply value, $Res Function(NewReply) then) =
      _$NewReplyCopyWithImpl<$Res, NewReply>;
  @useResult
  $Res call({String post_id, String user_id, String text});
}

/// @nodoc
class _$NewReplyCopyWithImpl<$Res, $Val extends NewReply>
    implements $NewReplyCopyWith<$Res> {
  _$NewReplyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post_id = null,
    Object? user_id = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      post_id: null == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewReplyCopyWith<$Res> implements $NewReplyCopyWith<$Res> {
  factory _$$_NewReplyCopyWith(
          _$_NewReply value, $Res Function(_$_NewReply) then) =
      __$$_NewReplyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String post_id, String user_id, String text});
}

/// @nodoc
class __$$_NewReplyCopyWithImpl<$Res>
    extends _$NewReplyCopyWithImpl<$Res, _$_NewReply>
    implements _$$_NewReplyCopyWith<$Res> {
  __$$_NewReplyCopyWithImpl(
      _$_NewReply _value, $Res Function(_$_NewReply) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post_id = null,
    Object? user_id = null,
    Object? text = null,
  }) {
    return _then(_$_NewReply(
      post_id: null == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewReply with DiagnosticableTreeMixin implements _NewReply {
  const _$_NewReply(
      {required this.post_id, required this.user_id, required this.text});

  factory _$_NewReply.fromJson(Map<String, dynamic> json) =>
      _$$_NewReplyFromJson(json);

  @override
  final String post_id;
  @override
  final String user_id;
  @override
  final String text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewReply(post_id: $post_id, user_id: $user_id, text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewReply'))
      ..add(DiagnosticsProperty('post_id', post_id))
      ..add(DiagnosticsProperty('user_id', user_id))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewReply &&
            (identical(other.post_id, post_id) || other.post_id == post_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, post_id, user_id, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewReplyCopyWith<_$_NewReply> get copyWith =>
      __$$_NewReplyCopyWithImpl<_$_NewReply>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewReplyToJson(
      this,
    );
  }
}

abstract class _NewReply implements NewReply {
  const factory _NewReply(
      {required final String post_id,
      required final String user_id,
      required final String text}) = _$_NewReply;

  factory _NewReply.fromJson(Map<String, dynamic> json) = _$_NewReply.fromJson;

  @override
  String get post_id;
  @override
  String get user_id;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_NewReplyCopyWith<_$_NewReply> get copyWith =>
      throw _privateConstructorUsedError;
}
