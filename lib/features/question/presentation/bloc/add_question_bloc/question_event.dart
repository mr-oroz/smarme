part of 'question_bloc.dart';

@freezed
class QuestionEvent with _$QuestionEvent {
  const factory QuestionEvent.started() = _Started;
  const factory QuestionEvent.addedQuestion(AddQuestion question) =
      _AddedQuestionEvent;
}
