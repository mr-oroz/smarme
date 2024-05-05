import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/features/comment/domain/entities/comment.dart';
import 'package:w_sharme_beauty/features/comment/domain/repositiories/i_comment_repository.dart';

part 'comment_list_event.dart';
part 'comment_list_state.dart';
part 'comment_list_bloc.freezed.dart';

@injectable
class CommentListBloc extends Bloc<CommentListEvent, CommentListState> {
  CommentListBloc(this._commentRepository) : super(const _Initial()) {
    on<CommentListEvent>((event, emit) async {
      await event.maybeWhen(
        getComments: (postId) async {
          emit(const CommentListState.loading());
          final result = await _commentRepository.getComments(postId: postId);
          result.fold((error) {
            emit(CommentListState.error(error: error.messasge));
          }, (comments) {
            emit(CommentListState.success(comments));
          });
        },
        addNewComments: (comment) {
          state.maybeWhen(
            success: (comments) {
              emit(CommentListState.success([comment, ...comments]));
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
