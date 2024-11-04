/// nullIfEmpty extension to String
extension NullIfEmpty on String {
  String? get nullIfEmpty => isEmpty ? null : this;
  // firstCharOrNull
  String? get firstChar => nullIfEmpty == null ? null : this[0];

  // concatIfNotEmpty
  String concatIfNotEmpty(String? value) => value == null ? this : '$this$value';
}
