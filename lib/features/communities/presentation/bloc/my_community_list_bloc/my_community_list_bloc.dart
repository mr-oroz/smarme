import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/features/auth/domain/repositories/i_auth_facade.dart';
import 'package:w_sharme_beauty/features/communities/domain/entities/community.dart';
import 'package:w_sharme_beauty/features/communities/domain/repositories/i_community_repository.dart';

part 'my_community_list_event.dart';
part 'my_community_list_state.dart';
part 'my_community_list_bloc.freezed.dart';

@injectable
class MyCommunityListBloc
    extends Bloc<MyCommunityListEvent, MyCommunityListState> {
  MyCommunityListBloc(this._communityRepository, this._authFacade)
      : super(const _Initial()) {
    on<MyCommunityListEvent>((event, emit) async {
      await event.maybeWhen(
        getMyCommunity: () async {
          emit(const MyCommunityListState.loading());
          final userId = await _authFacade.getSignedInUser();
          await userId.fold(
            () {
              emit(const MyCommunityListState.notSignedIn());
            },
            (uid) async {
              final result =
                  await _communityRepository.communitiesList(userId: uid.uid);
              result.fold(
                (l) {
                  emit(MyCommunityListState.error(message: l.toString()));
                },
                (communities) {
                  emit(MyCommunityListState.success(communities));
                },
              );
            },
          );
        },
        addNewCommunity: (community) async {
          state.maybeWhen(
            success: (communities) {
              final data = [...communities, community];
              emit(MyCommunityListState.success(data));
            },
            orElse: () {},
          );
        },
        orElse: () {},
      );
    });
  }
  final ICommunityRepository _communityRepository;
  final IAuthFacade _authFacade;
}
