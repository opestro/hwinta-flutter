import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cuid2/cuid2.dart';
import 'package:feeef_marchant/feeef/core/validation/validation_exception.dart';
import 'package:feeef_marchant/feeef/interfaces/embadded/store.dart';
import 'package:feeef_marchant/feeef/interfaces/embadded/store_summary.dart';
import 'package:feeef_marchant/feeef/interfaces/helpers.dart';
import 'package:feeef_marchant/feeef/shipping_methods/models/shipping_method.dart';
import 'package:feeef_marchant/feeef/stores/models/store.dart';
import 'package:feeef_marchant/main.dart';
import 'package:feeef_marchant/src/stores/views/marchent_stores_view.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../feeef/interfaces/product.dart';
import '../../../feeef/products/models/product.dart';
import 'marchent_stores_state.dart';

part 'marchent_stores_event.dart';
part 'marchent_stores_bloc.freezed.dart';

class MarchentStoresBloc extends Bloc<MarchentStoresEvent, MarchentStoresState> {
  List<StreamSubscription> _subscriptions = [];

  @override
  Future<void> close() async {
    for (var element in _subscriptions) {
      element.cancel();
    }
    super.close();
  }

  MarchentStoresBloc() : super(const MarchentStoresState()) {
    _subscriptions.addAll([
      ff.stores.modelUpdateStream.listen((event) {
        print('stores.modelUpdateStream.listen');
        var state = this.state;
        // replace
        if (state.store?.id == event.id) {
          var d = {
            ...state.store!.toJson(),
            ...event.data.toUpdateJson(),
          };
          state = state.copyWith(
            store: state.store == null ? null : Store.fromJson(d),
          );
        }
        // replace in stores
        state = (state.copyWith(
          // stores: state.stores.map((store) => store.id == event.id ? event : store).toList(),
          stores: state.stores
              .map((store) => store.id == event.id
                  ? Store.fromJson({
                      ...store.toJson(),
                      ...event.data.toUpdateJson(),
                    })
                  : store)
              .toList(),
        ));

        emit(state);
      }),
      ff.stores.modelCreateStream.listen((event) {
        print('stores.modelCreateStream.listen');
        var state = this.state;
        state = state.copyWith(
          stores: [
            event,
            ...state.stores,
          ],
        );
        emit(state);
      }),
      ff.stores.modelDeleteStream.listen((id) {
        print('stores.modelDeleteStream.listen');
        var state = this.state;
        state = state.copyWith(
          stores: state.stores.where((store) => store.id != id).toList(),
        );
        emit(state);
      }),
      // shipping methods
      ff.shippingMethods.modelUpdateStream.listen((event) {
        print('shippingMethods.modelUpdateStream.listen');
        var state = this.state;
        state = state.copyWith(
          shippingMethods: state.shippingMethods!
              .map((e) => e.id == event.id
                  ? ShippingMethod.fromJson({
                      ...e.toJson(),
                      ...event.data.toUpdateJson(),
                    })
                  : e)
              .toList(),
        );
        emit(state);
      }),
      ff.shippingMethods.modelCreateStream.listen((event) {
        print('shippingMethods.modelCreateStream.listen');
        var state = this.state;
        state = state.copyWith(
          shippingMethods: [
            event,
            ...?state.shippingMethods,
          ],
        );
        emit(state);
      }),
      ff.shippingMethods.modelDeleteStream.listen((id) {
        print('shippingMethods.modelDeleteStream.listen');
        var state = this.state;
        state = state.copyWith(
          shippingMethods: state.shippingMethods?.where((e) => e.id != id).toList(),
        );
        emit(state);
      }),
    ]);

    on<MarchentStoresEvent>((event, emit) {});

    on<_LoadSummary>(_onLoadSummary);


    on<_Load>(_onLoad);
    on<_Find>(_onFind);
    on<_Create>(_onCreate);
    on<_Update>(_onUpdate);
    // on<_Delete>(_onDelete);

    // ShippingMethods
    on<_AddShippingMethod>(_onAddShippingMethods);
    on<_EditShippingMethod>(_onEditShippingMethods);
    on<_RemoveShippingMethod>(_onRemoveShippingMethods);
  }

  Future<List<Store>> _fetchStores() async {
    var response = await ff.stores.list(
      userId: ff.users.auth!.user.id,
    );
    return response.data;
  }

  void _onLoadSummary(_LoadSummary event, Emitter<MarchentStoresState> emit) async {
      emit(state.copyWith(summary: event.summary));
  }

  void _onLoad(_Load event, Emitter<MarchentStoresState> emit) async {
    // return if already loading
    if (state.status == MarchentStoresStatus.loading) return;
    emit(state.copyWith(status: MarchentStoresStatus.loading));
    try {
      final stores = await _fetchStores();
      emit(state.copyWith(status: MarchentStoresStatus.loaded, stores: stores));
    } catch (e) {
      emit(state.copyWith(status: MarchentStoresStatus.loadError));
    }
  }

  void _onFind(_Find event, Emitter<MarchentStoresState> emit) async {
    emit(state.copyWith(status: MarchentStoresStatus.finding));
    var store = state.stores.where((store) => store.id == event.storeId).firstOrNull ?? await ff.stores.find(id: event.storeId);
    var shippingMethods = await ff.shippingMethods.list(storeId: store.id);
    emit(state.copyWith(status: MarchentStoresStatus.found, store: store, shippingMethods: shippingMethods.data));
  }

  void _onCreate(_Create event, Emitter<MarchentStoresState> emit) async {
    emit(state.copyWith(status: MarchentStoresStatus.creating, error: null));
    try {
      final response = await ff.stores.create(
        data: StoreCreate(
          name: event.name,
          title: event.title,
          slug: event.slug ?? cuid(10).toLowerCase(),
          decoration: event.decoration,
        ),
      );
      emit(state.copyWith(status: MarchentStoresStatus.created, stores: [
        ...state.stores,
        response
      ]));
    } on FeeefValidationException catch (e) {
      emit(state.copyWith(status: MarchentStoresStatus.createError, error: e));
    } catch (e) {
      emit(state.copyWith(status: MarchentStoresStatus.createError));
    }
  }

  void _onUpdate(_Update event, Emitter<MarchentStoresState> emit) async {
    emit(state.copyWith(error: null, status: MarchentStoresStatus.updating));
    try {
      final response = await ff.stores.update(
        id: event.id,
        data: event.data,
      );
      // replace store in stores
      emit(state.copyWith(
        stores: state.stores.map((store) => store.id == response.id ? response : store).toList(),
        store: state.store?.id == response.id ? response : state.store,
        status: MarchentStoresStatus.updated,
      ));
    } on FeeefValidationException catch (e) {
      emit(state.copyWith(error: e, status: MarchentStoresStatus.updateError));
    } catch (e) {
      emit(state.copyWith(status: MarchentStoresStatus.updateError));
    }
  }

  // _AddShippingMethods
  void _onEditShippingMethods(_EditShippingMethod event, Emitter<MarchentStoresState> emit) async {
    emit(state.copyWith(
      shippingMethods: state.shippingMethods!
          .map((e) => e.id == event.id
              ? e.copyWith(
                  metadata: event.data.metadata ?? e.metadata,
                  name: event.data.name ?? e.name,
                  description: event.data.description ?? e.description,
                  logoUrl: event.data.logoUrl ?? e.logoUrl,
                  ondarkLogoUrl: event.data.ondarkLogoUrl ?? e.ondarkLogoUrl,
                  price: event.data.price ?? e.price,
                  storeId: event.data.storeId ?? e.storeId,
                  rates: event.data.rates ?? e.rates,
                  status: event.data.status ?? e.status,
                  policy: event.data.policy ?? e.policy,
                )
              : e)
          .toList(),
    ));
  }

  void _onAddShippingMethods(_AddShippingMethod event, Emitter<MarchentStoresState> emit) async {
    emit(state.copyWith(
      shippingMethods: [
        event.shippingMethod,
        ...?state.shippingMethods,
      ],
    ));
  }

  void _onRemoveShippingMethods(_RemoveShippingMethod event, Emitter<MarchentStoresState> emit) async {
    emit(state.copyWith(
      shippingMethods: state.shippingMethods?.where((e) => e.id != event.id).toList(),
    ));
  }
}
