import 'package:dio/dio.dart';
import 'package:feeef_marchant/feeef/core/validation/validation_exception.dart';
import 'package:feeef_marchant/feeef/core/widgets/alerts.dart';
import 'package:feeef_marchant/feeef/feeef.dart';
import 'package:feeef_marchant/feeef/integrations/echotrak/service.dart';
import 'package:feeef_marchant/feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef_marchant/feeef/stores/models/store.dart';
import 'package:feeef_marchant/gen/assets.gen.dart';
import 'package:feeef_marchant/helpers.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/main.dart';
import 'package:feeef_marchant/src/core/enums.dart';
import 'package:feeef_marchant/src/core/strings.dart';
import 'package:feeef_marchant/src/core/widgets/form_dailog.dart';
import 'package:feeef_marchant/src/stores/bloc/marchent_stores_bloc.dart';
import 'package:feeef_marchant/src/stores/bloc/marchent_stores_state.dart';
import 'package:feeef_marchant/src/stores/views.dart';
import 'package:feeef_marchant/src/stores/views/overview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../consts.dart';

class IntegrationsPage extends StatelessWidget {
  final String storeId;
  const IntegrationsPage({super.key, required this.storeId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarchentStoresBloc, MarchentStoresState>(
      builder: (context, state) {
        if (state.store == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return _IntegrationsView(store: state.store!);
      },
    );
  }
}

class _IntegrationsView extends StatelessWidget {
  final Store store;
  const _IntegrationsView({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return BlocBuilder<MarchentStoresBloc, MarchentStoresState>(
      builder: (context, state) {
        final YalidineDeliveryIntegration? yalidin = store.integrations.yalidine;

        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text("التكامل مع الخدمات الأخرى"),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: SizedBox(
                width: forScreen(width: width, md: 600),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 16),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.extension_rounded, size: 40),
                          const SizedBox(width: 8),
                          Assets.integrations.yalidine.icon.image(
                            height: 40,
                            fit: BoxFit.contain,
                            color: Theme.of(context).colorScheme.inverseSurface,
                          ),
                          const SizedBox(width: 8),
                          Assets.integrations.ecotrack.icon.image(
                            height: 40,
                            fit: BoxFit.contain,
                            color: Theme.of(context).colorScheme.inverseSurface,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      FittedBox(
                        child: Text(
                          "التكامل مع الخدمات الأخرى",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "يمكنك التكامل مع الخدمات الأخرى لتحسين تجربة العميل وتسهيل عملية البيع",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 16),
                      const ListTile(
                        enabled: false,
                        title: Text("خدمات الشحن"),
                        leading: Icon(Icons.delivery_dining),
                      ),
                      // 1. Yalidine express
                      Card.outlined(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(color: Theme.of(context).dividerColor),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.all(24),
                          child: Row(
                            children: [
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Assets.integrations.yalidine.icon.image(
                                          width: 64,
                                          height: 64,
                                          fit: BoxFit.contain,
                                          color: yalidin?.active == true ? Colors.red : Colors.grey,
                                        ),
                                        if (yalidin != null) ...[
                                          IconButton.filledTonal(
                                            onPressed: () => _showYaLidinExpressDialog(context, store),
                                            icon: const Icon(Ionicons.settings_outline),
                                          ),
                                        ]
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Yalidine Express", style: Theme.of(context).textTheme.headlineSmall),
                                        // verified
                                        const SizedBox(width: 8),
                                        const Icon(Icons.verified),
                                      ],
                                    ),
                                    Text("ربط متجرك بخدمة الشحن السريع Yalidine Express\nتوفر أسعار الشحن وإرسال الطلبات مباشرة", style: Theme.of(context).textTheme.bodySmall),
                                    // actions if yalidin not null
                                    const SizedBox(height: 16),
                                    Row(
                                      children: [
                                        if (yalidin != null)
                                          Expanded(
                                            child: Wrap(
                                              spacing: 8,
                                              children: [
                                                // نسخ الأسعار
                                                ActionChip(
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                                                  onPressed: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return FormDailog(
                                                          title: const Text("نسخ الأسعار"),
                                                          builder: (context, error) => const Column(
                                                            mainAxisSize: MainAxisSize.min,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text("سيتم نسخ الأسعار إلى المتجرك الحالي\nالإستمرار يعني حذف الأسعار الحالية، ننصحك بأخذ نسخة احتياطية قبل الإستمرار"),
                                                            ],
                                                          ),
                                                          onSubmitted: () async {
                                                            // await Future.delayed(const Duration(seconds: 2));
                                                            var fees = await YalidineDeliveryIntegrationApi(client: ff.client, integration: store.integrations.yalidine!, storeId: store.id).getDeliveryFees();

                                                            await ff.stores.update(
                                                              id: store.id,
                                                              data: StoreUpdate(
                                                                defaultShippingRates: fees,
                                                              ),
                                                            );
                                                            context.go('/stores/${store.id}/shipping_rates');
                                                            context.showSuccessSnackBar(
                                                              const Text("تم نسخ الأسعار بنجاح"),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                  avatar: const Icon(Ionicons.copy),
                                                  label: const Text("نسخ الأسعار"),
                                                ),
                                              ],
                                            ),
                                          ),
                                        if (yalidin == null)
                                          FilledButton.icon(
                                            onPressed: () => _showYaLidinExpressDialog(context, store),
                                            icon: const Icon(Ionicons.link),
                                            label: const Text("ربط متجري"),
                                          )
                                        else ...[
                                          OutlinedButton.icon(
                                            onPressed: () async {
                                              context.showConfirmDialog(
                                                content: const Text("هل تريد فصل خدمة Yalidine Express من متجرك؟"),
                                                onConfirm: () {
                                                  ff.stores.update(
                                                    id: store.id,
                                                    data: StoreUpdate(
                                                        integrations: store.integrations.copyWith(
                                                      yalidine: null,
                                                    )
                                                        // store.integrations.where((element) => element is! StoreYalidinIntegration).toList(),
                                                        ),
                                                  );
                                                },
                                              );
                                            },
                                            icon: const Icon(Ionicons.trash_sharp),
                                            label: const Text("فصل"),
                                          ),
                                        ]
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // 3. Echotrak
                      Card.outlined(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(color: Theme.of(context).dividerColor),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.all(24),
                          child: Row(
                            children: [
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Assets.integrations.ecotrack.icon.image(
                                          height: 40,
                                          fit: BoxFit.contain,
                                          color: store.integrations.echotrak?.active == true ? Colors.blueAccent : Colors.grey,
                                        ),
                                        const Spacer(),
                                        if (store.integrations.echotrak != null) ...[
                                          IconButton.filledTonal(
                                            onPressed: () => _showEchotrakDialog(context, store),
                                            icon: const Icon(Ionicons.settings_outline),
                                          ),
                                        ]
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Echotrak", style: Theme.of(context).textTheme.headlineSmall),
                                        // verified
                                        const SizedBox(width: 8),
                                        const Icon(Icons.verified),
                                      ],
                                    ),
                                    // Text("توفر منصة Echotrak تكامل مع عدة شركات شحن مثل:\n MSMgo, GoLIVRI... وغيرها الكثير", style: Theme.of(context).textTheme.bodySmall),

                                    Text("ربط متجرك بخدمة الشحن السريع Echotrak\nتوفر أسعار الشحن وإرسال الطلبات مباشرة", style: Theme.of(context).textTheme.bodySmall),
                                    // actions if ecotrack not null
                                    const SizedBox(height: 16),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Wrap(
                                            spacing: 8,
                                            children: [
                                              // نسخ الأسعار
                                              if (store.integrations.echotrak != null)
                                                ActionChip(
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                                                  onPressed: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return FormDailog(
                                                          title: const Text("نسخ الأسعار"),
                                                          builder: (context, error) => const Column(
                                                            mainAxisSize: MainAxisSize.min,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text("سيتم نسخ الأسعار إلى المتجرك الحالي\nالإستمرار يعني حذف الأسعار الحالية، ننصحك بأخذ نسخة احتياطية قبل الإستمرار"),
                                                            ],
                                                          ),
                                                          onSubmitted: () async {
                                                            await Future.delayed(const Duration(seconds: 2));
                                                            // var fees = await EchotrakDeliveryIntegrationApi(client: ff.client, integration: store.integrations.echotrak!, storeId: store.id).getDeliveryFees();
                                                            var ecotrack = store.integrations.echotrak;
                                                            var response = await Dio().get("${ecotrack!.baseUrl}/api/v1/get/fees?api_token=${ecotrack!.token}");
                                                            var fees = <List<num?>?>[
                                                              for (var i = 0; i < 58; i++)
                                                                [
                                                                  null,
                                                                  null
                                                                ],
                                                            ];
                                                            // loop throw "livraison" and by "wilaya_id"-1 fill the fees
                                                            for (var fee in response.data["livraison"]) {
                                                              var index = fee["wilaya_id"] - 1;
                                                              fees[index] = [
                                                                num.tryParse(fee["tarif_stopdesk"].toString()),
                                                                num.tryParse(fee["tarif"].toString()),
                                                              ];
                                                            }

                                                            await ff.stores.update(
                                                              id: store.id,
                                                              data: StoreUpdate(
                                                                defaultShippingRates: fees,
                                                              ),
                                                            );
                                                            context.go('/stores/${store.id}/shipping_rates');
                                                            context.showSuccessSnackBar(
                                                              const Text("تم نسخ الأسعار بنجاح"),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                  avatar: const Icon(Ionicons.copy),
                                                  label: const Text("نسخ الأسعار"),
                                                ),
                                            ],
                                          ),
                                        ),
                                        if (store.integrations.echotrak == null) ...[
                                          FilledButton.icon(
                                            onPressed: () => _showEchotrakDialog(context, store),
                                            icon: const Icon(Ionicons.link),
                                            label: const Text("ربط متجري"),
                                          ),
                                        ] else ...[
                                          // unlink
                                          OutlinedButton.icon(
                                            onPressed: () async {
                                              context.showConfirmDialog(
                                                content: const Text("هل تريد فصل خدمة Echotrak من متجرك؟"),
                                                onConfirm: () {
                                                  ff.stores.update(
                                                    id: store.id,
                                                    data: StoreUpdate(
                                                        integrations: store.integrations.copyWith(
                                                      echotrak: null,
                                                    )),
                                                  );
                                                },
                                              );
                                            },
                                            icon: const Icon(Ionicons.trash_sharp),
                                            label: const Text("فصل"),
                                          ),
                                        ]
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // 3. Procolis
                      Card.outlined(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(color: Theme.of(context).dividerColor),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.all(24),
                          child: Row(
                            children: [
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Assets.integrations.procolis.icon.image(
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.contain,
                                          color: store.integrations.procolis?.active == true ? Colors.blueGrey : Colors.grey,
                                        ),
                                        const Spacer(),
                                        if (store.integrations.procolis != null) ...[
                                          IconButton.filledTonal(
                                            onPressed: () => _showProcolisDialog(context, store),
                                            icon: const Icon(Ionicons.settings_outline),
                                          ),
                                        ]
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Procolis", style: Theme.of(context).textTheme.headlineSmall),
                                        // verified
                                        const SizedBox(width: 8),
                                        const Icon(Icons.verified),
                                      ],
                                    ),
                                    Text("توفر منصة Procolis تكامل مع عدة شركات شحن مثل:\nZrExpress, Flash, ISR, COLiELi وغيرها", style: Theme.of(context).textTheme.bodySmall),
                                    // actions if ecotrack not null
                                    const SizedBox(height: 16),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Wrap(
                                            spacing: 8,
                                            children: [
                                              // نسخ الأسعار
                                              if (store.integrations.procolis != null)
                                                ActionChip(
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                                                  onPressed: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return FormDailog(
                                                          title: const Text("نسخ الأسعار"),
                                                          builder: (context, error) => const Column(
                                                            mainAxisSize: MainAxisSize.min,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text("سيتم نسخ الأسعار إلى المتجرك الحالي\nالإستمرار يعني حذف الأسعار الحالية، ننصحك بأخذ نسخة احتياطية قبل الإستمرار"),
                                                            ],
                                                          ),
                                                          onSubmitted: () async {
                                                            var fees = await ProcolisDeliveryIntegrationApi(client: ff.client, integration: store.integrations.procolis!, storeId: store.id).getDeliveryFees();

                                                            await ff.stores.update(
                                                              id: store.id,
                                                              data: StoreUpdate(
                                                                defaultShippingRates: fees,
                                                              ),
                                                            );
                                                            context.go('/stores/${store.id}/shipping_rates');
                                                            context.showSuccessSnackBar(
                                                              const Text("تم نسخ الأسعار بنجاح"),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                  avatar: const Icon(Ionicons.copy),
                                                  label: const Text("نسخ الأسعار"),
                                                ),
                                            ],
                                          ),
                                        ),
                                        if (store.integrations.procolis == null) ...[
                                          FilledButton.icon(
                                            onPressed: () => _showProcolisDialog(context, store),
                                            icon: const Icon(Ionicons.link),
                                            label: const Text("ربط متجري"),
                                          ),
                                        ] else ...[
                                          // unlink
                                          OutlinedButton.icon(
                                            onPressed: () async {
                                              context.showConfirmDialog(
                                                content: const Text("هل تريد فصل خدمة Procolis من متجرك؟"),
                                                onConfirm: () {
                                                  ff.stores.update(
                                                    id: store.id,
                                                    data: StoreUpdate(
                                                        integrations: store.integrations.copyWith(
                                                      procolis: null,
                                                    )),
                                                  );
                                                },
                                              );
                                            },
                                            icon: const Icon(Ionicons.trash_sharp),
                                            label: const Text("فصل"),
                                          ),
                                        ],
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // 4. Maystro
                      BlurFeature(
                        label: Text(t.soon),
                        child: Card.outlined(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                            side: BorderSide(color: Theme.of(context).dividerColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.all(24),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Assets.integrations.maystro.icon.image(
                                            width: 64,
                                            height: 64,
                                            fit: BoxFit.contain,
                                            color: Colors.grey,
                                          ),
                                          FilledButton.icon(
                                            onPressed: null,
                                            icon: const Icon(Ionicons.link),
                                            label: const Text("قريبا"),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 16),
                                      Text("Maystro", style: Theme.of(context).textTheme.headlineSmall),
                                      Text("ربط متجرك بخدمة الشحن السريع Maystro\nتوفر أسعار الشحن وإرسال الطلبات مباشرة", style: Theme.of(context).textTheme.bodySmall),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // خدمات الإعلانات والتسويق
                      const ListTile(
                        enabled: false,
                        title: Text("خدمات الإعلانات والتسويق"),
                        leading: Icon(Icons.mark_email_read),
                      ),
                      // 1. Meta Pixel (Facebook pixel prevesly)
                      Card.outlined(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(color: Theme.of(context).dividerColor),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.all(24),
                          child: Row(
                            children: [
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Assets.integrations.meta.icon.image(
                                          width: 64,
                                          height: 64,
                                          fit: BoxFit.contain,
                                          color: store.integrations.metaPixel?.active == true ? Colors.blue : Colors.grey,
                                        ),
                                        if (store.integrations.metaPixel != null)
                                          IconButton.filledTonal(
                                            onPressed: () => _showMetaPixelDialog(context, store),
                                            icon: const Icon(Ionicons.settings_outline),
                                          ),
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Meta Pixel", style: Theme.of(context).textTheme.headlineSmall),
                                        // verified
                                        const SizedBox(width: 8),
                                        const Icon(Icons.verified),
                                      ],
                                    ),
                                    Text("ربط متجرك بخدمة الإعلانات والتسويق Meta Pixel\nتتبع الزوار والعملاء وتحسين الإعلانات", style: Theme.of(context).textTheme.bodySmall),
                                    // actions if meta pixel not null
                                    const SizedBox(height: 16),
                                    Row(
                                      children: [
                                        const Spacer(),
                                        if (store.integrations.metaPixel == null) ...[
                                          FilledButton.icon(
                                            onPressed: () => _showMetaPixelDialog(context, store),
                                            icon: const Icon(Ionicons.link),
                                            label: const Text("ربط متجري"),
                                          ),
                                        ] else ...[
                                          // unlink
                                          OutlinedButton.icon(
                                            onPressed: () async {
                                              context.showConfirmDialog(
                                                content: const Text("هل تريد فصل خدمة Meta Pixel من متجرك؟"),
                                                onConfirm: () {
                                                  ff.stores.update(
                                                    id: store.id,
                                                    data: StoreUpdate(
                                                        integrations: store.integrations.copyWith(
                                                      metaPixel: null,
                                                    )),
                                                  );
                                                },
                                              );
                                            },
                                            icon: const Icon(Ionicons.trash_sharp),
                                            label: const Text("فصل"),
                                          ),
                                        ]
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),
                      // 4. Google Sheet
                      Card.outlined(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(color: Theme.of(context).dividerColor),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.all(24),
                          child: Row(
                            children: [
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.pivot_table_chart,
                                          color: store.integrations.googleSheet?.active == true ? Colors.green : Colors.grey,
                                          size: kMinInteractiveDimension,
                                        ),
                                        if (store.integrations.googleSheet != null)
                                          IconButton.filledTonal(
                                            onPressed: () => _showGoogleSheetDialog(context, store),
                                            icon: const Icon(Ionicons.settings_outline),
                                          ),
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Google Sheets", style: Theme.of(context).textTheme.headlineSmall),
                                        // verified
                                        const SizedBox(width: 8),
                                        const Icon(Icons.verified),
                                      ],
                                    ),
                                    Text("طريقة سهلة لتتبع طلباتك ومعالجتها مع جداول جوجل", style: Theme.of(context).textTheme.bodySmall),
                                    // actions if meta pixel not null
                                    const SizedBox(height: 16),
                                    Row(
                                      children: [
                                        const Spacer(),
                                        if (store.integrations.googleSheet == null) ...[
                                          FilledButton.icon(
                                            onPressed: () => _showGoogleSheetDialog(context, store),
                                            icon: const Icon(Ionicons.link),
                                            label: const Text("ربط متجري"),
                                          ),
                                        ] else ...[
                                          // open sheet link
                                          TextButton.icon(
                                            onPressed: () {
                                              // Add your logic to open the Google Sheet link here
                                              final url = "https://docs.google.com/spreadsheets/d/${store.integrations.googleSheet?.id}";
                                              launchUrlString(url); // Ensure you have the 'url_launcher' package added to your pubspec.yaml
                                            },
                                            icon: const Icon(Ionicons.open_outline),
                                            label: const Text("فتح"),
                                          ),
                                          // unlink
                                          OutlinedButton.icon(
                                            onPressed: () async {
                                              context.showConfirmDialog(
                                                content: const Text("هل تريد فصل خدمة جداول جوجل من متجرك؟"),
                                                onConfirm: () {
                                                  ff.stores.update(
                                                    id: store.id,
                                                    data: StoreUpdate(
                                                      integrations: store.integrations.copyWith(
                                                        googleSheet: null,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            icon: const Icon(Ionicons.trash_sharp),
                                            label: const Text("فصل"),
                                          ),
                                        ]
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // 2. Google Analytics
                      BlurFeature(
                        label: Text(t.soon),
                        child: Card.outlined(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                            side: BorderSide(color: Theme.of(context).dividerColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.all(24),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Icon(Icons.analytics, size: 64, color: Colors.orange),
                                          // Assets.integrations.google.icon.image(
                                          //   width: 64,
                                          //   height: 64,
                                          //   fit: BoxFit.contain,
                                          //   color: Colors.orange,
                                          // ),
                                          FilledButton.icon(
                                            onPressed: null,
                                            icon: const Icon(Ionicons.link),
                                            label: const Text("قريبا"),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 16),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text("Google Analytics", style: Theme.of(context).textTheme.headlineSmall),
                                          // verified
                                          const SizedBox(width: 8),
                                          const Icon(Icons.verified),
                                        ],
                                      ),
                                      Text("ربط متجرك بخدمة الإحصائيات والتحليل Google Analytics\nتتبع الزوار والعملاء وتحليل البيانات", style: Theme.of(context).textTheme.bodySmall),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // 3. Telegram
                      Card.outlined(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(color: Theme.of(context).dividerColor),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.all(24),
                          child: Row(
                            children: [
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Icon(Ionicons.telescope, size: 64, color: Colors.blue),
                                        FilledButton.icon(
                                          onPressed: null,
                                          icon: const Icon(Ionicons.link),
                                          label: const Text("قريبا"),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Telegram", style: Theme.of(context).textTheme.headlineSmall),
                                        // verified
                                        const SizedBox(width: 8),
                                        const Icon(Icons.verified),
                                      ],
                                    ),
                                    Text("ربط متجرك بخدمة الإعلانات والتسويق عبر تطبيق Telegram\nتواصل مع العملاء وإرسال الإشعارات", style: Theme.of(context).textTheme.bodySmall),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // 5. Google Ads
                      BlurFeature(
                        label: Text(t.soon),
                        child: Card.outlined(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                            side: BorderSide(color: Theme.of(context).dividerColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.all(24),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Icon(Ionicons.logo_google, size: 64, color: Colors.blue),
                                          FilledButton.icon(
                                            onPressed: null,
                                            icon: const Icon(Ionicons.link),
                                            label: const Text("قريبا"),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 16),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text("Google Ads", style: Theme.of(context).textTheme.headlineSmall),
                                          // verified
                                          const SizedBox(width: 8),
                                          const Icon(Icons.verified),
                                        ],
                                      ),
                                      Text("ربط متجرك بخدمة الإعلانات والتسويق عبر Google Ads\nتحسين الإعلانات وزيادة المبيعات", style: Theme.of(context).textTheme.bodySmall),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _showYaLidinExpressDialog(BuildContext context, Store store) {
    final yalidin = store.integrations.yalidine;
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    var appId = TextEditingController(text: yalidin?.id);
    var apiKey = TextEditingController(text: yalidin?.token);
    var active = ValueNotifier<bool>(yalidin?.active ?? false);
    var futureStatus = ValueNotifier(FutureStatus.initial);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("ربط متجرك بخدمة التوصيل Yalidine Express"),
          content: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("أدخل معرف التطبيق APP ID و رمز واجهة التطبيقات API key، تجدهما في صفحة المطور"),
                const SizedBox(height: 16),
                TextFormField(
                  controller: appId,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    labelText: "معرف التطبيق APP ID",
                    prefixIcon: Icon(Ionicons.barcode),
                    hintText: "737001705622XXXXXXXX",
                    helperText: "يتكون من 20 رقم، يمكنك\n الحصول عليه من صفحة المطور",
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.numeric(),
                  ]),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: apiKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    labelText: "رمز واجهة التطبيقات API key",
                    prefixIcon: Icon(Ionicons.key),
                    hintText: "ETfCW1W8mtxa...",
                    helperText: "يتكون من 64 حرف، يمكنك\n الحصول عليه من صفحة المطور",
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(64),
                  ]),
                ),
                const SizedBox(height: 16),
                ListenableBuilder(
                    listenable: active,
                    builder: (context, _) {
                      return SwitchListTile(
                        value: active.value,
                        onChanged: (value) {
                          active.value = value;
                        },
                        title: const Text("تفعيل الخدمة"),
                        subtitle: const Text("تفعيل خدمة الشحن السريع Yalidine Express"),
                      );
                    }),
              ],
            ),
          ),
          actions: [
            // open https://yalidine.app/app/dev/index.php
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(t.general.cancel),
            ),
            FilledButton.icon(
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  futureStatus.value = FutureStatus.inProgress;
                  ff.stores.update(
                    id: store.id,
                    data: StoreUpdate(
                      // integrations: [
                      //   ...store.integrations.where((element) => element is! StoreYalidinIntegration),
                      //   StoreIntegration.yalidine(id: appId.text, token: apiKey.text, active: active.value),
                      // ],
                      integrations: store.integrations.copyWith(
                        yalidine: YalidineDeliveryIntegration(id: appId.text, token: apiKey.text, active: active.value),
                      ),
                    ),
                  );
                  Navigator.of(context).pop();
                }
              },
              label: yalidin == null ? Text(t.general.link) : Text(t.general.save),
              icon: const Icon(Ionicons.link),
            ),
          ],
        );
      },
    );
  }

  // _showEchotrakDialog
  void _showEchotrakDialog(BuildContext context, Store store) {
    final ecotrack = store.integrations.echotrak;
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    var host = TextEditingController(text: ecotrack?.baseUrl);
    var apiKey = TextEditingController(text: ecotrack?.token);
    var active = ValueNotifier<bool>(ecotrack?.active ?? false);
    var futureStatus = ValueNotifier(FutureStatus.initial);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("ربط متجرك بخدمة التوصيل Echotrak"),
          content: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: host,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    labelText: "عنوان الخادم",
                    prefixIcon: Icon(Ionicons.globe),
                    hintText: "https://[company].ecotrack.dz",
                    helperText: "عنوان الخادم الذي تريد الإتصال به",
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.url(),
                  ]),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: apiKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    labelText: "رمز واجهة التطبيقات API key",
                    prefixIcon: Icon(Ionicons.key),
                    hintText: "ETfCW1W8mtxa...",
                    helperText: "يتكون من 60 حرف، يمكنك\n الحصول عليه من صفحة المطور",
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.equalLength(60),
                  ]),
                ),
                const SizedBox(height: 16),
                ListenableBuilder(
                    listenable: active,
                    builder: (context, _) {
                      return SwitchListTile(
                        value: active.value,
                        onChanged: (value) {
                          active.value = value;
                        },
                        title: const Text("تفعيل الخدمة"),
                        subtitle: const Text("تفعيل خدمة الشحن السريع Echotrak"),
                      );
                    }),
              ],
            ),
          ),
          actions: [
            // open https://yalidine.app/app/dev/index.php
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(t.general.cancel),
            ),
            FilledButton.icon(
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  futureStatus.value = FutureStatus.inProgress;
                  ff.stores.update(
                    id: store.id,
                    data: StoreUpdate(
                      // integrations: [
                      //   ...store.integrations.where((element) => element is! StoreEchotrakIntegration),
                      //   StoreIntegration.ecotrack(id: UniqueKey().toString(), host: host.text, token: apiKey.text, active: active.value),
                      // ],
                      integrations: store.integrations.copyWith(
                        echotrak: EchotrakDeliveryIntegration(baseUrl: host.text, token: apiKey.text, active: active.value),
                      ),
                    ),
                  );
                  Navigator.of(context).pop();
                }
              },
              label: ecotrack == null ? Text(t.general.link) : Text(t.general.save),
              icon: const Icon(Ionicons.link),
            ),
          ],
        );
      },
    );
  }

  // _showProcolisDialog
  void _showProcolisDialog(BuildContext context, Store store) {
    final procolis = store.integrations.procolis;
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    var key = TextEditingController(text: procolis?.key);
    var apiKey = TextEditingController(text: procolis?.token);
    var active = ValueNotifier<bool>(procolis?.active ?? false);
    var futureStatus = ValueNotifier(FutureStatus.initial);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("ربط متجرك بخدمة التوصيل Procolis"),
          content: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: key,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    labelText: "المفتاح (key)",
                    prefixIcon: Icon(Ionicons.key),
                    hintText: "7ct5gror...",
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: apiKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    labelText: "رمز الولوج (token)",
                    prefixIcon: Icon(Ionicons.key_outline),
                    hintText: "ETfCW1W8mtxa...",
                    helperText: "يمكنك الحصول عليه من صفحة المطور",
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                ),
                const SizedBox(height: 16),
                ListenableBuilder(
                    listenable: active,
                    builder: (context, _) {
                      return SwitchListTile(
                        value: active.value,
                        onChanged: (value) {
                          active.value = value;
                        },
                        title: const Text("تفعيل الخدمة"),
                        subtitle: const Text("تفعيل خدمة الشحن السريع Procolis"),
                      );
                    }),
              ],
            ),
          ),
          actions: [
            // open https://yalidine.app/app/dev/index.php
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(t.general.cancel),
            ),
            FilledButton.icon(
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  futureStatus.value = FutureStatus.inProgress;
                  ff.stores.update(
                    id: store.id,
                    data: StoreUpdate(
                      // integrations: [
                      //   ...store.integrations.where((element) => element is! StoreProcolisIntegration),
                      //   StoreIntegration.procolis(id: UniqueKey().toString(), host: host.text, token: apiKey.text, active: active.value),
                      // ],
                      integrations: store.integrations.copyWith(
                        procolis: ProcolisDeliveryIntegration(key: key.text, token: apiKey.text, active: active.value),
                      ),
                    ),
                  );
                  Navigator.of(context).pop();
                }
              },
              label: procolis == null ? Text(t.general.link) : Text(t.general.save),
              icon: const Icon(Ionicons.link),
            ),
          ],
        );
      },
    );
  }

  // meta pixel dialog
  // it will be the same as yalidin dialog but allow adding multple MetaPixel ids
  void _showMetaPixelDialog(BuildContext context, Store store) {
    final metaPixel = store.integrations.metaPixel;
    var pixels = [
      ...?metaPixel?.pixels
    ];
    var active = metaPixel?.active ?? true;

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return FormDailog(
              title: const Text("ربط Meta Pixel"),
              builder: (context, error) => Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("أدخل معرف البكسل Pixel ID، يمكنك إضافة أكثر من بكسل"),
                  const SizedBox(height: 16),
                  for (var i = 0; i < pixels.length; i++) ...[
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              pixels.removeAt(i);
                            });
                          },
                          icon: const Icon(Ionicons.trash),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              TextFormField(
                                initialValue: pixels[i].id,
                                onChanged: (value) {
                                  pixels[i] = pixels[i].copyWith(id: value);
                                },
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                decoration: const InputDecoration(
                                  labelText: "معرف البكسل Pixel ID",
                                  prefixIcon: Icon(Ionicons.barcode),
                                  hintText: "737001705622XXXXXXXX",
                                ),
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(),
                                ]),
                              ),
                              const SizedBox(height: 8),

                              // apiKey
                              TextFormField(
                                initialValue: pixels[i].key,
                                onChanged: (value) {
                                  pixels[i] = pixels[i].copyWith(key: value.nullIfEmpty);
                                },
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                decoration: const InputDecoration(
                                  labelText: "رمز واجهة التطبيقات API key",
                                  prefixIcon: Icon(Ionicons.key),
                                  hintText: "ETfCW1W8mtxa...",
                                ),
                                validator: FormBuilderValidators.compose([
                                  // FormBuilderValidators.required(),
                                  // FormBuilderValidators.minLength(64),
                                ]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                  // add
                  ListTile(
                    onTap: () {
                      setState(() {
                        pixels.add(const MetaPixel(id: ""));
                      });
                    },
                    leading: const Icon(Ionicons.add),
                    title: const Text("إضافة بكسل جديد"),
                  ),

                  const SizedBox(height: 16),
                  SwitchListTile(
                    value: active,
                    onChanged: (value) {
                      setState(() {
                        active = value;
                      });
                    },
                    title: const Text("تفعيل الخدمة"),
                    subtitle: const Text("تفعيل خدمة الإعلانات والتسويق Meta Pixel"),
                  ),
                ],
              ),
              onSubmitted: () async {
                await ff.stores.update(
                  id: store.id,
                  data: StoreUpdate(
                    // integrations: [
                    // ...store.integrations.where((element) => element is! StoreMetaPixelIntegration),
                    // StoreIntegration.metaPixel(
                    //   id: pixelIds.join(),
                    //   pixels: pixelIds.map((e) {
                    //     return MetaPixel(id: e);
                    //   }).toList(),
                    //   active: active,
                    //   public: {
                    //     "pixels": pixelIds,
                    //   },
                    // ),
                    // ],
                    integrations: store.integrations.copyWith(
                      metaPixel: MetaPixelIntegration(
                        pixels: pixels,
                        active: active,
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  // google sheet dialog
  void _showGoogleSheetDialog(BuildContext context, Store store) {
    final googleSheet = store.integrations.googleSheet;
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    // spreadsheet id
    var id = TextEditingController(text: googleSheet?.id);
    // sheet name
    var name = TextEditingController(text: googleSheet?.name);
    // deployment id
    var deploymentId = TextEditingController(text: googleSheet?.deploymentId);
    // active
    var active = ValueNotifier<bool>(googleSheet?.active ?? false);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("ربط متجرك بخدمة جداول Google Sheet"),
          content: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // التعليمات
                  // ### التعليمات
                  // تحتاج تنفيذ الخطوات التالية لضمان تلقي البيانات
                  // * 1. افتح [رابط تطبيقات جوجل](https://script.google.com/home/projects/create)
                  // * 2. انسخ الرمز بالضغط على "نسخ"
                  // * 3. امسح النص الإفتراضي والسق الرمز الذي نسخته
                  // * 4. اضغط على "نشر" واختر نشر جديد
                  // اختر النوع "تطبيق ويب" وحدد "أي شخص" في خيارات التفويض
                  // * 5. اضغط على نشر ثم انسخ رمز النشر والسقه في النافذة
                  // بعدها كل ما عليه سوى نسخ معرف الجدول ووضعه في النافذة، ثم اختر اي تسمية للصفحة سيتم انشاؤها إن لم تكن متواجدة
                  const Text("تحتاج تنفيذ الخطوات التالية لضمان تلقي البيانات"),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      child: const Text("1"),
                    ),
                    title: const Text("افتح رابط تطبيقات جوجل"),
                    subtitle: const Text("https://script.google.com/home/projects/create"),
                    trailing: IconButton(
                      onPressed: () {
                        launchUrlString("https://script.google.com/home/projects/create");
                      },
                      icon: const Icon(Ionicons.open_outline),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      child: const Text("2"),
                    ),
                    title: const Text("انسخ الرمز"),
                    subtitle: const Text("انسخ الرمز بالضغط على 'نسخ'"),
                    trailing: IconButton(
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: googleScriptJsCode));
                        context.showInfoSnackBar(const Text("تم نسخ الرمز بنجاح"));
                      },
                      icon: const Icon(Ionicons.copy),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      child: const Text("3"),
                    ),
                    title: const Text("امسح النص الإفتراضي"),
                    subtitle: const Text("والصق الرمز الذي نسخته"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      child: const Text("4"),
                    ),
                    title: const Text("اضغط على 'نشر'"),
                    subtitle: const Text("واختر نشر جديد"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      child: const Text("5"),
                    ),
                    title: const Text("اختر النوع 'تطبيق ويب'"),
                    subtitle: const Text("وحدد 'أي شخص' في خيارات التفويض"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      child: const Text("6"),
                    ),
                    title: const Text("اضغط على 'نشر'"),
                    subtitle: const Text("ثم انسخ رمز النشر والسقه في النافذة"),
                  ),
                  const Text("بعدها كل ما عليه سوى نسخ معرف الجدول ووضعه في النافذة، ثم اختر اي تسمية للصفحة سيتم انشاؤها إن لم تكن متواجدة"),

                  const SizedBox(height: 16),

                  TextFormField(
                    controller: id,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      labelText: "معرف الجدول Spreadsheet ID",
                      prefixIcon: Icon(Ionicons.barcode),
                      hintText: "1BxiMVs0XRA5nFMdKvBdBZjgmUUqptlbs74OgvE2upms",
                      helperText: "معرف الجدول الذي تريد الإتصال به",
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: name,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      labelText: "اسم الورقة Sheet Name",
                      prefixIcon: Icon(Ionicons.document),
                      hintText: "Sheet1",
                      helperText: "اسم الورقة التي تريد الإتصال بها",
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: deploymentId,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      labelText: "معرف النشر Deployment ID",
                      prefixIcon: Icon(Ionicons.key),
                      hintText: "AKfycbw4k1ZJ1...",
                      helperText: "معرف النشر الذي تريد الإتصال به",
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  const SizedBox(height: 16),
                  ListenableBuilder(
                    listenable: active,
                    builder: (context, _) {
                      return SwitchListTile(
                        value: active.value,
                        onChanged: (value) {
                          active.value = value;
                        },
                        title: const Text("تفعيل الخدمة"),
                        subtitle: const Text("تفعيل خدمة جداول Google Sheet"),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          actions: [
            // open https://yalidine.app/app/dev/index.php
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(t.general.cancel),
            ),
            FilledButton.icon(
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  ff.stores.update(
                    id: store.id,
                    data: StoreUpdate(
                      integrations: store.integrations.copyWith(
                        googleSheet: GoogleSheetsIntegration(
                          id: id.text,
                          name: name.text,
                          deploymentId: deploymentId.text,
                          active: active.value,
                        ),
                      ),
                    ),
                  );
                  Navigator.of(context).pop();
                }
              },
              label: googleSheet == null ? Text(t.general.link) : Text(t.general.save),
              icon: const Icon(Ionicons.link),
            ),
          ],
        );
      },
    );
  }
}
