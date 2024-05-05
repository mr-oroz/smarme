import 'package:freezed_annotation/freezed_annotation.dart';

part 'stories.freezed.dart';
part 'stories.g.dart';


@freezed
class Stories with _$Stories {
  const factory Stories({
    String? uid,
    String? title,
    String? imageUrl,
    String? videoUrl,
    @Default(false) bool isFavorite,
    @Default('') String? createdAt,
  }) = _Stories;

  factory Stories.fromJson(Map<String, dynamic> json) =>
      _$StoriesFromJson(json);
}
