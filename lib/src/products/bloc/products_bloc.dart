import 'package:bloc/bloc.dart';
import 'package:cuid2/cuid2.dart';
import 'package:feeef_marchant/feeef/core/list_response.dart';
import 'package:feeef_marchant/feeef/interfaces/product.dart';
import 'package:feeef_marchant/feeef/products/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(const _Initial()) {
    on<_Started>(_started);
    on<_List>(_list);
    on<_Create>(_create);
    on<_Update>(_update);
    on<_Delete>(_delete);
  }

  void _started(ProductsEvent event, Emitter<ProductsState> emit) {
    emit(const _Initial());
  }

  void _list(ProductsEvent event, Emitter<ProductsState> emit) async {
    emit(const _ListLoading());
    try {
      final response = await _listProducts();
      emit(_ListLoaded(response));
    } catch (e) {
      emit(_ListError(e.toString()));
    }
  }

  void _create(_Create event, Emitter<ProductsState> emit) async {
    emit(const _CreateLoading());
    try {
      final product = await _createProduct(Product(
        id: cuid(),
        name: event.name,
        description: event.description,
        price: event.price,
        stock: event.stock,
        createdAt: DateTime.now(),
        dislikes: 0,
        updatedAt: DateTime.now(),
        slug: 'product-${event.name.toLowerCase().replaceAll(' ', '-')}',
        likes: 0,
        photoUrl: 'https://via.placeholder.com/150',
        storeId: cuid(),
        media: [],
        sold: 0,
        status: ProductStatus.published,
        views: 12,
        type: ProductType.physical,
      ));
      emit(_CreateSuccess(product));
    } catch (e) {
      emit(_CreateError(e.toString()));
    }
  }

  void _update(_Update event, Emitter<ProductsState> emit) async {
    emit(const _UpdateLoading());
    try {
      final product = await _updateProduct(Product(
        id: event.id,
        name: event.name,
        description: event.description,
        price: event.price,
        stock: event.stock,
        createdAt: DateTime.now(),
        dislikes: 0,
        updatedAt: DateTime.now(),
        slug: 'product-${event.name.toLowerCase().replaceAll(' ', '-')}',
        likes: 0,
        photoUrl: 'https://via.placeholder.com/150',
        storeId: cuid(),
        media: [],
        sold: 0,
        status: ProductStatus.published,
        views: 12,
        type: ProductType.physical,
      ));
      emit(_UpdateSuccess(product));
    } catch (e) {
      emit(_UpdateError(e.toString()));
    }
  }

  void _delete(_Delete event, Emitter<ProductsState> emit) async {
    emit(const _DeleteLoading());
    try {
      await _deleteProduct(event.id);
      emit(_DeleteSuccess(event.id));
    } catch (e) {
      emit(_DeleteError(e.toString()));
    }
  }
}

// fake calls
Future<ListResponse<Product>> _listProducts() async {
  // await Future.delayed(const Duration(seconds: 1));
  return ListResponse(
    data: List.generate(
        10,
        (index) => Product(
              id: cuid(),
              name: 'Product $index',
              description: 'Description $index',
              price: 10.0,
              stock: 10,
              createdAt: DateTime.now(),
              dislikes: 0,
              updatedAt: DateTime.now(),
              slug: 'product-$index',
              likes: 0,
              photoUrl: 'https://via.placeholder.com/150',
              storeId: cuid(),
              media: [],
              sold: 0,
              status: ProductStatus.published,
              views: 12,
              type: ProductType.physical,
            )),
    total: 10,
    page: 1,
    limit: 10,
  );
}

Future<Product> _createProduct(Product product) async {
  // await Future.delayed(const Duration(seconds: 1));
  return product.copyWith(id: cuid());
}

Future<Product> _updateProduct(Product product) async {
  // await Future.delayed(const Duration(seconds: 1));
  return product;
}

Future<void> _deleteProduct(String productId) async {
  // await Future.delayed(const Duration(seconds: 1));
}
