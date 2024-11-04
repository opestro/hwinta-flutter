part of 'update_order_bloc.dart';

@freezed
class UpdateOrderEvent with _$UpdateOrderEvent {
  const factory UpdateOrderEvent.started() = _Started;
  // load
  const factory UpdateOrderEvent.load({required String orderId}) = _Load;
  // update
  const factory UpdateOrderEvent.update({
    required String orderId,
    required OrderUpdate order,
  }) = _Update;
  // delete
  const factory UpdateOrderEvent.delete({required String orderId}) = _Delete;
}
