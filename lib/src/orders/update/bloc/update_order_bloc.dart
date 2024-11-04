import 'package:bloc/bloc.dart';
import 'package:feeef_marchant/feeef/orders/models/order.dart';
import 'package:feeef_marchant/main.dart';
import 'package:feeef_marchant/src/orders/list/bloc/orders_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_order_event.dart';
part 'update_order_state.dart';
part 'update_order_bloc.freezed.dart';

class UpdateOrderBloc extends Bloc<UpdateOrderEvent, UpdateOrderState> {
  UpdateOrderBloc() : super(const UpdateOrderInitial()) {
    on<UpdateOrderEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<_Load>(_load);
    on<_Update>(_update);
    // on<_Delete>(_delete);
  }

  void _load(
    _Load event,
    Emitter<UpdateOrderState> emit,
  ) async {
    emit(const UpdateOrderLoading());
    try {
      // await Future.delayed(const Duration(seconds: 1));
      final order = await ff.orders.find(id: event.orderId);
      emit(UpdateOrderLoaded(order));
    } on Exception catch (e) {
      emit(UpdateOrderError(e));
    } catch (e) {
      emit(UpdateOrderError(Exception(e.toString())));
    }
  }

  void _update(
    _Update event,
    Emitter<UpdateOrderState> emit,
  ) async {
    emit(const UpdateOrderLoading());
    try {
      var order = await ff.orders.update(id: event.orderId, data: event.order);
      emit(UpdateOrderLoaded(order));
    } on Exception catch (e) {
      emit(UpdateOrderError(e));
    } catch (e) {
      emit(UpdateOrderError(Exception(e.toString())));
    }
  }
}
