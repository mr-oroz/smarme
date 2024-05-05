// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_like_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommunityLikeEvent {
  String get communityId => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String communityId, String authorId) like,
    required TResult Function(String communityId, String authorId) dislike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String communityId, String authorId)? like,
    TResult? Function(String communityId, String authorId)? dislike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String communityId, String authorId)? like,
    TResult Function(String communityId, String authorId)? dislike,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Like value) like,
    required TResult Function(_Dislike value) dislike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Like value)? like,
    TResult? Function(_Dislike value)? dislike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Like value)? like,
    TResult Function(_Dislike value)? dislike,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommunityLikeEventCopyWith<CommunityLikeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityLikeEventCopyWith<$Res> {
  factory $CommunityLikeEventCopyWith(
          CommunityLikeEvent value, $Res Function(CommunityLikeEvent) then) =
      _$CommunityLikeEventCopyWithImpl<$Res, CommunityLikeEvent>;
  @useResult
  $Res call({String communityId, String authorId});
}

/// @nodoc
class _$CommunityLikeEventCopyWithImpl<$Res, $Val extends CommunityLikeEvent>
    implements $CommunityLikeEventCopyWith<$Res> {
  _$CommunityLikeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityId = null,
    Object? authorId = null,
  }) {
    return _then(_value.copyWith(
      communityId: null == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikeImplCopyWith<$Res>
    implements $CommunityLikeEventCopyWith<$Res> {
  factory _$$LikeImplCopyWith(
          _$LikeImpl value, $Res Function(_$LikeImpl) then) =
      __$$LikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String communityId, String authorId});
}

/// @nodoc
class __$$LikeImplCopyWithImpl<$Res>
    extends _$CommunityLikeEventCopyWithImpl<$Res, _$LikeImpl>
    implements _$$LikeImplCopyWith<$Res> {
  __$$LikeImplCopyWithImpl(_$LikeImpl _value, $Res Function(_$LikeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityId = null,
    Object? authorId = null,
  }) {
    return _then(_$LikeImpl(
      null == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LikeImpl implements _Like {
  const _$LikeImpl(this.communityId, this.authorId);

  @override
  final String communityId;
  @override
  final String authorId;

  @override
  String toString() {
    return 'CommunityLikeEvent.like(communityId: $communityId, authorId: $authorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeImpl &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityId, authorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeImplCopyWith<_$LikeImpl> get copyWith =>
      __$$LikeImplCopyWithImpl<_$LikeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String communityId, String authorId) like,
    required TResult Function(String communityId, String authorId) dislike,
  }) {
    return like(communityId, authorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String communityId, String authorId)? like,
    TResult? Function(String communityId, String authorId)? dislike,
  }) {
    return like?.call(communityId, authorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String communityId, String authorId)? like,
    TResult Function(String communityId, String authorId)? dislike,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like(communityId, authorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Like value) like,
    required TResult Function(_Dislike value) dislike,
  }) {
    return like(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Like value)? like,
    TResult? Function(_Dislike value)? dislike,
  }) {
    return like?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Like value)? like,
    TResult Function(_Dislike value)? dislike,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like(this);
    }
    return orElse();
  }
}

abstract class _Like implements CommunityLikeEvent {
  const factory _Like(final String communityId, final String authorId) =
      _$LikeImpl;

  @override
  String get communityId;
  @override
  String get authorId;
  @override
  @JsonKey(ignore: true)
  _$$LikeImplCopyWith<_$LikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DislikeImplCopyWith<$Res>
    implements $CommunityLikeEventCopyWith<$Res> {
  factory _$$DislikeImplCopyWith(
          _$DislikeImpl value, $Res Function(_$DislikeImpl) then) =
      __$$DislikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String communityId, String authorId});
}

/// @nodoc
class __$$DislikeImplCopyWithImpl<$Res>
    extends _$CommunityLikeEventCopyWithImpl<$Res, _$DislikeImpl>
    implements _$$DislikeImplCopyWith<$Res> {
  __$$DislikeImplCopyWithImpl(
      _$DislikeImpl _value, $Res Function(_$DislikeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityId = null,
    Object? authorId = null,
  }) {
    return _then(_$DislikeImpl(
      null == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DislikeImpl implements _Dislike {
  const _$DislikeImpl(this.communityId, this.authorId);

  @override
  final String communityId;
  @override
  final String authorId;

  @override
  String toString() {
    return 'CommunityLikeEvent.dislike(communityId: $communityId, authorId: $authorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DislikeImpl &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityId, authorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DislikeImplCopyWith<_$DislikeImpl> get copyWith =>
      __$$DislikeImplCopyWithImpl<_$DislikeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String communityId, String authorId) like,
    required TResult Function(String communityId, String authorId) dislike,
  }) {
    return dislike(communityId, authorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String communityId, String authorId)? like,
    TResult? Function(String communityId, String authorId)? dislike,
  }) {
    return dislike?.call(communityId, authorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String communityId, String authorId)? like,
    TResult Function(String communityId, String authorId)? dislike,
    required TResult orElse(),
  }) {
    if (dislike != null) {
      return dislike(communityId, authorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Like value) like,
    required TResult Function(_Dislike value) dislike,
  }) {
    return dislike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Like value)? like,
    TResult? Function(_Dislike value)? dislike,
  }) {
    return dislike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Like value)? like,
    TResult Function(_Dislike value)? dislike,
    required TResult orElse(),
  }) {
    if (dislike != null) {
      return dislike(this);
    }
    return orElse();
  }
}

abstract class _Dislike implements CommunityLikeEvent {
  const factory _Dislike(final String communityId, final String authorId) =
      _$DislikeImpl;

  @override
  String get communityId;
  @override
  String get authorId;
  @override
  @JsonKey(ignore: true)
  _$$DislikeImplCopyWith<_$DislikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommunityLikeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCmmunityLike,
    required TResult Function(String message) errorCmmunityLike,
    required TResult Function() likedCommunity,
    required TResult Function() unlikedCommunity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCmmunityLike,
    TResult? Function(String message)? errorCmmunityLike,
    TResult? Function()? likedCommunity,
    TResult? Function()? unlikedCommunity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCmmunityLike,
    TResult Function(String message)? errorCmmunityLike,
    TResult Function()? likedCommunity,
    TResult Function()? unlikedCommunity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCmmunityLike value) loadingCmmunityLike,
    required TResult Function(_ErrorCmmunityLike value) errorCmmunityLike,
    required TResult Function(_LikedCmmunity value) likedCommunity,
    required TResult Function(_UnLikedCmmunity value) unlikedCommunity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCmmunityLike value)? loadingCmmunityLike,
    TResult? Function(_ErrorCmmunityLike value)? errorCmmunityLike,
    TResult? Function(_LikedCmmunity value)? likedCommunity,
    TResult? Function(_UnLikedCmmunity value)? unlikedCommunity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCmmunityLike value)? loadingCmmunityLike,
    TResult Function(_ErrorCmmunityLike value)? errorCmmunityLike,
    TResult Function(_LikedCmmunity value)? likedCommunity,
    TResult Function(_UnLikedCmmunity value)? unlikedCommunity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityLikeStateCopyWith<$Res> {
  factory $CommunityLikeStateCopyWith(
          CommunityLikeState value, $Res Function(CommunityLikeState) then) =
      _$CommunityLikeStateCopyWithImpl<$Res, CommunityLikeState>;
}

/// @nodoc
class _$CommunityLikeStateCopyWithImpl<$Res, $Val extends CommunityLikeState>
    implements $CommunityLikeStateCopyWith<$Res> {
  _$CommunityLikeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CommunityLikeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CommunityLikeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCmmunityLike,
    required TResult Function(String message) errorCmmunityLike,
    required TResult Function() likedCommunity,
    required TResult Function() unlikedCommunity,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCmmunityLike,
    TResult? Function(String message)? errorCmmunityLike,
    TResult? Function()? likedCommunity,
    TResult? Function()? unlikedCommunity,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCmmunityLike,
    TResult Function(String message)? errorCmmunityLike,
    TResult Function()? likedCommunity,
    TResult Function()? unlikedCommunity,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCmmunityLike value) loadingCmmunityLike,
    required TResult Function(_ErrorCmmunityLike value) errorCmmunityLike,
    required TResult Function(_LikedCmmunity value) likedCommunity,
    required TResult Function(_UnLikedCmmunity value) unlikedCommunity,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCmmunityLike value)? loadingCmmunityLike,
    TResult? Function(_ErrorCmmunityLike value)? errorCmmunityLike,
    TResult? Function(_LikedCmmunity value)? likedCommunity,
    TResult? Function(_UnLikedCmmunity value)? unlikedCommunity,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCmmunityLike value)? loadingCmmunityLike,
    TResult Function(_ErrorCmmunityLike value)? errorCmmunityLike,
    TResult Function(_LikedCmmunity value)? likedCommunity,
    TResult Function(_UnLikedCmmunity value)? unlikedCommunity,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CommunityLikeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingCmmunityLikeImplCopyWith<$Res> {
  factory _$$LoadingCmmunityLikeImplCopyWith(_$LoadingCmmunityLikeImpl value,
          $Res Function(_$LoadingCmmunityLikeImpl) then) =
      __$$LoadingCmmunityLikeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCmmunityLikeImplCopyWithImpl<$Res>
    extends _$CommunityLikeStateCopyWithImpl<$Res, _$LoadingCmmunityLikeImpl>
    implements _$$LoadingCmmunityLikeImplCopyWith<$Res> {
  __$$LoadingCmmunityLikeImplCopyWithImpl(_$LoadingCmmunityLikeImpl _value,
      $Res Function(_$LoadingCmmunityLikeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingCmmunityLikeImpl implements _LoadingCmmunityLike {
  const _$LoadingCmmunityLikeImpl();

  @override
  String toString() {
    return 'CommunityLikeState.loadingCmmunityLike()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingCmmunityLikeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCmmunityLike,
    required TResult Function(String message) errorCmmunityLike,
    required TResult Function() likedCommunity,
    required TResult Function() unlikedCommunity,
  }) {
    return loadingCmmunityLike();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCmmunityLike,
    TResult? Function(String message)? errorCmmunityLike,
    TResult? Function()? likedCommunity,
    TResult? Function()? unlikedCommunity,
  }) {
    return loadingCmmunityLike?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCmmunityLike,
    TResult Function(String message)? errorCmmunityLike,
    TResult Function()? likedCommunity,
    TResult Function()? unlikedCommunity,
    required TResult orElse(),
  }) {
    if (loadingCmmunityLike != null) {
      return loadingCmmunityLike();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCmmunityLike value) loadingCmmunityLike,
    required TResult Function(_ErrorCmmunityLike value) errorCmmunityLike,
    required TResult Function(_LikedCmmunity value) likedCommunity,
    required TResult Function(_UnLikedCmmunity value) unlikedCommunity,
  }) {
    return loadingCmmunityLike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCmmunityLike value)? loadingCmmunityLike,
    TResult? Function(_ErrorCmmunityLike value)? errorCmmunityLike,
    TResult? Function(_LikedCmmunity value)? likedCommunity,
    TResult? Function(_UnLikedCmmunity value)? unlikedCommunity,
  }) {
    return loadingCmmunityLike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCmmunityLike value)? loadingCmmunityLike,
    TResult Function(_ErrorCmmunityLike value)? errorCmmunityLike,
    TResult Function(_LikedCmmunity value)? likedCommunity,
    TResult Function(_UnLikedCmmunity value)? unlikedCommunity,
    required TResult orElse(),
  }) {
    if (loadingCmmunityLike != null) {
      return loadingCmmunityLike(this);
    }
    return orElse();
  }
}

abstract class _LoadingCmmunityLike implements CommunityLikeState {
  const factory _LoadingCmmunityLike() = _$LoadingCmmunityLikeImpl;
}

/// @nodoc
abstract class _$$ErrorCmmunityLikeImplCopyWith<$Res> {
  factory _$$ErrorCmmunityLikeImplCopyWith(_$ErrorCmmunityLikeImpl value,
          $Res Function(_$ErrorCmmunityLikeImpl) then) =
      __$$ErrorCmmunityLikeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCmmunityLikeImplCopyWithImpl<$Res>
    extends _$CommunityLikeStateCopyWithImpl<$Res, _$ErrorCmmunityLikeImpl>
    implements _$$ErrorCmmunityLikeImplCopyWith<$Res> {
  __$$ErrorCmmunityLikeImplCopyWithImpl(_$ErrorCmmunityLikeImpl _value,
      $Res Function(_$ErrorCmmunityLikeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorCmmunityLikeImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorCmmunityLikeImpl implements _ErrorCmmunityLike {
  const _$ErrorCmmunityLikeImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CommunityLikeState.errorCmmunityLike(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorCmmunityLikeImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCmmunityLikeImplCopyWith<_$ErrorCmmunityLikeImpl> get copyWith =>
      __$$ErrorCmmunityLikeImplCopyWithImpl<_$ErrorCmmunityLikeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCmmunityLike,
    required TResult Function(String message) errorCmmunityLike,
    required TResult Function() likedCommunity,
    required TResult Function() unlikedCommunity,
  }) {
    return errorCmmunityLike(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCmmunityLike,
    TResult? Function(String message)? errorCmmunityLike,
    TResult? Function()? likedCommunity,
    TResult? Function()? unlikedCommunity,
  }) {
    return errorCmmunityLike?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCmmunityLike,
    TResult Function(String message)? errorCmmunityLike,
    TResult Function()? likedCommunity,
    TResult Function()? unlikedCommunity,
    required TResult orElse(),
  }) {
    if (errorCmmunityLike != null) {
      return errorCmmunityLike(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCmmunityLike value) loadingCmmunityLike,
    required TResult Function(_ErrorCmmunityLike value) errorCmmunityLike,
    required TResult Function(_LikedCmmunity value) likedCommunity,
    required TResult Function(_UnLikedCmmunity value) unlikedCommunity,
  }) {
    return errorCmmunityLike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCmmunityLike value)? loadingCmmunityLike,
    TResult? Function(_ErrorCmmunityLike value)? errorCmmunityLike,
    TResult? Function(_LikedCmmunity value)? likedCommunity,
    TResult? Function(_UnLikedCmmunity value)? unlikedCommunity,
  }) {
    return errorCmmunityLike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCmmunityLike value)? loadingCmmunityLike,
    TResult Function(_ErrorCmmunityLike value)? errorCmmunityLike,
    TResult Function(_LikedCmmunity value)? likedCommunity,
    TResult Function(_UnLikedCmmunity value)? unlikedCommunity,
    required TResult orElse(),
  }) {
    if (errorCmmunityLike != null) {
      return errorCmmunityLike(this);
    }
    return orElse();
  }
}

abstract class _ErrorCmmunityLike implements CommunityLikeState {
  const factory _ErrorCmmunityLike({required final String message}) =
      _$ErrorCmmunityLikeImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorCmmunityLikeImplCopyWith<_$ErrorCmmunityLikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikedCmmunityImplCopyWith<$Res> {
  factory _$$LikedCmmunityImplCopyWith(
          _$LikedCmmunityImpl value, $Res Function(_$LikedCmmunityImpl) then) =
      __$$LikedCmmunityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LikedCmmunityImplCopyWithImpl<$Res>
    extends _$CommunityLikeStateCopyWithImpl<$Res, _$LikedCmmunityImpl>
    implements _$$LikedCmmunityImplCopyWith<$Res> {
  __$$LikedCmmunityImplCopyWithImpl(
      _$LikedCmmunityImpl _value, $Res Function(_$LikedCmmunityImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LikedCmmunityImpl implements _LikedCmmunity {
  const _$LikedCmmunityImpl();

  @override
  String toString() {
    return 'CommunityLikeState.likedCommunity()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LikedCmmunityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCmmunityLike,
    required TResult Function(String message) errorCmmunityLike,
    required TResult Function() likedCommunity,
    required TResult Function() unlikedCommunity,
  }) {
    return likedCommunity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCmmunityLike,
    TResult? Function(String message)? errorCmmunityLike,
    TResult? Function()? likedCommunity,
    TResult? Function()? unlikedCommunity,
  }) {
    return likedCommunity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCmmunityLike,
    TResult Function(String message)? errorCmmunityLike,
    TResult Function()? likedCommunity,
    TResult Function()? unlikedCommunity,
    required TResult orElse(),
  }) {
    if (likedCommunity != null) {
      return likedCommunity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCmmunityLike value) loadingCmmunityLike,
    required TResult Function(_ErrorCmmunityLike value) errorCmmunityLike,
    required TResult Function(_LikedCmmunity value) likedCommunity,
    required TResult Function(_UnLikedCmmunity value) unlikedCommunity,
  }) {
    return likedCommunity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCmmunityLike value)? loadingCmmunityLike,
    TResult? Function(_ErrorCmmunityLike value)? errorCmmunityLike,
    TResult? Function(_LikedCmmunity value)? likedCommunity,
    TResult? Function(_UnLikedCmmunity value)? unlikedCommunity,
  }) {
    return likedCommunity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCmmunityLike value)? loadingCmmunityLike,
    TResult Function(_ErrorCmmunityLike value)? errorCmmunityLike,
    TResult Function(_LikedCmmunity value)? likedCommunity,
    TResult Function(_UnLikedCmmunity value)? unlikedCommunity,
    required TResult orElse(),
  }) {
    if (likedCommunity != null) {
      return likedCommunity(this);
    }
    return orElse();
  }
}

abstract class _LikedCmmunity implements CommunityLikeState {
  const factory _LikedCmmunity() = _$LikedCmmunityImpl;
}

/// @nodoc
abstract class _$$UnLikedCmmunityImplCopyWith<$Res> {
  factory _$$UnLikedCmmunityImplCopyWith(_$UnLikedCmmunityImpl value,
          $Res Function(_$UnLikedCmmunityImpl) then) =
      __$$UnLikedCmmunityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnLikedCmmunityImplCopyWithImpl<$Res>
    extends _$CommunityLikeStateCopyWithImpl<$Res, _$UnLikedCmmunityImpl>
    implements _$$UnLikedCmmunityImplCopyWith<$Res> {
  __$$UnLikedCmmunityImplCopyWithImpl(
      _$UnLikedCmmunityImpl _value, $Res Function(_$UnLikedCmmunityImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnLikedCmmunityImpl implements _UnLikedCmmunity {
  const _$UnLikedCmmunityImpl();

  @override
  String toString() {
    return 'CommunityLikeState.unlikedCommunity()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnLikedCmmunityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCmmunityLike,
    required TResult Function(String message) errorCmmunityLike,
    required TResult Function() likedCommunity,
    required TResult Function() unlikedCommunity,
  }) {
    return unlikedCommunity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCmmunityLike,
    TResult? Function(String message)? errorCmmunityLike,
    TResult? Function()? likedCommunity,
    TResult? Function()? unlikedCommunity,
  }) {
    return unlikedCommunity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCmmunityLike,
    TResult Function(String message)? errorCmmunityLike,
    TResult Function()? likedCommunity,
    TResult Function()? unlikedCommunity,
    required TResult orElse(),
  }) {
    if (unlikedCommunity != null) {
      return unlikedCommunity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingCmmunityLike value) loadingCmmunityLike,
    required TResult Function(_ErrorCmmunityLike value) errorCmmunityLike,
    required TResult Function(_LikedCmmunity value) likedCommunity,
    required TResult Function(_UnLikedCmmunity value) unlikedCommunity,
  }) {
    return unlikedCommunity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingCmmunityLike value)? loadingCmmunityLike,
    TResult? Function(_ErrorCmmunityLike value)? errorCmmunityLike,
    TResult? Function(_LikedCmmunity value)? likedCommunity,
    TResult? Function(_UnLikedCmmunity value)? unlikedCommunity,
  }) {
    return unlikedCommunity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingCmmunityLike value)? loadingCmmunityLike,
    TResult Function(_ErrorCmmunityLike value)? errorCmmunityLike,
    TResult Function(_LikedCmmunity value)? likedCommunity,
    TResult Function(_UnLikedCmmunity value)? unlikedCommunity,
    required TResult orElse(),
  }) {
    if (unlikedCommunity != null) {
      return unlikedCommunity(this);
    }
    return orElse();
  }
}

abstract class _UnLikedCmmunity implements CommunityLikeState {
  const factory _UnLikedCmmunity() = _$UnLikedCmmunityImpl;
}
