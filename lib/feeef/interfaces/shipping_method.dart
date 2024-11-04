abstract class ShippingMethodEntity {
  String get name;
  String? get description;
  String? get logoUrl;
  String? get ondarkLogoUrl;
  num get price;
  num get forks;
  String? get sourceId;
  String get storeId;
  List<List<num?>?> get rates;
  ShippingMethodStatus get status;
  ShippingMethodPolicy get policy;
  DateTime? get verifiedAt;
  // StoreEntity get store;
  // List<OrderEntity> get orders;
  // ShippingMethodEntity? get source;
}

enum ShippingMethodStatus {
  draft,
  published,
  archived,
}

enum ShippingMethodPolicy {
  private,
  public,
}
