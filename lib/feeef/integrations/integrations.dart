import 'package:dio/dio.dart';
import 'package:feeef_marchant/feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef_marchant/feeef/interfaces/order.dart';
import 'package:feeef_marchant/main.dart';

import '../orders/models/order.dart';

abstract class DeliveryService<T> {
  String get name;

  final T integration;
  final Dio client;

  DeliveryService({
    required this.client,
    required this.integration,
  });

  Future<void> deliverOrder({required Order order});

  Future<void> attach({required Order order, Map<String, dynamic>? payload}) async {
    await ff.orders.update(
      id: order.id,
      data: OrderUpdate(
        storeId: order.storeId,
        deliveryStatus: DeliveryStatus.pending,
        metadata: {
          ...order.metadata,
          'delivery': {
            'status': 'pending',
            'service': name,
            'payload': payload,
          },
          'history': [
            {
              'status': order.status.name,
              'deliveryStatus': order.deliveryStatus.name,
              'paymentStatus': order.paymentStatus.name,
              'createdAt': DateTime.now().toIso8601String(),
              'message': 'order sent to delivery service $name',
              'code': 'order.attach:$name',
              'userId': ff.users.auth!.user.id
            },
            ...?order.metadata['history'],
          ],
        },
      ),
    );
  }

  /// [detach] detach order from delivery service
  Future<void> detach({required Order order}) async {
    await ff.orders.update(
      id: order.id,
      data: OrderUpdate(
        storeId: order.storeId,
        metadata: {
          ...order.metadata,
          'delivery': null,
          'history': [
            {
              'status': order.status.name,
              'deliveryStatus': order.deliveryStatus.name,
              'paymentStatus': order.paymentStatus.name,
              'createdAt': DateTime.now().toIso8601String(),
              'message': 'order detached from delivery service $name',
              'code': 'order.detach:$name',
              'userId': ff.users.auth!.user.id
            },
            ...?order.metadata['history'],
          ],
        },
      ),
    );
  }
}
