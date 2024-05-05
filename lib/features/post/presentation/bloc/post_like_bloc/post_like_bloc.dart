import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/features/post/domain/repositories/repositories.dart';

part 'post_like_event.dart';
part 'post_like_state.dart';
part 'post_like_bloc.freezed.dart';

@injectable
class PostLikeBloc extends Bloc<PostLikeEvent, PostLikeState> {
  PostLikeBloc(this._postRepository) : super(const _Initial()) {
    on<PostLikeEvent>((event, emit) async {
      await event.map(
        like: (_Like value) async {
          emit(const PostLikeState.loading());
          try {
            await _postRepository.updateLikes(
              event.postId,
              event.authorId,
              true,
            );
            emit(const PostLikeState.liked());
          } catch (e) {
            emit(PostLikeState.error(message: e.toString()));
          }
        },
        dislike: (_Dislike value) async {
          emit(const PostLikeState.loading());
          try {
            await _postRepository.updateLikes(
              event.postId,
              event.authorId,
              false,
            );
            emit(const PostLikeState.unliked());
          } catch (e) {
            emit(PostLikeState.error(message: e.toString()));
          }
        },
      );
    });
  }
  final IPostRepository _postRepository;
}
