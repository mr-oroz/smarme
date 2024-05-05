// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddQuestion question) addedQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddQuestion question)? addedQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddQuestion question)? addedQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddedQuestionEvent value) addedQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddedQuestionEvent value)? addedQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddedQuestionEvent value)? addedQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEventCopyWith<$Res> {
  factory $QuestionEventCopyWith(
          QuestionEvent value, $Res Function(QuestionEvent) then) =
      _$QuestionEventCopyWithImpl<$Res, QuestionEvent>;
}

/// @nodoc
class _$QuestionEventCopyWithImpl<$Res, $Val extends QuestionEvent>
    implements $QuestionEventCopyWith<$Res> {
  _$QuestionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'QuestionEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddQuestion question) addedQuestion,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddQuestion question)? addedQuestion,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddQuestion question)? addedQuestion,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddedQuestionEvent value) addedQuestion,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddedQuestionEvent value)? addedQuestion,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddedQuestionEvent value)? addedQuestion,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements QuestionEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddedQuestionEventImplCopyWith<$Res> {
  factory _$$AddedQuestionEventImplCopyWith(_$AddedQuestionEventImpl value,
          $Res Function(_$AddedQuestionEventImpl) then) =
      __$$AddedQuestionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddQuestion question});

  $AddQuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$AddedQuestionEventImplCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res, _$AddedQuestionEventImpl>
    implements _$$AddedQuestionEventImplCopyWith<$Res> {
  __$$AddedQuestionEventImplCopyWithImpl(_$AddedQuestionEventImpl _value,
      $Res Function(_$AddedQuestionEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$AddedQuestionEventImpl(
      null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as AddQuestion,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddQuestionCopyWith<$Res> get question {
    return $AddQuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$AddedQuestionEventImpl implements _AddedQuestionEvent {
  const _$AddedQuestionEventImpl(this.question);

  @override
  final AddQuestion question;

  @override
  String toString() {
    return 'QuestionEvent.addedQuestion(question: $question)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedQuestionEventImpl &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedQuestionEventImplCopyWith<_$AddedQuestionEventImpl> get copyWith =>
      __$$AddedQuestionEventImplCopyWithImpl<_$AddedQuestionEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddQuestion question) addedQuestion,
  }) {
    return addedQuestion(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddQuestion question)? addedQuestion,
  }) {
    return addedQuestion?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddQuestion question)? addedQuestion,
    required TResult orElse(),
  }) {
    if (addedQuestion != null) {
      return addedQuestion(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddedQuestionEvent value) addedQuestion,
  }) {
    return addedQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddedQuestionEvent value)? addedQuestion,
  }) {
    return addedQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddedQuestionEvent value)? addedQuestion,
    required TResult orElse(),
  }) {
    if (addedQuestion != null) {
      return addedQuestion(this);
    }
    return orElse();
  }
}

abstract class _AddedQuestionEvent implements QuestionEvent {
  const factory _AddedQuestionEvent(final AddQuestion question) =
      _$AddedQuestionEventImpl;

  AddQuestion get question;
  @JsonKey(ignore: true)
  _$$AddedQuestionEventImplCopyWith<_$AddedQuestionEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AddQuestion> questions) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AddQuestion> questions)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AddQuestion> questions)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingQuestion value) loading,
    required TResult Function(_LoadedQuestions value) loaded,
    required TResult Function(_ErrorQuestion value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingQuestion value)? loading,
    TResult? Function(_LoadedQuestions value)? loaded,
    TResult? Function(_ErrorQuestion value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingQuestion value)? loading,
    TResult Function(_LoadedQuestions value)? loaded,
    TResult Function(_ErrorQuestion value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
          QuestionState value, $Res Function(QuestionState) then) =
      _$QuestionStateCopyWithImpl<$Res, QuestionState>;
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res, $Val extends QuestionState>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

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
    extends _$QuestionStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'QuestionState.initial()';
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
    required TResult Function(List<AddQuestion> questions) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AddQuestion> questions)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AddQuestion> questions)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_LoadingQuestion value) loading,
    required TResult Function(_LoadedQuestions value) loaded,
    required TResult Function(_ErrorQuestion value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingQuestion value)? loading,
    TResult? Function(_LoadedQuestions value)? loaded,
    TResult? Function(_ErrorQuestion value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingQuestion value)? loading,
    TResult Function(_LoadedQuestions value)? loaded,
    TResult Function(_ErrorQuestion value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuestionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingQuestionImplCopyWith<$Res> {
  factory _$$LoadingQuestionImplCopyWith(_$LoadingQuestionImpl value,
          $Res Function(_$LoadingQuestionImpl) then) =
      __$$LoadingQuestionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingQuestionImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$LoadingQuestionImpl>
    implements _$$LoadingQuestionImplCopyWith<$Res> {
  __$$LoadingQuestionImplCopyWithImpl(
      _$LoadingQuestionImpl _value, $Res Function(_$LoadingQuestionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingQuestionImpl implements _LoadingQuestion {
  const _$LoadingQuestionImpl();

  @override
  String toString() {
    return 'QuestionState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingQuestionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AddQuestion> questions) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AddQuestion> questions)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AddQuestion> questions)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_LoadingQuestion value) loading,
    required TResult Function(_LoadedQuestions value) loaded,
    required TResult Function(_ErrorQuestion value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingQuestion value)? loading,
    TResult? Function(_LoadedQuestions value)? loaded,
    TResult? Function(_ErrorQuestion value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingQuestion value)? loading,
    TResult Function(_LoadedQuestions value)? loaded,
    TResult Function(_ErrorQuestion value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingQuestion implements QuestionState {
  const factory _LoadingQuestion() = _$LoadingQuestionImpl;
}

/// @nodoc
abstract class _$$LoadedQuestionsImplCopyWith<$Res> {
  factory _$$LoadedQuestionsImplCopyWith(_$LoadedQuestionsImpl value,
          $Res Function(_$LoadedQuestionsImpl) then) =
      __$$LoadedQuestionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AddQuestion> questions});
}

/// @nodoc
class __$$LoadedQuestionsImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$LoadedQuestionsImpl>
    implements _$$LoadedQuestionsImplCopyWith<$Res> {
  __$$LoadedQuestionsImplCopyWithImpl(
      _$LoadedQuestionsImpl _value, $Res Function(_$LoadedQuestionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
  }) {
    return _then(_$LoadedQuestionsImpl(
      null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<AddQuestion>,
    ));
  }
}

/// @nodoc

class _$LoadedQuestionsImpl implements _LoadedQuestions {
  const _$LoadedQuestionsImpl(final List<AddQuestion> questions)
      : _questions = questions;

  final List<AddQuestion> _questions;
  @override
  List<AddQuestion> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'QuestionState.loaded(questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedQuestionsImpl &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedQuestionsImplCopyWith<_$LoadedQuestionsImpl> get copyWith =>
      __$$LoadedQuestionsImplCopyWithImpl<_$LoadedQuestionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AddQuestion> questions) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AddQuestion> questions)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AddQuestion> questions)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingQuestion value) loading,
    required TResult Function(_LoadedQuestions value) loaded,
    required TResult Function(_ErrorQuestion value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingQuestion value)? loading,
    TResult? Function(_LoadedQuestions value)? loaded,
    TResult? Function(_ErrorQuestion value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingQuestion value)? loading,
    TResult Function(_LoadedQuestions value)? loaded,
    TResult Function(_ErrorQuestion value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedQuestions implements QuestionState {
  const factory _LoadedQuestions(final List<AddQuestion> questions) =
      _$LoadedQuestionsImpl;

  List<AddQuestion> get questions;
  @JsonKey(ignore: true)
  _$$LoadedQuestionsImplCopyWith<_$LoadedQuestionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorQuestionImplCopyWith<$Res> {
  factory _$$ErrorQuestionImplCopyWith(
          _$ErrorQuestionImpl value, $Res Function(_$ErrorQuestionImpl) then) =
      __$$ErrorQuestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorQuestionImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$ErrorQuestionImpl>
    implements _$$ErrorQuestionImplCopyWith<$Res> {
  __$$ErrorQuestionImplCopyWithImpl(
      _$ErrorQuestionImpl _value, $Res Function(_$ErrorQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorQuestionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorQuestionImpl implements _ErrorQuestion {
  const _$ErrorQuestionImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'QuestionState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorQuestionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorQuestionImplCopyWith<_$ErrorQuestionImpl> get copyWith =>
      __$$ErrorQuestionImplCopyWithImpl<_$ErrorQuestionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AddQuestion> questions) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AddQuestion> questions)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AddQuestion> questions)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_LoadingQuestion value) loading,
    required TResult Function(_LoadedQuestions value) loaded,
    required TResult Function(_ErrorQuestion value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingQuestion value)? loading,
    TResult? Function(_LoadedQuestions value)? loaded,
    TResult? Function(_ErrorQuestion value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingQuestion value)? loading,
    TResult Function(_LoadedQuestions value)? loaded,
    TResult Function(_ErrorQuestion value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorQuestion implements QuestionState {
  const factory _ErrorQuestion({required final String message}) =
      _$ErrorQuestionImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorQuestionImplCopyWith<_$ErrorQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
