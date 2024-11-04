import 'package:freezed_annotation/freezed_annotation.dart';

part 'embadded_category.freezed.dart';
part 'embadded_category.g.dart';

@freezed
class EmbaddedCategory with _$EmbaddedCategory {
  factory EmbaddedCategory({
    required String name,
    String? description,
    String? photoUrl,
    String? ondarkPhotoUrl,
    // metadata
    @Default({}) Map<String, dynamic> metadata,
  }) = _EmbaddedCategory;

  factory EmbaddedCategory.fromJson(Map<String, dynamic> json) => _$EmbaddedCategoryFromJson(json);
}
