import 'package:dartz/dartz.dart';
import 'package:w_sharme_beauty/core/errors/errors.dart';
import 'package:w_sharme_beauty/features/question/domain/entities/add_question.dart';

abstract class AddQuestionRepository {
  Future<Either<PostError, Unit>> addQuestion(AddQuestion question);
}
