// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoriesImpl _$$StoriesImplFromJson(Map<String, dynamic> json) =>
    _$StoriesImpl(
      uid: json['uid'] as String?,
      title: json['title'] as String?,
      imageUrl: json['imageUrl'] as String?,
      videoUrl: json['videoUrl'] as String?,
      isFavorite: json['isFavorite'] as bool? ?? false,
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$$StoriesImplToJson(_$StoriesImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'videoUrl': instance.videoUrl,
      'isFavorite': instance.isFavorite,
      'createdAt': instance.createdAt,
    };
