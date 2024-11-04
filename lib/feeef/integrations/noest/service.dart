import 'package:dio/dio.dart';
import 'package:feeef_marchant/feeef/integrations/integrations.dart';
import 'package:feeef_marchant/feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef_marchant/feeef/orders/models/order.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/src/core/algeria_cites.dart';
import 'package:feeef_marchant/src/core/strings.dart';

// SC: State City encoding system
// becouse every delivery service has its own names of states and cities

class NoestDeliveryService extends DeliveryService<NoestDeliveryIntegration> {
  @override
  String get name => 'noest';

  NoestDeliveryService({required super.client, required super.integration});

  @override
  /// [send] send order to noest
  Future<void> deliverOrder({required Order order, String? storeName}) async {
    throw UnimplementedError();
    // await attach(order: order, payload: response.data);
  }

  /// [send] send order to noest
  /// return [String] the tracking id
  Future<NoestOrderCreateResponse> send(Order order) async {
    final response = await 
      await client.post(
        '/stores/${order.storeId}/integrations/noest/send',
        data: {
          'guid': integration.guid,
          'token': integration.token,
          'orderId': order.id
        },
      );
    await attach(order: order, payload: response.data);
    return (
      tracking: response.data.toString(),
    );
  }

}

typedef NoestOrderCreateResponse = ({String? tracking});

/// extentions in [Order]
extension OrderNoest on Order {
  // get the noest data
  Map<String, dynamic>? get noestData {
    if (metadata['delivery'] == null) return null;
    // service match
    if (metadata['delivery']['service'] != 'noest') return null;
    return metadata['delivery'];
  }

  String? get noestTrackingId => noestData?["payload"]?["Colis"][0]['Tracking'] as String;

}
