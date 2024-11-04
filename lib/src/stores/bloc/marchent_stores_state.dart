import 'package:feeef_marchant/feeef/core/validation/validation_exception.dart';
import 'package:feeef_marchant/feeef/products/models/product.dart';
import 'package:feeef_marchant/feeef/shipping_methods/models/shipping_method.dart';
import 'package:feeef_marchant/feeef/stores/models/store.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../feeef/interfaces/embadded/store_summary.dart';

part 'marchent_stores_state.freezed.dart';
part 'marchent_stores_state.g.dart';

@freezed
class MarchentStoresState with _$MarchentStoresState {
  const factory MarchentStoresState({
    @Default(MarchentStoresStatus.initial) MarchentStoresStatus status,
    @Default([]) List<Store> stores,
    Store? store,
    StoreSummary? summary,
    // shipping methods
    List<ShippingMethod>? shippingMethods,
    FeeefValidationException? error,
  }) = _MarchentStoresState;

  factory MarchentStoresState.fromJson(Map<String, dynamic> json) => _$MarchentStoresStateFromJson(json);
}


// status
enum MarchentStoresStatus {
  initial,
  loading,
  loaded,
  loadError,

  finding,
  found,
  findError,

  creating,
  created,
  createError,

  updating,
  updated,
  updateError,

  loadingProducts,
  loadedProducts,
  loadProductsError,
}



// @freezed
// abstract class MarchentStoresState with _$MarchentStoresState {
//   //  List<Store> stores;
//    const MarchentStoresState()

  // const factory MarchentStoresState.initial({@Default([]) List<Store> stores}) = _Initial;
  // // stores list
  // const factory MarchentStoresState.loaded({@Default([]) List<Store> stores}) = MarchentStoresLoaded;
  // const factory MarchentStoresState.loading({@Default([]) List<Store> stores}) = MarchentStoresLoading;
  // const factory MarchentStoresState.loadError({@Default([]) List<Store> stores, required String message}) = MarchentStoresLoadError;
  // // store creation
  // const factory MarchentStoresState.created({@Default([]) List<Store> stores, required Store store}) = MarchentStoresStoreCreated;
  // const factory MarchentStoresState.creating({@Default([]) List<Store> stores, required Store store}) = MarchentStoresCreating;
  // const factory MarchentStoresState.createError({@Default([]) List<Store> stores, required Store store, required String message}) = MarchentStoresCreateError;
  // store update
  // const factory MarchentStoresState.updated(Store store) = MarchentStoresStoreUpdated;
  // const factory MarchentStoresState.updating(Store store) = MarchentStoresUpdating;
  // const factory MarchentStoresState.updateError(String message) = MarchentStoresUpdateError;
  // // store delete
  // const factory MarchentStoresState.deleted(Store store) = MarchentStoresStoreDeleted;
  // const factory MarchentStoresState.deleting(Store store) = MarchentStoresDeleting;
  // const factory MarchentStoresState.deleteError(String message) = MarchentStoresDeleteError;
// }
