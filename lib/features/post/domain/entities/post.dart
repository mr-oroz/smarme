import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    String? authorId,
    String? postId,
    String? username,
    required String text,
    @Default([]) List<String> imageUrls,
    @Default('') String? avatarUrl,
    String? videoUrl,
    @Default([]) List<String> likes,
    @Default([]) List<String> reposts,
    @Default(false) bool isFavorite,
    @Default('') String? createdAt,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  factory Post.fromStoreData(Map<String, dynamic> firestoreData) {
    return Post(
      authorId: firestoreData['authorId'] as String?,
      avatarUrl: firestoreData['avatarUrl'] as String?,
      username: firestoreData['username'] as String?,
      postId: firestoreData['postId'] as String?,
      text: firestoreData['text'] as String? ?? '',
      createdAt: firestoreData['createdAt'] as String? ?? '',
      imageUrls:
          List<String>.from(firestoreData['imageUrls'] as List<dynamic>? ?? []),
      videoUrl: firestoreData['videoUrl'] as String? ?? '',
      likes: List<String>.from(firestoreData['likes'] as List<dynamic>? ?? []),
      isFavorite: firestoreData['isFavorite'] as bool? ?? false,
    );
  }
}
