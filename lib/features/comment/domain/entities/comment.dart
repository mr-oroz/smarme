import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    @Default('') String? uid,
    @Default('') String? commentId,
    @Default('') String? comment,
    @Default('') String? username,
    @Default('') String? avatarUrl,
    @Default([]) List<String> likes,
    @Default('') String? parentCommentId,
    @TimestampConverter() Timestamp? createdAt,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}

class TimestampConverter implements JsonConverter<Timestamp?, dynamic> {
  const TimestampConverter();

  @override
  Timestamp? fromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return json is Timestamp ? json : null;
  }

  @override
  dynamic toJson(Timestamp? timestamp) {
    return timestamp;
  }
}
