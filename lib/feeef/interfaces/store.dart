import 'package:feeef_marchant/feeef/interfaces/embadded/embadded_category.dart';

import 'embadded/store.dart';
import 'embadded/store_integrations.dart';

abstract class StoreEntity {
  String get slug;
  StoreBanner? get banner;
  StoreAction? get action;
  StoreDomain? get domain;
  StoreDecoration? get decoration;
  String get name;
  String? get logoUrl;
  String? get ondarkLogoUrl;
  String get userId;
  List<EmbaddedCategory> get categories;
  String? get title;
  String? get description;
  List<EmbaddedAddress> get addresses;
  Map<String, dynamic> get metadata;
  List<EmbaddedContact> get contacts;
  StoreIntegrations get integrations;
  DateTime? get verifiedAt;
  DateTime? get blockedAt;

  // metaPixelIds
  List<String>? get metaPixelIds;
}
