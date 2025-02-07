// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<String> get address => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {String id,
      String title,
      String text,
      List<String> address,
      String user_id,
      String type,
      String? created_at,
      String? updated_at});
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? text = null,
    Object? address = null,
    Object? user_id = null,
    Object? type = null,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<String>,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostCopyWith(_$_Post value, $Res Function(_$_Post) then) =
      __$$_PostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String text,
      List<String> address,
      String user_id,
      String type,
      String? created_at,
      String? updated_at});
}

/// @nodoc
class __$$_PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res, _$_Post>
    implements _$$_PostCopyWith<$Res> {
  __$$_PostCopyWithImpl(_$_Post _value, $Res Function(_$_Post) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? text = null,
    Object? address = null,
    Object? user_id = null,
    Object? type = null,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$_Post(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<String>,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post with DiagnosticableTreeMixin implements _Post {
  const _$_Post(
      {required this.id,
      required this.title,
      required this.text,
      required final List<String> address,
      required this.user_id,
      required this.type,
      this.created_at,
      this.updated_at})
      : _address = address;

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String text;
  final List<String> _address;
  @override
  List<String> get address {
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_address);
  }

  @override
  final String user_id;
  @override
  final String type;
  @override
  final String? created_at;
  @override
  final String? updated_at;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Post(id: $id, title: $title, text: $text, address: $address, user_id: $user_id, type: $type, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Post'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('user_id', user_id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('created_at', created_at))
      ..add(DiagnosticsProperty('updated_at', updated_at));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      text,
      const DeepCollectionEquality().hash(_address),
      user_id,
      type,
      created_at,
      updated_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostCopyWith<_$_Post> get copyWith =>
      __$$_PostCopyWithImpl<_$_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  const factory _Post(
      {required final String id,
      required final String title,
      required final String text,
      required final List<String> address,
      required final String user_id,
      required final String type,
      final String? created_at,
      final String? updated_at}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get text;
  @override
  List<String> get address;
  @override
  String get user_id;
  @override
  String get type;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}

NewPost _$NewPostFromJson(Map<String, dynamic> json) {
  return _NewPost.fromJson(json);
}

/// @nodoc
mixin _$NewPost {
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<String> get address => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewPostCopyWith<NewPost> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPostCopyWith<$Res> {
  factory $NewPostCopyWith(NewPost value, $Res Function(NewPost) then) =
      _$NewPostCopyWithImpl<$Res, NewPost>;
  @useResult
  $Res call(
      {String title,
      String text,
      List<String> address,
      String user_id,
      String type});
}

/// @nodoc
class _$NewPostCopyWithImpl<$Res, $Val extends NewPost>
    implements $NewPostCopyWith<$Res> {
  _$NewPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? address = null,
    Object? user_id = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<String>,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewPostCopyWith<$Res> implements $NewPostCopyWith<$Res> {
  factory _$$_NewPostCopyWith(
          _$_NewPost value, $Res Function(_$_NewPost) then) =
      __$$_NewPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String text,
      List<String> address,
      String user_id,
      String type});
}

/// @nodoc
class __$$_NewPostCopyWithImpl<$Res>
    extends _$NewPostCopyWithImpl<$Res, _$_NewPost>
    implements _$$_NewPostCopyWith<$Res> {
  __$$_NewPostCopyWithImpl(_$_NewPost _value, $Res Function(_$_NewPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? address = null,
    Object? user_id = null,
    Object? type = null,
  }) {
    return _then(_$_NewPost(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<String>,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewPost with DiagnosticableTreeMixin implements _NewPost {
  const _$_NewPost(
      {required this.title,
      required this.text,
      required final List<String> address,
      required this.user_id,
      required this.type})
      : _address = address;

  factory _$_NewPost.fromJson(Map<String, dynamic> json) =>
      _$$_NewPostFromJson(json);

  @override
  final String title;
  @override
  final String text;
  final List<String> _address;
  @override
  List<String> get address {
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_address);
  }

  @override
  final String user_id;
  @override
  final String type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewPost(title: $title, text: $text, address: $address, user_id: $user_id, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewPost'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('user_id', user_id))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewPost &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, text,
      const DeepCollectionEquality().hash(_address), user_id, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewPostCopyWith<_$_NewPost> get copyWith =>
      __$$_NewPostCopyWithImpl<_$_NewPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewPostToJson(
      this,
    );
  }
}

abstract class _NewPost implements NewPost {
  const factory _NewPost(
      {required final String title,
      required final String text,
      required final List<String> address,
      required final String user_id,
      required final String type}) = _$_NewPost;

  factory _NewPost.fromJson(Map<String, dynamic> json) = _$_NewPost.fromJson;

  @override
  String get title;
  @override
  String get text;
  @override
  List<String> get address;
  @override
  String get user_id;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_NewPostCopyWith<_$_NewPost> get copyWith =>
      throw _privateConstructorUsedError;
}
