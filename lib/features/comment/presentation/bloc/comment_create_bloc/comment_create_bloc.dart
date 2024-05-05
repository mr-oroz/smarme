import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:w_sharme_beauty/features/auth/domain/repositories/repositories.dart';
import 'package:w_sharme_beauty/features/comment/domain/entities/comment.dart';
import 'package:w_sharme_beauty/features/comment/domain/repositiories/i_comment_repository.dart';
import 'package:w_sharme_beauty/features/comment/presentation/bloc/comment_list_bloc/comment_list_bloc.dart';
import 'package:w_sharme_beauty/features/profile/domain/repositories/i_profile_info_repository.dart';

part 'comment_create_event.dart';
part 'comment_create_state.dart';
part 'comment_create_bloc.freezed.dart';

@injectable
class CommentCreateBloc extends Bloc<CommentCreateEvent, CommentCreateState> {
  CommentCreateBloc(
    this._repository,
    this._authFacade,
    this._iProfileInfoRepository,
    this._commentListBloc,
  ) : super(const _Initial()) {
    on<CommentCreateEvent>((event, emit) async {
      await event.maybeMap(
        addComment: (event) async {
          emit(const CommentCreateState.loading());
          final userOption = await _authFacade.getSignedInUser();
          await userOption.fold(
            () {
              emit(const CommentCreateState.error());
            },
            (user) async {
              final userData =
                  await _iProfileInfoRepository.getMeInfo(user.uid);
              await userData.fold((l) {}, (data) async {
                final newCommentId = const Uuid().v1();
                final updateComment = Comment(
                  commentId: newCommentId,
                  uid: data.uid,
                  username: data.username,
                  avatarUrl: data.profilePictureUrl,
                  comment: event.comment.comment,
                  createdAt: Timestamp.now(),
                );
                final result = await _repository.createComment(
                  comment: updateComment,
                  postId: event.postId,
                );
                result.fold(
                  (l) => {
                    emit(const CommentCreateState.error()),
                  },
                  (comment) => {
                    emit(CommentCreateState.success(updateComment)),
                    _commentListBloc.add(
                      CommentListEvent.getComments(postId: event.postId),
                    ),
                  },
                );
              });
            },
          );
        },
        orElse: () {},
      );
    });
  }

  final ICommentRepository _repository;
  final IProfileInfoRepository _iProfileInfoRepository;
  final IAuthFacade _authFacade;
  final CommentListBloc _commentListBloc;
}
