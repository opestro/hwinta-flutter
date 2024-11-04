// This is an example unit test.
//
// A unit test tests a single function, method, or class. To learn more about
// writing unit tests, visit
// https://flutter.dev/docs/cookbook/testing/unit/introduction

import 'package:cuid2/cuid2.dart';
import 'package:dio/dio.dart';
import 'package:feeef_marchant/feeef/feeef.dart';
import 'package:feeef_marchant/feeef/interfaces/product.dart';
import 'package:feeef_marchant/feeef/products/models/product.dart';
import 'package:feeef_marchant/feeef/stores/models/store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'dart:convert';

const _kStoreId = "umpgh4ov49huf500wab5ksc5";
void main() {
  Feeef.instance.init(baseUrl: "https://apis.feeef.net/api/v1");
  final userRepository = Feeef.instance.users;
  final storeRepository = Feeef.instance.stores;
  final productRepository = Feeef.instance.products;

  // auth
  group('Auth', () {
    test('signin', () async {
      final response = await userRepository.signin(
        email: "user@example.com",
        password: "password",
      );
      // save in headers
      expect(response.user.email, 'user@example.com');
    });
    // test('signup', () async {
    //   final response = await userRepository.signup(
    //     name: "user2",
    //     email: "user2@example.com",
    //     password: "password",
    //   );
    //   // save in headers
    //   expect(response.user.name, 'user2');
    //   expect(response.user.email, 'user2@example.com');
    // });
    test('me', () async {
      final response = await userRepository.me();
      expect(response?.email, 'user@example.com');
    });
  });
  // products
  group('Products', () {
    group('list', () {
      // products by store_id
      test('products by store_id', () async {
        final response = await productRepository.list(
          storeId: _kStoreId,
        );
        expect(response.data.first.storeId, _kStoreId);
      });
      test('limit', () async {
        final response = await productRepository.list(limit: 5);
        expect(response.data.length, 5);
      });
      test('page', () async {
        final response = await productRepository.list(page: 2);
        expect(response.page, 2);
      });
      test('limit and page', () async {
        final response = await productRepository.list(page: 2, limit: 5);
        expect(response.page, 2);
        expect(response.data.length, 5);
      });
    });
    group('find', () {
      test('find', () async {
        final response = await productRepository.find(id: "aa1ltoy7m3qm1dwqhmkpr8lr");
        expect(response.id, "aa1ltoy7m3qm1dwqhmkpr8lr");
      });
      // find with wrong id
      test('find with wrong id', () async {
        try {
          await productRepository.find(id: 'wrong_id');
        } catch (e) {
          expect(e, isA<DioException>());
        }
      });
    });
    group('create', () {
      test('create', () async {
        try {
          final response = await productRepository.create(
            data: ProductCreate(
              name: 'Test Product',
              description: 'Test Product Description',
              price: 100,
              stock: 10,
              storeId: _kStoreId,
              slug: cuid(),
              media: [],
            ),
          );
          expect(response.name, 'Test Product');
        } catch (e) {
          print(e);
        }
      });
    });
  });

  group('Stores', () {
    group('list', () {
      // stores by user_id
      test('stores by user_id', () async {
        final response = await storeRepository.list(
          userId: "cpzwi8be8q4k43ck6bmb4hma",
        );
        expect(response.data.first.userId, "cpzwi8be8q4k43ck6bmb4hma");
      });
      test('limit', () async {
        final response = await storeRepository.list(limit: 5);
        expect(response.data.length, 5);
      });
      test('page', () async {
        final response = await storeRepository.list(page: 2);
        expect(response.page, 2);
      });
      test('limit and page', () async {
        final response = await storeRepository.list(page: 2, limit: 5);
        expect(response.page, 2);
        expect(response.data.length, 5);
      });
    });
    group('find', () {
      test('find', () async {
        final response = await storeRepository.find(id: _kStoreId);
        expect(response.id, _kStoreId);
      });
      // find with wrong id
      test('find with wrong id', () async {
        try {
          await storeRepository.find(id: 'wrong_id');
        } catch (e) {
          expect(e, isA<DioException>());
        }
      });
    });
    group('create', () {
      test('create', () async {
        final response = await storeRepository.create(
          data: StoreCreate(
            name: 'Test Store',
            slug: cuid(),
          ),
        );
        expect(response.name, 'Test Store');
      });
    });
  });
}
