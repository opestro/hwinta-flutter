import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:feeef_marchant/feeef/core/validation/validation_exception.dart';
import 'package:feeef_marchant/feeef/orders/models/order.dart';
import 'package:feeef_marchant/main.dart';
import 'package:feeef_marchant/src/core/enums.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'orders_state.dart';
export 'orders_state.dart';

part 'orders_event.dart';
part 'orders_bloc.freezed.dart';

// order stream to inject orders
StreamController<Order> orderStreamController = StreamController.broadcast();

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  // subscribe to the orders changes
  List<StreamSubscription> _subscriptions = [];

  @override
  Future<void> close() {
    for (var element in _subscriptions) {
      element.cancel();
    }
    return super.close();
  }

  OrdersBloc() : super(OrdersState.initial()) {
    on<_Started>(_onStarted);

    on<_GetOrdersByStoreId>(_onGetOrdersByStoreId);

    // update
    on<_UpdateOrder>(_updateOrder);

    // on<_GetOrderById>(_onGetOrderById);
    on<_AddOrder>(_onAddOrder);

    _subscriptions.addAll([
      ff.orders.modelUpdateStream.listen((order) {
        if (state.orders == null) return;
        // replace the order in the list if exists
        final orders = state.orders
            ?.map((e) => e.id == order.id
                ? e.copyWith(
                    coupon: order.data.coupon ?? e.coupon,
                    customerName: order.data.customerName ?? e.customerName,
                    customerPhone: order.data.customerPhone ?? e.customerPhone,
                    deliveryStatus: order.data.deliveryStatus ?? e.deliveryStatus,
                    discount: order.data.discount ?? e.discount,
                    items: order.data.items ?? e.items,
                    paymentStatus: order.data.paymentStatus ?? e.paymentStatus,
                    subtotal: order.data.subtotal ?? e.subtotal,
                    shippingAddress: order.data.shippingAddress ?? e.shippingAddress,
                    shippingCity: order.data.shippingCity ?? e.shippingCity,
                    shippingPrice: order.data.shippingPrice ?? e.shippingPrice,
                    status: order.data.status ?? e.status,
                    total: order.data.total ?? e.total,
                    metadata: order.data.metadata ?? e.metadata,
                  )
                : e)
            .toList();
        emit(state.copyWith(orders: orders));
      }),
      // delete
      ff.orders.modelDeleteStream.listen((id) {
        if (state.orders == null) return;
        final orders = state.orders?.where((e) => e.id != id).toList();
        emit(state.copyWith(orders: orders));
      }),
      // orderStreamController
      orderStreamController.stream.listen((order) {
        add(_AddOrder(order: order));
      }),
    ]);


  }

  void _updateOrder(_UpdateOrder event, Emitter<OrdersState> emit) async {
    emit(state.copyWith(status: FetchStatus.loading));
    try {
      final order = await ff.orders.update(id: event.orderId, data: event.order);
      final orders = state.orders?.map((e) => e.id == order.id ? order : e).toList();
      emit(state.copyWith(orders: orders, status: FetchStatus.loaded));
    } on FeeefValidationException catch (e) {
      emit(state.copyWith(status: FetchStatus.error, exception: e));
    } catch (e) {
      emit(
        state.copyWith(
          status: FetchStatus.error,
          exception: FeeefValidationException(
            errors: [
              FeeefViolation(
                message: e.toString(),
              ),
            ],
          ),
        ),
      );
    }
  }

  void _onAddOrder(_AddOrder event, Emitter<OrdersState> emit) {
    emit(state.copyWith(
      orders: [
        event.order.copyWith(
          metadata: {
            "isInjected": true,
            ...event.order.metadata
          }
        ),
        ...?state.orders?.where((e) => e.id != event.order.id),
      ]
    ));
  }

  void _onStarted(_Started event, Emitter<OrdersState> emit) {
    emit(OrdersState.initial());
  }

  void _onGetOrdersByStoreId(_GetOrdersByStoreId event, Emitter<OrdersState> emit) async {
    emit(state.copyWith(status: FetchStatus.loading));
    try {
      final response = await ff.orders.list(
        storeId: event.storeId,
        page: event.page,
        params: {
          if (event.createdAfter != null)
          "createdAfter": event.createdAfter?.toIso8601String(),
          "orderBy[column]": "created_at",
          "orderBy[direction]": "desc",
        }
      );
      // 1s delay
      if (event.createdAfter != null) {
        await Future.delayed(const Duration(seconds: 1));
      }
      emit(OrdersState.loaded(
        orders: [
          null,
          1
        ].contains(response.page)
            ? response.data
            : [
                ...state.orders ?? [],
                ...response.data,
              ],
        page: response.page ?? 1,
        total: response.total ?? 0,
        hasMore: response.hasMore,
      ));
    } catch (e) {
      emit(OrdersState.error(error: e.toString()));
    }
  }

  // void _onGetOrderById(_GetOrderById event, Emitter<OrdersState> emit) async {
  //   emit(const OrdersState.loadingOrderById());
  //   try {
  //     final order = await fif.orders.find(id: event.orderId);
  //     emit(OrdersState.loadedOrderById(order));
  //   } catch (e) {
  //     emit(OrdersState.errorLoadingOrderById(e.toString()));
  //   }
  // }
}
