part of 'post_create_bloc.dart';

@freezed
class PostCreateState with _$PostCreateState {
  const factory PostCreateState.initial() = _Initial;
  const factory PostCreateState.loading() = _Loading;
  const factory PostCreateState.error({required String message}) = _Error;
  const factory PostCreateState.success(Post post) = _Success;
}
