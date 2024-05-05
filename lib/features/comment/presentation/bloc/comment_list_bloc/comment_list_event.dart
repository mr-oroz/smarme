part of 'comment_list_bloc.dart';

@freezed
class CommentListEvent with _$CommentListEvent {
  const factory CommentListEvent.getComments({String? postId}) = _GetComments;
  const factory CommentListEvent.addNewComments(Comment comment) = _AddNewComments;
}
