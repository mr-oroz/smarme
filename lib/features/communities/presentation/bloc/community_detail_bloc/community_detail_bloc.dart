import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/features/communities/domain/entities/community.dart';
import 'package:w_sharme_beauty/features/communities/domain/repositories/i_community_repository.dart';

part 'community_detail_event.dart';
part 'community_detail_state.dart';
part 'community_detail_bloc.freezed.dart';

@injectable
class CommunityDetailBloc
    extends Bloc<CommunityDetailEvent, CommunityDetailState> {
  CommunityDetailBloc(this._communityRepository) : super(const _Initial()) {
    on<CommunityDetailEvent>((event, emit) async {
      await event.maybeWhen(
        loaded: (value) async {
          emit(const CommunityDetailState.loading());
          final result = await _communityRepository.getDetail(
            communityId: event.communityId,
          );
          await result.fold((error) {
            emit(const CommunityDetailState.error());
          }, (community) async {
            emit(
              CommunityDetailState.success(community),
            );
          });
        },
        orElse: () {},
      );
    });
  }
  final ICommunityRepository _communityRepository;
}
