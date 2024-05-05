import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/features/auth/domain/repositories/i_auth_facade.dart';
import 'package:w_sharme_beauty/features/post/domain/entities/entities.dart';
import 'package:w_sharme_beauty/features/post/domain/repositories/repositories.dart';
import 'package:w_sharme_beauty/features/post/presentation/bloc/my_post_list_bloc/my_post_list_bloc.dart';
import 'package:w_sharme_beauty/features/post/presentation/bloc/post_list_bloc/post_list_bloc.dart';
import 'package:w_sharme_beauty/features/profile/domain/repositories/i_profile_info_repository.dart';

part 'post_create_event.dart';
part 'post_create_state.dart';
part 'post_create_bloc.freezed.dart';

@injectable
class PostCreateBloc extends Bloc<PostCreateEvent, PostCreateState> {
  PostCreateBloc(
    this._repository,
    this._iProfileInfoRepository,
    this._authFacade,
  ) : super(const PostCreateState.initial()) {
    on<PostCreateEvent>(
      (event, emit) async {
        await event.map(
          createPost: (event) async {
            emit(const PostCreateState.loading());
            final userOption = await _authFacade.getSignedInUser();
            await userOption.fold(() {
              emit(
                const PostCreateState.error(
                  message: 'not user authentication',
                ),
              );
            }, (user) async {
              final username =
                  await _iProfileInfoRepository.getMeInfo(user.uid);
              await username.fold((l) {
                emit(const PostCreateState.error(message: 'not username'));
              }, (post) async {
                final result = await _repository.createPost(
                  event.post,
                  event.imageFiles,
                  post.username.toString(),
                  post.profilePictureUrl,
                );
                result.fold(
                  (error) {
                    emit(PostCreateState.error(message: error.messasge));
                  },
                  (post) {
                    emit(PostCreateState.success(event.post));
                  },
                );
              });
            });
          },
        );
      },
    );
  }

  final IPostRepository _repository;
  final IProfileInfoRepository _iProfileInfoRepository;
  final IAuthFacade _authFacade;
}
