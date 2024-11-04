import 'package:bloc/bloc.dart';
import 'package:feeef_marchant/feeef/core/list_response.dart';
import 'package:feeef_marchant/feeef/shipping_methods/models/shipping_method.dart';
import 'package:feeef_marchant/feeef/stores/models/store.dart';
import 'package:feeef_marchant/main.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_methods_list_state.dart';
part 'shipping_methods_list_cubit.freezed.dart';

class ShippingMethodsListCubit extends Cubit<ShippingMethodsListState> {
  final String storeId;
  ShippingMethodsListCubit({
    required this.storeId,
  }) : super(const ShippingMethodsListState.initial());

  // fetch
  void load() async {
    emit(const ShippingMethodsListState.loading());
    try {
      final response = await ff.shippingMethods.list(storeId: storeId);
      emit(ShippingMethodsListState.loaded(pages: [
        response
      ]));
    } on Exception catch (e) {
      emit(ShippingMethodsListState.error(error: e));
    } catch (e) {
      emit(ShippingMethodsListState.error(error: Exception(e.toString())));
    }
  }

  // more
  void more() async {
    final state = this.state;
    if (state is ShippingMethodsListLoadedState) {
      emit(const ShippingMethodsListState.loading());
      try {
        final response = await ff.shippingMethods.list(storeId: storeId, page: state.pages!.length + 1);
        emit(ShippingMethodsListState.loaded(pages: [
          ...state.pages!,
          response
        ]));
      } on Exception catch (e) {
        emit(ShippingMethodsListState.error(error: e));
      } catch (e) {
        emit(ShippingMethodsListState.error(error: Exception(e.toString())));
      }
    }
  }
}
