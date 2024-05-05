import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:w_sharme_beauty/core/errors/errors.dart';
import 'package:w_sharme_beauty/features/communities/domain/entities/community.dart';

abstract class ICommunityRepository {
  Future<Either<PostError, List<Community>>> communitiesList({
    String? userId,
  });
  Future<Either<PostError, Unit>> createCommunity(
    Community community,
    Uint8List avatar,
    String userId,
  );
  Future<Either<PostError, Unit>> deleteCommunity(Community community);
  Future<Either<PostError, Unit>> updateCommunity(Community community);
  Future<Either<PostError, Community>> getDetail({
    String? userId,
    String? communityId,
  });
}
