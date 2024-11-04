import 'dart:async';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:feeef_marchant/feeef/auth/models/token.dart';
import 'package:feeef_marchant/feeef/auth/models/user_auth_response.dart';
import 'package:feeef_marchant/feeef/core/list_response.dart';
import 'package:feeef_marchant/feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef_marchant/feeef/interfaces/helpers.dart';
import 'package:feeef_marchant/feeef/interfaces/order.dart';
import 'package:feeef_marchant/feeef/shipping_methods/models/shipping_method.dart';
import 'package:feeef_marchant/feeef/stores/models/store.dart';
import 'package:feeef_marchant/src/stores/views.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/validation/validation_exception.dart';
import 'interfaces/embadded/store_summary.dart';
import 'orders/models/order.dart';
import 'products/models/product.dart';
import 'users/models/user.dart';

abstract class ModelRepository<T extends Model> {
  final String table;
  // client
  final Dio client;
  // constructor
  ModelRepository({required this.client, required this.table});

  // fronJson / toJson
  T modelFromJson(dynamic json);
  Map<String, dynamic> modelToJson(T model);
}

mixin ModelCreateMixin<T extends Model, C extends ModelCreate> on ModelRepository<T> {
  // creation stream
  final _modelCreateStreamController = StreamController<T>.broadcast();
  Stream<T> get modelCreateStream => _modelCreateStreamController.stream;
  final _modelCreateCancelToken = CancelToken();
  CancelToken get modelCreateCancelToken => _modelCreateCancelToken;
  // create
  Future<T> create({required C data, Map<String, dynamic>? params}) async {
    try {
      final response = await client.post('/$table',
          data: {
            ...data.toJson(),
            if (params != null) ...params,
          },
          cancelToken: _modelCreateCancelToken);
      var model = modelFromJson(response.data);
      _modelCreateStreamController.add(model);
      return model;
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  C createFromJson(dynamic json);
  Map<String, dynamic> createToJson(C model);
}

typedef ModelUpdateParams<U extends ModelUpdate> = ({
  String id,
  U data
});
mixin ModelUpdateMixin<T extends Model, U extends ModelUpdate> on ModelRepository<T> {
  // update
  final _modelUpdateStreamController = StreamController<ModelUpdateParams<U>>.broadcast();
  Stream<ModelUpdateParams<U>> get modelUpdateStream => _modelUpdateStreamController.stream;
  final _modelUpdateCancelToken = CancelToken();
  CancelToken get modelUpdateCancelToken => _modelUpdateCancelToken;
  // update
  Future<T> update({required String id,T? old, required U data, Map<String, dynamic>? params}) async {
    try {
      Map<String, dynamic> jsonData = {
            ...data.toUpdateJson(),
      };
      // if old exists, remove the value that didnt changed
      // if (old != null) {
      //   var oldJson = modelToJson(old);
      //   jsonData.removeWhere((key, value) => oldJson[key] == value);
      // }
      var response = await client.put('/$table/$id',
          data: {
            ...jsonData,
            if (params != null) ...params,
          },
          cancelToken: _modelUpdateCancelToken);
      var model = modelFromJson(response.data);
      _modelUpdateStreamController.add((
        id: id,
        data: data,
      ));
      return model;
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  U updateFromJson(dynamic json);
  Map<String, dynamic> updateToJson(U model);
}

mixin ModelDeleteMixin<T extends Model> on ModelRepository<T> {
  // find
  final _modelDeleteStreamController = StreamController<String>.broadcast();
  Stream<String> get modelDeleteStream => _modelDeleteStreamController.stream;
  final _modelDeleteCancelToken = CancelToken();
  CancelToken get modelDeleteCancelToken => _modelDeleteCancelToken;
  // delete
  Future<void> delete({required String id, Map<String, dynamic>? params}) async {
    try {
      await client.delete('/$table/$id', cancelToken: _modelDeleteCancelToken);
      _modelDeleteStreamController.add(id);
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }
}

mixin ModelFindMixin<T extends Model> on ModelRepository<T> {
  // find
  final _modelFindStreamController = StreamController<T>.broadcast();
  Stream<T> get modelFindStream => _modelFindStreamController.stream;
  final _modelFindCancelToken = CancelToken();
  CancelToken get modelFindCancelToken => _modelFindCancelToken;
  // find
  Future<T> find({required String id}) async {
    // await Future.delayed(const Duration(seconds: 1));
    final response = await client.get('/$table/$id', cancelToken: _modelFindCancelToken);
    var model = modelFromJson(response.data);
    _modelFindStreamController.add(model);
    return model;
  }
}

mixin ModelListMixin<T extends Model> on ModelRepository<T> {
  // find
  final _modelListStreamController = StreamController<ListResponse<T>>.broadcast();
  Stream<ListResponse<T>> get modelListStream => _modelListStreamController.stream;

  final _modelListCancelToken = CancelToken();
  CancelToken get modelListCancelToken => _modelListCancelToken;

  // paginate
  Future<ListResponse<T>> list({int? page, int? offset, int? limit, Map<String, dynamic>? params}) async {
    // await Future.delayed(const Duration(seconds: 1));
    print(table);
    final response = await client.get(
      '/$table',
      queryParameters: {
        if (page != null) 'page': page,
        if (offset != null) 'offset': offset,
        if (limit != null) 'limit': limit,
        if (params != null) ...params,
      },
      cancelToken: modelListCancelToken,
    );
    var result = ListResponse<T>.fromJson(response.data, modelFromJson);
    // _modelListStreamController.add(result);
    return result;
  }
}

mixin ModelAuthMixin<T extends Model> on ModelRepository<T> {
  // store current user
  AuthResponse<T>? _auth;

  AuthResponse<T>? get auth => _auth;

  // init load auth from shared preferences
  Future<void> init() async {
    var prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('services.auth.token');
    if (token != null) {
      client.options.headers['Authorization'] = 'Bearer $token';
      await me();
    }
  }

  Future<void> _saveAuthToken(AuthResponse<T>? auth) async {
    var prefs = await SharedPreferences.getInstance();
    if (auth == null) {
      await prefs.remove('services.auth.token');
    } else {
      await prefs.setString('services.auth.token', auth!.token!.token!);
    }
  }

  set auth(AuthResponse<T>? value) {
    _auth = value;
    _saveAuthToken(_auth);
    _authController.add(value);
  }

  final _authController = StreamController<AuthResponse<T>?>.broadcast();

  Stream<AuthResponse<T>?> get authStream => _authController.stream;

  // signin
  Future<AuthResponse<T>> signin({required String email, required String password}) async {
    try {
      String? token;
      try {
        token = await FirebaseMessaging.instance.getToken();
      } catch (e) {
        print(e);
      }
      var data = {
        'email': email,
        'password': password,
        'fcmToken': token,
      };
      final response = await client.post('/$table/auth/signin', data: data);
      auth = AuthResponse(
        user: modelFromJson(response.data['user']),
        token: AuthToken.fromJson(response.data['token']),
      );
      // set headers
      client.options.headers['Authorization'] = 'Bearer ${auth!.token.token}';
      return auth!;
    } on DioException catch (e) {
      if (e.response?.statusCode != null && e.response!.statusCode! >= 400 && e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  // signup
  Future<AuthResponse<T>> signup({
    required String referral,
    required String name,
    required String email,
    String? phone,
    required String password,
  }) async {
    try {
      String? token;
      try {
        token = await FirebaseMessaging.instance.getToken();
      } catch (e) {
        print(e);
      }
      final response = await client.post('/$table/auth/signup', data: {
        'referral': referral,
        'name': name,
        'email': email,
        'phone': phone,
        'password': password,
        'fcmToken': token,
      });
      auth = AuthResponse(
        user: modelFromJson(response.data['user']),
        token: AuthToken.fromJson(response.data['token']),
      );
      // set headers
      client.options.headers['Authorization'] = 'Bearer ${auth!.token.token}';
      return auth!;
    } on DioException catch (e) {
      if (e.response?.statusCode != null && e.response!.statusCode! >= 400 && e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  // sendResetPasswordEmail
  Future<void> sendResetPasswordEmail({required String email}) async {
    try {
      await client.post('/$table/auth/reset-password', queryParameters: {
        'email': email,
      });
    } on DioException catch (e) {
      if (e.response?.statusCode != null && e.response!.statusCode! >= 400 && e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }

  // signout
  Future<void> signout() async {
    auth = null;
    client.options.headers.remove('Authorization');
    // await client.post('/$table/auth/signout');
  }

  // auth (me or user)
  Future<T?> me() async {
    // final response = await client.get('/$table/auth');
    // auth = auth!.copyWith(user: modelFromJson(response.data));
    // return auth!.user;
    try {
      // print headers
      print(client.options.headers);
      final response = await client.get('/$table/auth');
      print(response);
      auth = AuthResponse(
        user: modelFromJson(response.data["user"]),
        token: AuthToken.fromJson(
          {
            ...response.data["token"],
            "token": client.options.headers['Authorization'].toString().split('Bearer ').last,
          },
        ),
      );
      return auth!.user;
    } catch (e) {
      print(client.options.headers);
      auth = null;
      // throw e;
      print(e);
    }
  }

  // tokens
  Future<List<AccessToken>> tokens() async {
    final response = await client.get('/$table/auth/tokens');
    return (response.data as List).map((e) => AccessToken.fromJson(e)).toList();
  }

  // update me
  Future<T> updateMe({required UserUpdateMe data}) async {
    try {
      final response = await client.put('/$table/auth', data: data.toJson());
      auth = AuthResponse(
        user: modelFromJson(response.data),
        token: auth!.token,
      );
      return auth!.user;
    } on DioException catch (e) {
      if (e.response?.statusCode != null && e.response!.statusCode! >= 400 && e.response!.statusCode! < 500) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    }
  }
}

class StoreRepository extends ModelRepository<Store> with ModelCreateMixin<Store, StoreCreate>, ModelFindMixin<Store>, ModelListMixin<Store>, ModelUpdateMixin<Store, StoreUpdate>, ModelDeleteMixin<Store> {
  StoreRepository({required super.client}) : super(table: 'stores');

  @override
  StoreCreate createFromJson(json) => StoreCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(StoreCreate model) => model.toJson();

  @override
  Store modelFromJson(json) {
    // if json["integrations"] is array change it to object
    if (json["integrations"] is List) {
      json["integrations"] = null;
    }
    return Store.fromJson(json);
  }

  @override
  Map<String, dynamic> modelToJson(Store model) => model.toJson();

  @override
  StoreUpdate updateFromJson(json) => StoreUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(StoreUpdate model) => model.toJson();

  // override list and add userId filter
  @override
  Future<ListResponse<Store>> list({String? userId, int? page, int? offset, int? limit, Map<String, dynamic>? params}) {
    return super.list(page: page, offset: offset, limit: limit, params: {
      if (userId != null) 'user_id': userId,
    });
  }

  // /api/v1/stores/:id/summary
  Future<StoreSummary> summary({required String id}) async {
    final response = await client.get('/$table/$id/summary');
    return StoreSummary.fromJson(response.data);
  }
}

// UserRepository has only find method and signin and signup
class UserRepository extends ModelRepository<User> with ModelAuthMixin<User>, ModelFindMixin<User>, ModelUpdateMixin<User, UserUpdate> {
  UserRepository({required super.client}) : super(table: 'users');

  @override
  User modelFromJson(json) => User.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(User model) => model.toJson();

  @override
  UserUpdate updateFromJson(json) => UserUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(UserUpdate model) => model.toJson();

  // overide update, whene user.id == current user.id, sink the authStream with the new user
  @override
  Future<User> update({required String id,User? old, required UserUpdate data, Map<String, dynamic>? params}) async {
    var user = await super.update(
        id: id,
        data: data.copyWith(
          photoUrl: faker.image.image(),
          verifiedAt: DateTime.now(),
        ),
        params: params);
    if (auth?.user.id == user.id) {
      auth = auth!.copyWith(user: user);
    }
    return user;
  }
}

// products
class ProductRepository extends ModelRepository<Product> with ModelCreateMixin<Product, ProductCreate>, ModelFindMixin<Product>, ModelListMixin<Product>, ModelUpdateMixin<Product, ProductUpdate>, ModelDeleteMixin<Product> {
  ProductRepository({required super.client}) : super(table: 'products');

  @override
  ProductCreate createFromJson(json) => ProductCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(ProductCreate model) => model.toJson();

  @override
  Product modelFromJson(json) => Product.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(Product model) => model.toJson();

  @override
  ProductUpdate updateFromJson(json) => ProductUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(ProductUpdate model) => model.toJson();

  // override list and add storeId filter
  @override
  Future<ListResponse<Product>> list({String? storeId, int? page, int? offset, int? limit, Map<String, dynamic>? params}) {
    return super.list(page: page, offset: offset, limit: limit, params: {
      if (storeId != null) 'store_id': storeId,
    });
  }
}

// orders

// shippingMethods
class ShippingMethodRepository extends ModelRepository<ShippingMethod> with ModelCreateMixin<ShippingMethod, ShippingMethodCreate>, ModelFindMixin<ShippingMethod>, ModelListMixin<ShippingMethod>, ModelUpdateMixin<ShippingMethod, ShippingMethodUpdate>, ModelDeleteMixin<ShippingMethod> {
  ShippingMethodRepository({required super.client}) : super(table: 'shipping_methods');

  @override
  ShippingMethodCreate createFromJson(json) => ShippingMethodCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(ShippingMethodCreate model) => model.toJson();

  @override
  ShippingMethod modelFromJson(json) => ShippingMethod.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(ShippingMethod model) => model.toJson();

  @override
  ShippingMethodUpdate updateFromJson(json) => ShippingMethodUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(ShippingMethodUpdate model) => model.toJson();

  // override list and add storeId filter
  @override
  Future<ListResponse<ShippingMethod>> list({String? storeId, int? page, int? offset, int? limit, Map<String, dynamic>? params}) {
    return super.list(page: page, offset: offset, limit: limit, params: {
      if (storeId != null) 'store_id': storeId,
    });
  }
}

// orders
class OrderRepository extends ModelRepository<Order> with ModelCreateMixin<Order, OrderCreate>, ModelFindMixin<Order>, ModelListMixin<Order>, ModelUpdateMixin<Order, OrderUpdate>, ModelDeleteMixin<Order> {
  OrderRepository({required super.client}) : super(table: 'orders');

  @override
  OrderCreate createFromJson(json) => OrderCreate.fromJson(json);

  @override
  Map<String, dynamic> createToJson(OrderCreate model) => model.toJson();

  @override
  Order modelFromJson(json) => Order.fromJson(json);

  @override
  Map<String, dynamic> modelToJson(Order model) => model.toJson();

  @override
  OrderUpdate updateFromJson(json) => OrderUpdate.fromJson(json);

  @override
  Map<String, dynamic> updateToJson(OrderUpdate model) => model.toJson();

  // override list and add storeId filter
  @override
  Future<ListResponse<Order>> list({String? storeId, int? page, int? offset, int? limit, Map<String, dynamic>? params}) {
    return super.list(page: page, offset: offset, limit: limit, params: {
      if (storeId != null) 'store_id': storeId,
      ...?params
    });
  }
}

// single class to manage all repositories
class Feeef {
  late final Dio client;
  late final UserRepository users;
  late final StoreRepository stores;
  late final ProductRepository products;
  late final ShippingMethodRepository shippingMethods;
  late final OrderRepository orders;

  // services
  late final StorageService storage;

  // singleton
  static final Feeef _instance = Feeef._();
  static Feeef get instance => _instance;
  Feeef._() {
    client = Dio(BaseOptions(baseUrl: 'http://localhost:3000/api/v1'));
    // client.interceptors.add(LogInterceptor());
    users = UserRepository(client: client);
    stores = StoreRepository(client: client);
    orders = OrderRepository(client: client);
    products = ProductRepository(client: client);
    shippingMethods = ShippingMethodRepository(client: client);

    // services
    storage = StorageService(client: client);
  }

  bool _initialized = false;
  Future<void> init({
    required String baseUrl,
  }) async {
    if (_initialized) throw "Already initialized";
    _initialized = true;
    // init
    client.options.baseUrl = baseUrl;
    // accept application/json
    client.options.headers['Accept'] = 'application/json';

    await users.init();
  }
}

// services
class Services {
  late final Dio client;
  late final StorageService storage;
  Services({
    required this.client,
  }) {
    storage = StorageService(client: client);
  }
}

// storage service
class StorageService {
  final Dio client;
  StorageService({required this.client});

  Future<String> upload({
    required PlatformFile file,
    String? folder,
    // onProgress
    void Function(int sent, int total)? onProgress,
    CancelToken? cancelToken,
  }) async {
    final formData = FormData.fromMap({
      'file': file.bytes == null ? await MultipartFile.fromFile(file.path!) : MultipartFile.fromBytes(file.bytes!, filename: file.name),
      if (folder != null) 'folder': folder,
    });
    final response = await client.post('/services/storage/upload', data: formData, onSendProgress: onProgress, cancelToken: cancelToken);
    return response.data['url'];
  }

  // upload bytes
  Future<String> uploadBytes({
    required Uint8List bytes,
    required String filename,
    String? folder,
    // onProgress
    void Function(int sent, int total)? onProgress,
    CancelToken? cancelToken,
  }) async {
    final formData = FormData.fromMap({
      'file': MultipartFile.fromBytes(bytes, filename: filename),
      if (folder != null) 'folder': folder,
    });
    final response = await client.post('/services/storage/upload', data: formData, onSendProgress: onProgress, cancelToken: cancelToken);
    return response.data['url'];
  }
}

// integrations to stores
class YalidineDeliveryIntegrationApi {
  final YalidineDeliveryIntegration integration;
  final String storeId;
  final Dio client;

  const YalidineDeliveryIntegrationApi({required this.client, required this.integration,required this.storeId});

  Future<List<List<num?>?>> getDeliveryFees() async {
    try {
      var response = await client.get(
        '/stores/$storeId/integrations/yalidine/fees',
        queryParameters: {
          'id': integration.id,
          "token": integration.token,
        },
      );
      return (response.data as List).map((e) => (e as List).map((e) => e as num?).toList()).toList();
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}

// 
class EchotrakDeliveryIntegrationApi {
  final EchotrakDeliveryIntegration integration;
  final String storeId;
  final Dio client;

  const EchotrakDeliveryIntegrationApi({required this.client, required this.integration,required this.storeId});

  Future<List<List<num?>?>> getDeliveryFees() async {
    try {
      var response = await client.get(
        '/stores/$storeId/integrations/echotrak/fees',
        queryParameters: {
          'baseUrl': integration.baseUrl,
          "token": integration.token,
        },
      );
      return (response.data as List).map((e) => (e as List).map((e) => e as num?).toList()).toList();
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}


// GoogleSheetIntegrationApi
class GoogleSheetIntegrationApi {
  final GoogleSheetsIntegration integration;
  final String storeId;
  final Dio client;

  const GoogleSheetIntegrationApi({required this.client, required this.integration,required this.storeId});

  Future<void> appendRow({required List<String> values}) async {
    try {
      await client.post(
        '/stores/$storeId/integrations/google-sheets/append-row',
        data: {
          'id': integration.id,
          'name': integration.name,
          'row': values,
        },
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  /// create spreadsheet
  Future<void> createSpreadsheet({required String name}) async {
    try {
      await client.post(
        '/stores/$storeId/integrations/google-sheets/create-spreadsheet',
        data: {
          'name': name,
        },
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}

// Procolis Delivery Integration Api
class ProcolisDeliveryIntegrationApi {
  final ProcolisDeliveryIntegration integration;
  final String storeId;
  final Dio client;

  const ProcolisDeliveryIntegrationApi({required this.client, required this.integration,required this.storeId});

  Future<List<List<num?>?>> getDeliveryFees() async {
    try {
      var response = await client.get(
        '/stores/$storeId/integrations/procolis/fees',
        queryParameters: {
          'key': integration.key,
          "token": integration.token,
        },
      );
      return (response.data as List).map((e) => (e as List).map((e) => e as num?).toList()).toList();
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> send({required OrderEntity order}) async {
    try {
      await client.post(
        '/stores/$storeId/integrations/procolis/send',
        data: {
          'key': integration.key,
          'token': integration.token,
          'orderId': order.id
        },
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}

// Noest Delivery Integration Api
class NoestDeliveryIntegrationApi {
  final NoestDeliveryIntegration integration;
  final String storeId;
  final Dio client;

  const NoestDeliveryIntegrationApi({required this.client, required this.integration,required this.storeId});

  Future<List<List<num?>?>> getDeliveryFees() async {
    try {
      var response = await client.get(
        '/stores/$storeId/integrations/noest/fees',
        queryParameters: {
          'guid': integration.guid,
          "token": integration.token,
        },
      );
      return (response.data as List).map((e) => (e as List).map((e) => e as num?).toList()).toList();
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> send({required OrderEntity order}) async {
    try {
      await client.post(
        '/stores/$storeId/integrations/noest/send',
        data: {
          'guid': integration.guid,
          'token': integration.token,
          'orderId': order.id
        },
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 422) {
        var errors = FeeefValidationException.fromJson(e.response?.data);
        throw errors;
      }
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}