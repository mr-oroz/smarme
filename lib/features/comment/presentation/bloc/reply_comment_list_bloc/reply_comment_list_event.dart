part of 'reply_comment_list_bloc.dart';

@freezed
class ReplyCommentListEvent with _$ReplyCommentListEvent {
  const factory ReplyCommentListEvent.getReplyComments({String? postId, String? parentCommentId}) = _GetReplyComments;
  const factory ReplyCommentListEvent.addNewComments(Comment comment) = _AddNewComments;
}
