// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddQuestionImpl _$$AddQuestionImplFromJson(Map<String, dynamic> json) =>
    _$AddQuestionImpl(
      questionText: json['questionText'] as String,
      uid: json['uid'] as String?,
      questionId: json['questionId'] as String?,
      imageUrl: json['imageUrl'] as String?,
      answers: (json['answers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      createdAt: const TimestampConverter()
          .fromJson(json['createdAt'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$AddQuestionImplToJson(_$AddQuestionImpl instance) =>
    <String, dynamic>{
      'questionText': instance.questionText,
      'uid': instance.uid,
      'questionId': instance.questionId,
      'imageUrl': instance.imageUrl,
      'answers': instance.answers,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
