part of 'shipping_methods_list_cubit.dart';

@freezed
class ShippingMethodsListState with _$ShippingMethodsListState {
  const factory ShippingMethodsListState.initial({
    List<ListResponse<ShippingMethod>>? pages,
  }) = ShippingMethodsListInitialState;

  const factory ShippingMethodsListState.loading({
    List<ListResponse<ShippingMethod>>? pages,
  }) = ShippingMethodsListLoadingState;

  const factory ShippingMethodsListState.loaded({
    List<ListResponse<ShippingMethod>>? pages,
  }) = ShippingMethodsListLoadedState;

  const factory ShippingMethodsListState.error({
    List<ListResponse<ShippingMethod>>? pages,
    required Exception error,
  }) = ShippingMethodsListErrorState;
}

extension ShippingMethodsListStateX on ShippingMethodsListState {
  // bool get isLoading => this is ShippingMethodsListLoadingState;
  // bool get isInitial => this is ShippingMethodsListInitialState;
  // bool get isLoaded => this is ShippingMethodsListLoadedState;
  // bool get isError => this is ShippingMethodsListErrorState;

  // return list of shipping methods
  List<ShippingMethod> get all {
    return pages?.expand((e) => e.data).toList() ?? [];
  }
}
