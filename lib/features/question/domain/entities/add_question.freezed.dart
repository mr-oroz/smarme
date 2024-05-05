// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddQuestion _$AddQuestionFromJson(Map<String, dynamic> json) {
  return _AddQuestion.fromJson(json);
}

/// @nodoc
mixin _$AddQuestion {
  String get questionText => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  String? get questionId => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddQuestionCopyWith<AddQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddQuestionCopyWith<$Res> {
  factory $AddQuestionCopyWith(
          AddQuestion value, $Res Function(AddQuestion) then) =
      _$AddQuestionCopyWithImpl<$Res, AddQuestion>;
  @useResult
  $Res call(
      {String questionText,
      String? uid,
      String? questionId,
      String? imageUrl,
      List<String> answers,
      @TimestampConverter() DateTime? createdAt});
}

/// @nodoc
class _$AddQuestionCopyWithImpl<$Res, $Val extends AddQuestion>
    implements $AddQuestionCopyWith<$Res> {
  _$AddQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionText = null,
    Object? uid = freezed,
    Object? questionId = freezed,
    Object? imageUrl = freezed,
    Object? answers = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddQuestionImplCopyWith<$Res>
    implements $AddQuestionCopyWith<$Res> {
  factory _$$AddQuestionImplCopyWith(
          _$AddQuestionImpl value, $Res Function(_$AddQuestionImpl) then) =
      __$$AddQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String questionText,
      String? uid,
      String? questionId,
      String? imageUrl,
      List<String> answers,
      @TimestampConverter() DateTime? createdAt});
}

/// @nodoc
class __$$AddQuestionImplCopyWithImpl<$Res>
    extends _$AddQuestionCopyWithImpl<$Res, _$AddQuestionImpl>
    implements _$$AddQuestionImplCopyWith<$Res> {
  __$$AddQuestionImplCopyWithImpl(
      _$AddQuestionImpl _value, $Res Function(_$AddQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionText = null,
    Object? uid = freezed,
    Object? questionId = freezed,
    Object? imageUrl = freezed,
    Object? answers = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$AddQuestionImpl(
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddQuestionImpl implements _AddQuestion {
  _$AddQuestionImpl(
      {required this.questionText,
      this.uid,
      this.questionId,
      this.imageUrl,
      final List<String> answers = const [],
      @TimestampConverter() this.createdAt})
      : _answers = answers;

  factory _$AddQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddQuestionImplFromJson(json);

  @override
  final String questionText;
  @override
  final String? uid;
  @override
  final String? questionId;
  @override
  final String? imageUrl;
  final List<String> _answers;
  @override
  @JsonKey()
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  @TimestampConverter()
  final DateTime? createdAt;

  @override
  String toString() {
    return 'AddQuestion(questionText: $questionText, uid: $uid, questionId: $questionId, imageUrl: $imageUrl, answers: $answers, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddQuestionImpl &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, questionText, uid, questionId,
      imageUrl, const DeepCollectionEquality().hash(_answers), createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddQuestionImplCopyWith<_$AddQuestionImpl> get copyWith =>
      __$$AddQuestionImplCopyWithImpl<_$AddQuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddQuestionImplToJson(
      this,
    );
  }
}

abstract class _AddQuestion implements AddQuestion {
  factory _AddQuestion(
      {required final String questionText,
      final String? uid,
      final String? questionId,
      final String? imageUrl,
      final List<String> answers,
      @TimestampConverter() final DateTime? createdAt}) = _$AddQuestionImpl;

  factory _AddQuestion.fromJson(Map<String, dynamic> json) =
      _$AddQuestionImpl.fromJson;

  @override
  String get questionText;
  @override
  String? get uid;
  @override
  String? get questionId;
  @override
  String? get imageUrl;
  @override
  List<String> get answers;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$AddQuestionImplCopyWith<_$AddQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
