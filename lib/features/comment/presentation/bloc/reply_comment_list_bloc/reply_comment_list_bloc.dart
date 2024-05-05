import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/features/comment/domain/entities/comment.dart';
import 'package:w_sharme_beauty/features/comment/domain/repositiories/i_comment_repository.dart';

part 'reply_comment_list_event.dart';
part 'reply_comment_list_state.dart';
part 'reply_comment_list_bloc.freezed.dart';

@injectable
class ReplyCommentListBloc
    extends Bloc<ReplyCommentListEvent, ReplyCommentListState> {
  ReplyCommentListBloc(this._commentRepository) : super(const _Initial()) {
    on<ReplyCommentListEvent>((event, emit) async {
      await event.maybeWhen(
        getReplyComments: (postId, parentCommentId) async {
          emit(const ReplyCommentListState.loading());
          print(' проверка $postId, $parentCommentId');
          final result = await _commentRepository.getComments(
            postId: postId,
            parentCommentId: parentCommentId,
          );
          await result.fold((error) {
            emit(ReplyCommentListState.error(error: error.messasge));
          }, (comments) async {
            emit(ReplyCommentListState.success(comments));
          });
        },
        addNewComments: (comment) {
          state.maybeWhen(
            success: (comments) {
              emit(ReplyCommentListState.success([comment, ...comments]));
            },
            orElse: () {},
          );
        },
        orElse: () {},
      );
    });
  }

  final ICommentRepository _commentRepository;
}
