part of 'marchent_stores_bloc.dart';

@freezed
class MarchentStoresEvent with _$MarchentStoresEvent {
  const factory MarchentStoresEvent.load() = _Load;
  const factory MarchentStoresEvent.setSummary(StoreSummary summary) = _LoadSummary;

  // find
  const factory MarchentStoresEvent.find(String storeId) = _Find;
  const factory MarchentStoresEvent.create({
    String? id,
    String? slug,
    required String name,
    String? title,
    StoreDecoration? decoration,
    String? logoUrl,
    String? ondarkLogoUrl,
  }) = _Create;
  const factory MarchentStoresEvent.update({
    required String id,
    required StoreUpdate data,
  }) = _Update;
  const factory MarchentStoresEvent.delete(String storeId) = _Delete;

  // shipping methods
  // const factory MarchentStoresEvent.loadShippingMethods({required String storeId}) = _LoadShippingMethods;
  // const factory MarchentStoresEvent.createShippingMethod(ShippingMethodCreate data) = _CreateShippingMethod;
  // const factory MarchentStoresEvent.updateShippingMethod({required String id, required ShippingMethodUpdate data}) = _UpdateShippingMethod;
  // const factory MarchentStoresEvent.deleteShippingMethod({required String id}) = _DeleteShippingMethod;

  const factory MarchentStoresEvent.addShippingMethod(ShippingMethod shippingMethod) = _AddShippingMethod;
  const factory MarchentStoresEvent.removeShippingMethod(String id) = _RemoveShippingMethod;
  const factory MarchentStoresEvent.editShippingMethod({required String id, required ShippingMethodUpdate data}) = _EditShippingMethod;
}
