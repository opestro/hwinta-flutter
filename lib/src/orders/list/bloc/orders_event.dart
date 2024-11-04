part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.started() = _Started;
  const factory OrdersEvent.load({
    required String storeId,
    int? page,
    int? limit,
    DateTime? createdAfter,
  }) = _GetOrdersByStoreId;


  const factory OrdersEvent.add({
    required Order order,
  }) = _AddOrder;

  // update
  const factory OrdersEvent.update({
    required String orderId,
    required OrderUpdate order,
  }) = _UpdateOrder;
}
