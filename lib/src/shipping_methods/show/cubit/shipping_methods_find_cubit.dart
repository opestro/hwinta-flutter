import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_methods_find_state.dart';
part 'shipping_methods_find_cubit.freezed.dart';

class ShippingMethodsFindCubit extends Cubit<ShippingMethodsFindState> {
  final String storeId;
  final String? shippingMethodId;
  ShippingMethodsFindCubit({required this.storeId, this.shippingMethodId}) : super(const ShippingMethodsFindState.initial());
}
