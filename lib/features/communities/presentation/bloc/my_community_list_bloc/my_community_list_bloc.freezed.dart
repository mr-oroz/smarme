// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_community_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyCommunityListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMyCommunity,
    required TResult Function(Community community) addNewCommunity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMyCommunity,
    TResult? Function(Community community)? addNewCommunity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMyCommunity,
    TResult Function(Community community)? addNewCommunity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMyCommunity value) getMyCommunity,
    required TResult Function(_AddNewCommunity value) addNewCommunity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMyCommunity value)? getMyCommunity,
    TResult? Function(_AddNewCommunity value)? addNewCommunity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMyCommunity value)? getMyCommunity,
    TResult Function(_AddNewCommunity value)? addNewCommunity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCommunityListEventCopyWith<$Res> {
  factory $MyCommunityListEventCopyWith(MyCommunityListEvent value,
          $Res Function(MyCommunityListEvent) then) =
      _$MyCommunityListEventCopyWithImpl<$Res, MyCommunityListEvent>;
}

/// @nodoc
class _$MyCommunityListEventCopyWithImpl<$Res,
        $Val extends MyCommunityListEvent>
    implements $MyCommunityListEventCopyWith<$Res> {
  _$MyCommunityListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMyCommunityImplCopyWith<$Res> {
  factory _$$GetMyCommunityImplCopyWith(_$GetMyCommunityImpl value,
          $Res Function(_$GetMyCommunityImpl) then) =
      __$$GetMyCommunityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMyCommunityImplCopyWithImpl<$Res>
    extends _$MyCommunityListEventCopyWithImpl<$Res, _$GetMyCommunityImpl>
    implements _$$GetMyCommunityImplCopyWith<$Res> {
  __$$GetMyCommunityImplCopyWithImpl(
      _$GetMyCommunityImpl _value, $Res Function(_$GetMyCommunityImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMyCommunityImpl implements _GetMyCommunity {
  const _$GetMyCommunityImpl();

  @override
  String toString() {
    return 'MyCommunityListEvent.getMyCommunity()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMyCommunityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMyCommunity,
    required TResult Function(Community community) addNewCommunity,
  }) {
    return getMyCommunity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMyCommunity,
    TResult? Function(Community community)? addNewCommunity,
  }) {
    return getMyCommunity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMyCommunity,
    TResult Function(Community community)? addNewCommunity,
    required TResult orElse(),
  }) {
    if (getMyCommunity != null) {
      return getMyCommunity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMyCommunity value) getMyCommunity,
    required TResult Function(_AddNewCommunity value) addNewCommunity,
  }) {
    return getMyCommunity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMyCommunity value)? getMyCommunity,
    TResult? Function(_AddNewCommunity value)? addNewCommunity,
  }) {
    return getMyCommunity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMyCommunity value)? getMyCommunity,
    TResult Function(_AddNewCommunity value)? addNewCommunity,
    required TResult orElse(),
  }) {
    if (getMyCommunity != null) {
      return getMyCommunity(this);
    }
    return orElse();
  }
}

abstract class _GetMyCommunity implements MyCommunityListEvent {
  const factory _GetMyCommunity() = _$GetMyCommunityImpl;
}

/// @nodoc
abstract class _$$AddNewCommunityImplCopyWith<$Res> {
  factory _$$AddNewCommunityImplCopyWith(_$AddNewCommunityImpl value,
          $Res Function(_$AddNewCommunityImpl) then) =
      __$$AddNewCommunityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Community community});

  $CommunityCopyWith<$Res> get community;
}

/// @nodoc
class __$$AddNewCommunityImplCopyWithImpl<$Res>
    extends _$MyCommunityListEventCopyWithImpl<$Res, _$AddNewCommunityImpl>
    implements _$$AddNewCommunityImplCopyWith<$Res> {
  __$$AddNewCommunityImplCopyWithImpl(
      _$AddNewCommunityImpl _value, $Res Function(_$AddNewCommunityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? community = null,
  }) {
    return _then(_$AddNewCommunityImpl(
      null == community
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as Community,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommunityCopyWith<$Res> get community {
    return $CommunityCopyWith<$Res>(_value.community, (value) {
      return _then(_value.copyWith(community: value));
    });
  }
}

/// @nodoc

class _$AddNewCommunityImpl implements _AddNewCommunity {
  const _$AddNewCommunityImpl(this.community);

  @override
  final Community community;

  @override
  String toString() {
    return 'MyCommunityListEvent.addNewCommunity(community: $community)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewCommunityImpl &&
            (identical(other.community, community) ||
                other.community == community));
  }

  @override
  int get hashCode => Object.hash(runtimeType, community);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewCommunityImplCopyWith<_$AddNewCommunityImpl> get copyWith =>
      __$$AddNewCommunityImplCopyWithImpl<_$AddNewCommunityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMyCommunity,
    required TResult Function(Community community) addNewCommunity,
  }) {
    return addNewCommunity(community);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMyCommunity,
    TResult? Function(Community community)? addNewCommunity,
  }) {
    return addNewCommunity?.call(community);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMyCommunity,
    TResult Function(Community community)? addNewCommunity,
    required TResult orElse(),
  }) {
    if (addNewCommunity != null) {
      return addNewCommunity(community);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMyCommunity value) getMyCommunity,
    required TResult Function(_AddNewCommunity value) addNewCommunity,
  }) {
    return addNewCommunity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMyCommunity value)? getMyCommunity,
    TResult? Function(_AddNewCommunity value)? addNewCommunity,
  }) {
    return addNewCommunity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMyCommunity value)? getMyCommunity,
    TResult Function(_AddNewCommunity value)? addNewCommunity,
    required TResult orElse(),
  }) {
    if (addNewCommunity != null) {
      return addNewCommunity(this);
    }
    return orElse();
  }
}

abstract class _AddNewCommunity implements MyCommunityListEvent {
  const factory _AddNewCommunity(final Community community) =
      _$AddNewCommunityImpl;

  Community get community;
  @JsonKey(ignore: true)
  _$$AddNewCommunityImplCopyWith<_$AddNewCommunityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyCommunityListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Community> communities) success,
    required TResult Function(String message) error,
    required TResult Function() notSignedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Community> communities)? success,
    TResult? Function(String message)? error,
    TResult? Function()? notSignedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Community> communities)? success,
    TResult Function(String message)? error,
    TResult Function()? notSignedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_NotSignedIn value) notSignedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_NotSignedIn value)? notSignedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_NotSignedIn value)? notSignedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCommunityListStateCopyWith<$Res> {
  factory $MyCommunityListStateCopyWith(MyCommunityListState value,
          $Res Function(MyCommunityListState) then) =
      _$MyCommunityListStateCopyWithImpl<$Res, MyCommunityListState>;
}

/// @nodoc
class _$MyCommunityListStateCopyWithImpl<$Res,
        $Val extends MyCommunityListState>
    implements $MyCommunityListStateCopyWith<$Res> {
  _$MyCommunityListStateCopyWithImpl(this._value, this._then);

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
    extends _$MyCommunityListStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'MyCommunityListState.initial()';
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
    required TResult Function() loading,
    required TResult Function(List<Community> communities) success,
    required TResult Function(String message) error,
    required TResult Function() notSignedIn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Community> communities)? success,
    TResult? Function(String message)? error,
    TResult? Function()? notSignedIn,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Community> communities)? success,
    TResult Function(String message)? error,
    TResult Function()? notSignedIn,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_NotSignedIn value) notSignedIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_NotSignedIn value)? notSignedIn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_NotSignedIn value)? notSignedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MyCommunityListState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$MyCommunityListStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'MyCommunityListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Community> communities) success,
    required TResult Function(String message) error,
    required TResult Function() notSignedIn,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Community> communities)? success,
    TResult? Function(String message)? error,
    TResult? Function()? notSignedIn,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Community> communities)? success,
    TResult Function(String message)? error,
    TResult Function()? notSignedIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_NotSignedIn value) notSignedIn,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_NotSignedIn value)? notSignedIn,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_NotSignedIn value)? notSignedIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MyCommunityListState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Community> communities});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$MyCommunityListStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communities = null,
  }) {
    return _then(_$SuccessImpl(
      null == communities
          ? _value._communities
          : communities // ignore: cast_nullable_to_non_nullable
              as List<Community>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<Community> communities)
      : _communities = communities;

  final List<Community> _communities;
  @override
  List<Community> get communities {
    if (_communities is EqualUnmodifiableListView) return _communities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_communities);
  }

  @override
  String toString() {
    return 'MyCommunityListState.success(communities: $communities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._communities, _communities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_communities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Community> communities) success,
    required TResult Function(String message) error,
    required TResult Function() notSignedIn,
  }) {
    return success(communities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Community> communities)? success,
    TResult? Function(String message)? error,
    TResult? Function()? notSignedIn,
  }) {
    return success?.call(communities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Community> communities)? success,
    TResult Function(String message)? error,
    TResult Function()? notSignedIn,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(communities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_NotSignedIn value) notSignedIn,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_NotSignedIn value)? notSignedIn,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_NotSignedIn value)? notSignedIn,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements MyCommunityListState {
  const factory _Success(final List<Community> communities) = _$SuccessImpl;

  List<Community> get communities;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$MyCommunityListStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MyCommunityListState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Community> communities) success,
    required TResult Function(String message) error,
    required TResult Function() notSignedIn,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Community> communities)? success,
    TResult? Function(String message)? error,
    TResult? Function()? notSignedIn,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Community> communities)? success,
    TResult Function(String message)? error,
    TResult Function()? notSignedIn,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_NotSignedIn value) notSignedIn,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_NotSignedIn value)? notSignedIn,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_NotSignedIn value)? notSignedIn,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements MyCommunityListState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotSignedInImplCopyWith<$Res> {
  factory _$$NotSignedInImplCopyWith(
          _$NotSignedInImpl value, $Res Function(_$NotSignedInImpl) then) =
      __$$NotSignedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotSignedInImplCopyWithImpl<$Res>
    extends _$MyCommunityListStateCopyWithImpl<$Res, _$NotSignedInImpl>
    implements _$$NotSignedInImplCopyWith<$Res> {
  __$$NotSignedInImplCopyWithImpl(
      _$NotSignedInImpl _value, $Res Function(_$NotSignedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotSignedInImpl implements _NotSignedIn {
  const _$NotSignedInImpl();

  @override
  String toString() {
    return 'MyCommunityListState.notSignedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotSignedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Community> communities) success,
    required TResult Function(String message) error,
    required TResult Function() notSignedIn,
  }) {
    return notSignedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Community> communities)? success,
    TResult? Function(String message)? error,
    TResult? Function()? notSignedIn,
  }) {
    return notSignedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Community> communities)? success,
    TResult Function(String message)? error,
    TResult Function()? notSignedIn,
    required TResult orElse(),
  }) {
    if (notSignedIn != null) {
      return notSignedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_NotSignedIn value) notSignedIn,
  }) {
    return notSignedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_NotSignedIn value)? notSignedIn,
  }) {
    return notSignedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_NotSignedIn value)? notSignedIn,
    required TResult orElse(),
  }) {
    if (notSignedIn != null) {
      return notSignedIn(this);
    }
    return orElse();
  }
}

abstract class _NotSignedIn implements MyCommunityListState {
  const factory _NotSignedIn() = _$NotSignedInImpl;
}
