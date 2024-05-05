part of 'post_detail_bloc.dart';

@freezed
class PostDetailState with _$PostDetailState {
  const factory PostDetailState.initial() = _Initial;
  const factory PostDetailState.success(Post post) = _Success;
  const factory PostDetailState.loading() = _Loading;
  const factory PostDetailState.error({required String message}) = _Error;
}
