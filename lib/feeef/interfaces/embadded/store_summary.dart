import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_summary.freezed.dart';
part 'store_summary.g.dart';

@freezed
class StoreSummary with _$StoreSummary {
  factory StoreSummary({required StoreOrdersSummary orders}) = _StoreSummary;

  factory StoreSummary.fromJson(Map<String, dynamic> json) => _$StoreSummaryFromJson(json);
}

@freezed
class StoreOrdersSummary with _$StoreOrdersSummary {
  factory StoreOrdersSummary({required int total, required int draft, required int pending, required int processing, required int completed, required int cancelled}) = _StoreOrdersSummary;

  factory StoreOrdersSummary.fromJson(Map<String, dynamic> json) => _$StoreOrdersSummaryFromJson(json);
}
