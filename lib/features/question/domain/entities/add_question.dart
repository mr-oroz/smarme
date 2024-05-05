import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_question.freezed.dart';
part 'add_question.g.dart';

@freezed
class AddQuestion with _$AddQuestion {
  factory AddQuestion({
    required String questionText,
    String? uid,
    String? questionId,
    String? imageUrl,
    @Default([]) List<String> answers,
    @TimestampConverter() DateTime? createdAt,
  }) = _AddQuestion;

  factory AddQuestion.fromJson(Map<String, dynamic> json) =>
      _$AddQuestionFromJson(json);
}

class TimestampConverter
    implements JsonConverter<DateTime?, Map<String, dynamic>?> {
  const TimestampConverter();

  @override
  DateTime? fromJson(Map<String, dynamic>? json) {
    if (json == null || json['seconds'] == null) {
      return null;
    }
    return DateTime.fromMillisecondsSinceEpoch((json['seconds'] as int) * 1000);
  }

  @override
  Map<String, dynamic>? toJson(DateTime? dateTime) {
    return dateTime != null
        ? {'seconds': dateTime.millisecondsSinceEpoch ~/ 1000}
        : null;
  }
}
