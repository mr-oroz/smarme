// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Stories _$StoriesFromJson(Map<String, dynamic> json) {
  return _Stories.fromJson(json);
}

/// @nodoc
mixin _$Stories {
  String? get uid => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoriesCopyWith<Stories> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesCopyWith<$Res> {
  factory $StoriesCopyWith(Stories value, $Res Function(Stories) then) =
      _$StoriesCopyWithImpl<$Res, Stories>;
  @useResult
  $Res call(
      {String? uid,
      String? title,
      String? imageUrl,
      String? videoUrl,
      bool isFavorite,
      String? createdAt});
}

/// @nodoc
class _$StoriesCopyWithImpl<$Res, $Val extends Stories>
    implements $StoriesCopyWith<$Res> {
  _$StoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? videoUrl = freezed,
    Object? isFavorite = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoriesImplCopyWith<$Res> implements $StoriesCopyWith<$Res> {
  factory _$$StoriesImplCopyWith(
          _$StoriesImpl value, $Res Function(_$StoriesImpl) then) =
      __$$StoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uid,
      String? title,
      String? imageUrl,
      String? videoUrl,
      bool isFavorite,
      String? createdAt});
}

/// @nodoc
class __$$StoriesImplCopyWithImpl<$Res>
    extends _$StoriesCopyWithImpl<$Res, _$StoriesImpl>
    implements _$$StoriesImplCopyWith<$Res> {
  __$$StoriesImplCopyWithImpl(
      _$StoriesImpl _value, $Res Function(_$StoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? videoUrl = freezed,
    Object? isFavorite = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$StoriesImpl(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoriesImpl implements _Stories {
  const _$StoriesImpl(
      {this.uid,
      this.title,
      this.imageUrl,
      this.videoUrl,
      this.isFavorite = false,
      this.createdAt = ''});

  factory _$StoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoriesImplFromJson(json);

  @override
  final String? uid;
  @override
  final String? title;
  @override
  final String? imageUrl;
  @override
  final String? videoUrl;
  @override
  @JsonKey()
  final bool isFavorite;
  @override
  @JsonKey()
  final String? createdAt;

  @override
  String toString() {
    return 'Stories(uid: $uid, title: $title, imageUrl: $imageUrl, videoUrl: $videoUrl, isFavorite: $isFavorite, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uid, title, imageUrl, videoUrl, isFavorite, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesImplCopyWith<_$StoriesImpl> get copyWith =>
      __$$StoriesImplCopyWithImpl<_$StoriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoriesImplToJson(
      this,
    );
  }
}

abstract class _Stories implements Stories {
  const factory _Stories(
      {final String? uid,
      final String? title,
      final String? imageUrl,
      final String? videoUrl,
      final bool isFavorite,
      final String? createdAt}) = _$StoriesImpl;

  factory _Stories.fromJson(Map<String, dynamic> json) = _$StoriesImpl.fromJson;

  @override
  String? get uid;
  @override
  String? get title;
  @override
  String? get imageUrl;
  @override
  String? get videoUrl;
  @override
  bool get isFavorite;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$StoriesImplCopyWith<_$StoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
