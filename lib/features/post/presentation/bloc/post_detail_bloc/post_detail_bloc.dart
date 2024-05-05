import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/features/auth/domain/repositories/i_auth_facade.dart';
import 'package:w_sharme_beauty/features/post/domain/entities/entities.dart';
import 'package:w_sharme_beauty/features/post/domain/repositories/repositories.dart';

part 'post_detail_event.dart';
part 'post_detail_state.dart';
part 'post_detail_bloc.freezed.dart';

@injectable
class PostDetailBloc extends Bloc<PostDetailEvent, PostDetailState> {
  PostDetailBloc(this._postRepository, this._authFacade)
      : super(const _Initial()) {
    on<PostDetailEvent>((event, emit) async {
      await event.maybeWhen(
        getPost: (value) async {
          emit(const PostDetailState.loading());
          final userOption = await _authFacade.getSignedInUser();
          await userOption.fold(() async {
            emit(const PostDetailState.error(message: 'nosigin'));
          }, (user) async {
            final result = await _postRepository.getPost(
              event.postId,
              user.uid,
            );
            await result.fold((e) async {
              emit(PostDetailState.error(message: e.messasge));
            }, (post) async {
              emit(PostDetailState.success(post));
            });
          });
        },
        orElse: () {},
      );
    });
  }
  final IPostRepository _postRepository;
  final IAuthFacade _authFacade;
}
