part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.started() = _Started;
  const factory ProductsEvent.list() = _List;
  const factory ProductsEvent.create({
    required String name,
    required String description,
    required double price,
    required int stock,
  }) = _Create;
  const factory ProductsEvent.update({
    required String id,
    required String name,
    required String description,
    required double price,
    required int stock,
  }) = _Update;
  const factory ProductsEvent.delete(String id) = _Delete;
}
