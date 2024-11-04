import 'package:dio/dio.dart';
import 'package:feeef_marchant/feeef/integrations/integrations.dart';
import 'package:feeef_marchant/feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef_marchant/feeef/orders/models/order.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/src/core/algeria_cites.dart';
import 'package:feeef_marchant/src/core/strings.dart';

// SC: State City encoding system
// becouse every delivery service has its own names of states and cities

class YalidineDeliveryService extends DeliveryService<YalidineDeliveryIntegration> {
  @override
  String get name => 'yalidine';

  YalidineDeliveryService({required super.client, required super.integration});

  @override
  /// [send] send order to yalidine
  Future<void> deliverOrder({required Order order, String? storeName}) async {
    throw UnimplementedError();
    // await attach(order: order, payload: response.data);
  }

  /// [send] send order to yalidine
  /// return [String] the tracking id
  Future<YalidineOrderCreateResponse> send(Order order) async {
    final response = await 
      await client.post(
        '/stores/${order.storeId}/integrations/yalidine/send',
        data: {
          'id': integration.id,
          'token': integration.token,
          'orderId': order.id
        },
      );
    await attach(order: order, payload: response.data);
    return (
      tracking: response.data["Colis"][0]['Tracking'] as String?,
    );
  }

}

typedef YalidineOrderCreateResponse = ({String? tracking});

/// extentions in [Order]
extension OrderYalidine on Order {
  // get the yalidine data
  Map<String, dynamic>? get yalidineData {
    if (metadata['delivery'] == null) return null;
    // service match
    if (metadata['delivery']['service'] != 'yalidine') return null;
    return metadata['delivery'];
  }

  String? get yalidineTrackingId => yalidineData?["payload"]?["Colis"][0]['Tracking'] as String;

}
