import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'community_like_event.dart';
part 'community_like_state.dart';
part 'community_like_bloc.freezed.dart';

@injectable
class CommunityLikeBloc extends Bloc<CommunityLikeEvent, CommunityLikeState> {
  CommunityLikeBloc() : super(const _Initial()) {
    on<CommunityLikeEvent>((event, emit) {});

    on<CommunityLikeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
