part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = _Initial;
  const factory ProductsState.listLoading() = _ListLoading;
  const factory ProductsState.listSuccess(ListResponse<Product> list) = _ListLoaded;
  const factory ProductsState.listError(String message) = _ListError;

  const factory ProductsState.createLoading() = _CreateLoading;
  const factory ProductsState.createSuccess(Product product) = _CreateSuccess;
  const factory ProductsState.createError(String message) = _CreateError;

  const factory ProductsState.updateLoading() = _UpdateLoading;
  const factory ProductsState.updateSuccess(Product product) = _UpdateSuccess;
  const factory ProductsState.updateError(String message) = _UpdateError;

  const factory ProductsState.deleteLoading() = _DeleteLoading;
  const factory ProductsState.deleteSuccess(String productId) = _DeleteSuccess;
  const factory ProductsState.deleteError(String message) = _DeleteError;
}
