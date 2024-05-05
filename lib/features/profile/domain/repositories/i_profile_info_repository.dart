import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:w_sharme_beauty/core/errors/errors.dart';
import 'package:w_sharme_beauty/features/auth/domain/entities/entities.dart';

abstract class IProfileInfoRepository {
  Future<Either<PostError, Unit>> updateInfiProfile(
    UserProfile user,
    Uint8List avatar,
    String? email,
  );
  Future<Either<PostError, UserProfile>> getMeInfo(String? userId);
}
