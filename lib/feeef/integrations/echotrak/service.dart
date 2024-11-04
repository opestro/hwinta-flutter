import 'package:dio/dio.dart';
import 'package:feeef_marchant/feeef/integrations/integrations.dart';
import 'package:feeef_marchant/feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef_marchant/feeef/orders/models/order.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/src/core/algeria_cites.dart';
import 'package:feeef_marchant/src/core/strings.dart';

import 'models/create_order_request.dart';
// SC: State City encoding system
// becouse every delivery service has its own names of states and cities

class EchotrakDeliveryService extends DeliveryService<EchotrakDeliveryIntegration> {
  @override
  String get name => 'ecotrack';

  EchotrakDeliveryService({required super.client, required super.integration});

  @override
  /// [send] send order to echotrak
  Future<void> deliverOrder({required Order order, String? storeName}) async {
    var stateCode = int.parse(order.shippingState!);
    var cityCode = int.parse(order.shippingCity!);

    var ecotrackCityName = getCityByCode(code: cityCode.toString(), stateCode: stateCode.toString(), lang: AlgeriaScript.latin)?.name;

    var response = await client.post(
      '${integration.baseUrl}/api/v1/create/order',
      data: {
        'reference': order.id,
        'api_token': integration.token,
        'nom_client': order.customerName,
        'telephone': order.customerPhone,
        // 'telephone_2': order.customerPhone,
        'adresse': order.shippingAddress?.nullIfEmpty ?? "unknown",
        'commune': [
          order.shippingState,
          order.shippingCity
        ].contains(null)
            ? "unknown"
            : ecotrackCityName,
        'code_wilaya': int.tryParse(order.shippingState.toString()),
        'montant': order.total,
        'remarque': order.metadata['note'],
        'produit': order.items.map((e) => e.productName).join(', '),
        'quantite': order.items.map((e) => e.quantity).join(', '),
        'boutique': storeName?.trim(),
        'type': 1,
        'stop_desk': order.shippingAddress?.nullIfEmpty == null ? 1 : 0,
      },
    );

    await attach(order: order, payload: response.data);
  }

  /// [send] send order to echotrak
  /// return [String] the tracking id
  Future<EchotrakOrderCreateResponse> send(Order order,EchotrakOrderCreateRequest request) async {
    var data = {
      ...request.toJson(),
      "api_token": integration.token
    };
    final response = await client.post('${integration.baseUrl}/api/v1/create/order', data: data);
    await attach(order: order, payload: response.data);
    return (
      tracking: response.data['tracking'] as String,
    );
  }

}

typedef EchotrakOrderCreateResponse = ({String tracking});

/// extentions in [Order]
extension OrderEchotrak on Order {
  // get the ecotrack data
  Map<String, dynamic>? get ecotrackData {
    if (metadata['delivery'] == null) return null;
    // service match
    if (metadata['delivery']['service'] != 'ecotrack') return null;
    return metadata['delivery'];
  }

  String? get ecotrackTrackingId => ecotrackData?["payload"]?["tracking"];

    Map<String, dynamic>? get deliveryData => metadata['delivery'];
}
