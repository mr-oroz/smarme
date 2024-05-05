import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:w_sharme_beauty/features/question/domain/entities/add_question.dart';

part 'question_bloc.freezed.dart';
part 'question_event.dart';
part 'question_state.dart';

@injectable
class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  QuestionBloc() : super(const _Initial()) {
    on<QuestionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
