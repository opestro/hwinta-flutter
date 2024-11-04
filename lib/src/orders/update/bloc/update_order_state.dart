part of 'update_order_bloc.dart';

@freezed
class UpdateOrderState with _$UpdateOrderState {
  const factory UpdateOrderState.initial() = UpdateOrderInitial;
  const factory UpdateOrderState.loading() = UpdateOrderLoading;
  const factory UpdateOrderState.loaded(Order order) = UpdateOrderLoaded;
  const factory UpdateOrderState.error(Exception exception) = UpdateOrderError;
}
