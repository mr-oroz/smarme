// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      authorId: json['authorId'] as String?,
      postId: json['postId'] as String?,
      username: json['username'] as String?,
      text: json['text'] as String,
      imageUrls: (json['imageUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      avatarUrl: json['avatarUrl'] as String? ?? '',
      videoUrl: json['videoUrl'] as String?,
      likes:
          (json['likes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      reposts: (json['reposts'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isFavorite: json['isFavorite'] as bool? ?? false,
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'authorId': instance.authorId,
      'postId': instance.postId,
      'username': instance.username,
      'text': instance.text,
      'imageUrls': instance.imageUrls,
      'avatarUrl': instance.avatarUrl,
      'videoUrl': instance.videoUrl,
      'likes': instance.likes,
      'reposts': instance.reposts,
      'isFavorite': instance.isFavorite,
      'createdAt': instance.createdAt,
    };
