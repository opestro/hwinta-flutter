import 'package:feeef_marchant/feeef/core/validation/validation_exception.dart';
import 'package:feeef_marchant/feeef/orders/models/order.dart';
import 'package:feeef_marchant/src/core/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_state.freezed.dart';
part 'orders_state.g.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({
    List<Order>? orders,
    int? page,
    int? total,
    @Default(true) bool hasMore,
    @Default(FetchStatus.initial) FetchStatus status,
    // exception
    FeeefValidationException? exception,
  }) = _OrdersState;

  // initial state
  factory OrdersState.initial() => const OrdersState(status: FetchStatus.initial, orders: null, page: 1, total: null);

  // loading state
  factory OrdersState.loading() => const OrdersState(status: FetchStatus.loading, orders: null, page: 1, total: null);

  // loaded state
  factory OrdersState.loaded({
    required List<Order> orders,
    required int page,
    required int total,
    required bool hasMore,
  }) =>
      OrdersState(
        status: FetchStatus.loaded,
        orders: orders,
        page: page,
        total: total,
        hasMore: hasMore,
      );

  // error state
  factory OrdersState.error({required String error}) => const OrdersState(status: FetchStatus.error, orders: null, page: 1, total: null);

  factory OrdersState.fromJson(Map<String, dynamic> json) => _$OrdersStateFromJson(json);
}

abstract class OrdersStateInterface {
  List<Order>? get orders => [];
  int? get page => 1;
  int? get total => 0;
  bool get hasMore => true;
}

// @freezed
// class OrdersState extends OrdersStateInterface with _$OrdersState {
//   const factory OrdersState.initial() = OrdersInitialState;

//   const factory OrdersState.loading() = OrdersLoadingOrdersState;

//   const factory OrdersState.loaded({
//     required List<Order> orders,
//     required int page,
//     required int total,
//     required bool hasMore,
//   }) = OrdersLoadedOrdersState;

//   const factory OrdersState.error({required String error}) = OrdersErrorLoadingOrdersState;

//   // @freezed copyWith and fromJson
//   factory OrdersState.fromJson(Map<String, dynamic> json) => _$OrdersStateFromJson(json);
// }

