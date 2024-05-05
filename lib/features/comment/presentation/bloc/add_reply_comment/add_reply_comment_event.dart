part of 'add_reply_comment_bloc.dart';

@freezed
class AddReplyCommentEvent with _$AddReplyCommentEvent {
  const factory AddReplyCommentEvent.addReplyComment(Comment comment, String parentCommentId, String postId) = _AddReplyComment;
}
