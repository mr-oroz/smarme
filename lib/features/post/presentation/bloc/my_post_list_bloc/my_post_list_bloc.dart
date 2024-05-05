import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/features/auth/domain/repositories/i_auth_facade.dart';
import 'package:w_sharme_beauty/features/post/domain/entities/entities.dart';
import 'package:w_sharme_beauty/features/post/domain/repositories/repositories.dart';

part 'my_post_list_bloc_event.dart';
part 'my_post_list_bloc_state.dart';
part 'my_post_list_bloc.freezed.dart';

@injectable
class MyPostListBloc extends Bloc<MyPostListEvent, MyPostListState> {
  MyPostListBloc(this._postRepository, this._authFacade)
      : super(const MyPostListState.initial()) {
    on<MyPostListEvent>(
      (event, emit) async {
        await event.map(
          getPosts: (event) async {
            emit(const MyPostListState.loading());
            final userOption = await _authFacade.getSignedInUser();
            await userOption.fold(
              () {
                emit(const MyPostListState.notSignedIn());
              },
              (user) async {
                final result = await _postRepository.getPosts(userId: user.uid);
                result.fold(
                  (error) {
                    emit(MyPostListState.error(message: error.messasge));
                  },
                  (posts) {
                    emit(MyPostListState.success(posts));
                  },
                );
              },
            );
          },
          addNewPost: (event) async {
            state.maybeWhen(
              success: (posts) async {
                final data = [event.post, ...posts];
                emit(MyPostListState.success(data));
              },
              orElse: () {},
            );
          },
        );
      },
    );
  }

  final IPostRepository _postRepository;
  final IAuthFacade _authFacade;
}
