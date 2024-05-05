import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/features/communities/domain/entities/community.dart';
import 'package:w_sharme_beauty/features/communities/domain/repositories/i_community_repository.dart';

part 'community_list_event.dart';
part 'community_list_state.dart';
part 'community_list_bloc.freezed.dart';

@injectable
class CommunityListBloc extends Bloc<CommunityListEvent, CommunityListState> {
  CommunityListBloc(this._repository) : super(const _Initial()) {
    on<CommunityListEvent>((event, emit) async {
      await event.maybeWhen(
        getCommunities: () async {
          emit(const CommunityListState.loading());
          final result = await _repository.communitiesList();
          result.fold(
            (l) {
              emit(CommunityListState.error(l.messasge));
            },
            (communities) {
              emit(CommunityListState.success(communities));
            },
          );
        },
        orElse: () {},
      );
    });
  }
  final ICommunityRepository _repository;
}
