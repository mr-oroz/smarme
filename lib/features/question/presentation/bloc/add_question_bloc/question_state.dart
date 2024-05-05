part of 'question_bloc.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState.initial() = _Initial;
  const factory QuestionState.loading() = _LoadingQuestion;
  const factory QuestionState.loaded(List<AddQuestion> questions) =
      _LoadedQuestions;

  const factory QuestionState.error({required String message}) = _ErrorQuestion;
}
