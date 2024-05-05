import 'package:freezed_annotation/freezed_annotation.dart';

part 'community.freezed.dart';
part 'community.g.dart';

@freezed
class Community with _$Community {
  factory Community({
    String? communityId,
    String? uid,
    String? communityName,
    String? description,
    String? category,
    @Default("") String? avatarUrls,
    @Default([]) List<String>? participants,
    @Default(false) bool isFavorite,
    @Default("") String? createdAt,
  }) = _Community;

  factory Community.fromJson(Map<String, dynamic> json) =>
      _$CommunityFromJson(json);

  factory Community.fromStoreData(Map<String, dynamic> firestoreData) {
    return Community(
      communityId: firestoreData['communityId'] as String?,
      uid: firestoreData['uid'] as String?,
      avatarUrls: firestoreData['avatarUrls'] as String?,
      communityName: firestoreData['communityName'] as String?,
      description: firestoreData['description'] as String?,
      category: firestoreData['uid'] as String?,
      participants: List<String>.from(
        firestoreData['participants'] as List<dynamic>? ?? [],
      ),
      isFavorite: firestoreData['isFavorite'] as bool? ?? false,
      createdAt: firestoreData['createdAt'] as String?,
    );
  }
}
