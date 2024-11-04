// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:feeef_marchant/feeef/core/validation/validation_exception.dart';
import 'package:feeef_marchant/feeef/core/widgets/alerts.dart';
import 'package:feeef_marchant/feeef/feeef.dart';
import 'package:feeef_marchant/feeef/integrations/echotrak/models/create_order_request.dart';
import 'package:feeef_marchant/feeef/integrations/echotrak/service.dart';
import 'package:feeef_marchant/feeef/integrations/procolis/service.dart';
import 'package:feeef_marchant/feeef/integrations/yalidine/service.dart';
import 'package:feeef_marchant/feeef/interfaces/embadded/store_integrations.dart';
import 'package:feeef_marchant/feeef/interfaces/order.dart';
import 'package:feeef_marchant/feeef/orders/models/order.dart';
import 'package:feeef_marchant/feeef/stores/models/store.dart';
import 'package:feeef_marchant/gen/assets.gen.dart';
import 'package:feeef_marchant/helpers.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/main.dart';
import 'package:feeef_marchant/src/core/algeria_cites.dart';
import 'package:feeef_marchant/src/core/enums.dart';
import 'package:feeef_marchant/src/core/fable.dart';
import 'package:feeef_marchant/src/core/strings.dart';
import 'package:feeef_marchant/src/core/widgets/form_dailog.dart';
import 'package:feeef_marchant/src/orders/list/bloc/orders_bloc.dart';
import 'package:feeef_marchant/src/stores/bloc/marchent_stores_state.dart';
import 'package:feeef_marchant/src/stores/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lib/lib.dart';
import 'package:recase/recase.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:feeef_marchant/feeef/orders/models/custom_order_tag.dart';

import '../../../../feeef/interfaces/embadded/store_summary.dart';
import '../../../stores/bloc/marchent_stores_bloc.dart';

// orders page
class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrdersBloc>(
      create: (context) => OrdersBloc(),
      child: OrdersView(),
    );
  }
}

Widget highlightMatchedText(TextStyle style, String text, String query) {
  if (query.isEmpty) {
    return Text(text);
  }

  final matches = RegExp(query, caseSensitive: false).allMatches(text);
  if (matches.isEmpty) {
    return Text(style: style, text);
  }

  final List<TextSpan> spans = [];
  int start = 0;

  for (final match in matches) {
    if (match.start > start) {
      spans.add(TextSpan(style: style, text: text.substring(start, match.start)));
    }
    spans.add(TextSpan(
      text: text.substring(match.start, match.end),
      style: style.copyWith(backgroundColor: Colors.yellow, color: Colors.black),
    ));
    start = match.end;
  }

  if (start < text.length) {
    spans.add(TextSpan(style: style, text: text.substring(start)));
  }

  return RichText(text: TextSpan(style: style, children: spans));
}

class OrdersView extends StatefulWidget {
  const OrdersView({super.key});

  @override
  State<OrdersView> createState() => _OrdersViewState();
}

enum _DeliveryServiceFilter {
  ecotrack,
  yalidine,
  procolis
}

class _OrdersViewState extends State<OrdersView> {
  _DeliveryServiceFilter? get deliveryService {
    var service = GoRouterState.of(context).uri.queryParameters['deliveryService'];
    if (service == null) return null;
    return _DeliveryServiceFilter.values.where((element) => element.name == service).firstOrNull;
  }

  OrderStatus? get selectedStatus {
    var status = GoRouterState.of(context).uri.queryParameters['status'];
    if (status == null) return null;
    return OrderStatus.values.where((element) => element.name == status).firstOrNull;
  }

  List<CustomOrderTag> get customOrderTags {
    var store = context.read<MarchentStoresBloc>().state.store;
    return store?.customOrderTags ?? <CustomOrderTag>[];
  }

  Future<void> _editCustomOrderTagsHistories(Order order, String tagName) async {
    var store = context.read<MarchentStoresBloc>().state.store;
    var customOrderTags = store?.customOrderTags ?? <CustomOrderTag>[];
    var customOrderTagHistories = order.customOrderTagHistories;

    await showDialog(
      context: context,
      builder: (context) {
        CustomOrderTagHistory? tag = customOrderTagHistories.where((element) => element.tag.name == tagName).firstOrNull;
        var noteController = TextEditingController(text: tag?.note);
        var createdAtController = TextEditingController(text: (tag?.createdAt ?? DateTime.now()).toString());

        return StatefulBuilder(builder: (context, setState) {
          return FormDailog(
            title: const Text('تسمية الطلب'),
            builder: (context, error) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (error != null) ...[
                    AlertCard.error(
                      title: Text(error.messages.join("\n")),
                    ),
                    const SizedBox(height: 8),
                  ],
                  // DropdownButtonFormField<CustomOrderTagHistory?>(
                  //   decoration: InputDecoration(
                  //     labelText: 'التسمية',
                  //     prefixIcon: Icon(Ionicons.pricetag_outline),
                  //   ),
                  //   value: tag,
                  //   validator: FormBuilderValidators.compose([
                  //     FormBuilderValidators.required(),
                  //   ]),
                  //   items: [
                  //     // if (tag != null && !customOrderTagHistories.any((e) => e == tag))
                  //     //   DropdownMenuItem(
                  //     //     value: tag,
                  //     //     child: Text(tag!.tag.name),
                  //     //   ),
                  //     for (var item in customOrderTagHistories)
                  //       DropdownMenuItem(
                  //         value: item,
                  //         child: Text(item.tag.name),
                  //       ),
                  //   ],
                  //   onChanged: (value) {
                  //     setState(() {
                  //       tag = value;
                  //     });
                  //   },
                  // ),
                  // const SizedBox(height: 8),
                  TextFormField(
                    controller: noteController,
                    decoration: InputDecoration(
                      labelText: 'ملاحظة',
                      prefixIcon: Icon(Ionicons.document_text_outline),
                    ),
                  ),
                  const SizedBox(height: 8),
                  // createdAt
                  TextFormField(
                    controller: createdAtController,
                    decoration: InputDecoration(
                      labelText: 'تاريخ',
                      prefixIcon: Icon(Ionicons.calendar_outline),
                    ),
                  ),
                ],
              );
            },
            onSubmitted: () async {
              try {
                await ff.orders.update(
                  id: order.id,
                  data: OrderUpdate(
                    storeId: order.storeId,
                    metadata: {
                      ...order.metadata,
                      'customOrderTagHistories': [
                        // CustomOrderTagHistory(
                        //   tag: tag!.tag,
                        //   note: noteController.text,
                        //   createdAt: DateTime.parse(createdAtController.text),
                        // ),
                        ...customOrderTagHistories.map((e) {
                          if (e.tag.name == tagName) {
                            return CustomOrderTagHistory(
                              tag: e.tag,
                              note: noteController.text,
                              createdAt: DateTime.parse(createdAtController.text),
                            );
                          }
                          return e;
                        }),
                      ].map((e) => e.toJson()).toList(),
                    },
                  ),
                );
                // _load();
                context.showSuccessSnackBar(
                  Text('تم تسمية الطلب بنجاح'),
                );
              } on FeeefValidationException catch (e) {
                context.showErrorSnackBar(
                  Text(e.messages.join("\n")),
                );
              } catch (e) {
                context.showErrorSnackBar(
                  Text(e.toString()),
                );
              }
            },
            actionIcon: Icon(Icons.save),
            actionText: Text(t.general.save),
            actionBuilder: (context, onSubmitted) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // delete
                  ElevatedButton(
                    // red
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () async {
                      try {
                        await ff.orders.update(
                          id: order.id,
                          data: OrderUpdate(
                            storeId: order.storeId,
                            metadata: {
                              ...order.metadata,
                              'customOrderTagHistories': [
                                ...customOrderTagHistories.where((e) => e.tag.name != tagName).map((e) => e.toJson()).toList(),
                              ],
                            },
                          ),
                        );
                        // _load();
                        // pop
                        Navigator.of(context).pop();
                        context.showSuccessSnackBar(
                          Text('تم حذف التسمية بنجاح'),
                        );
                      } on FeeefValidationException catch (e) {
                        context.showErrorSnackBar(
                          Text(e.messages.join("\n")),
                        );
                      } catch (e) {
                        context.showErrorSnackBar(
                          Text(e.toString()),
                        );
                      }
                    },
                    child: Text(t.general.delete),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: onSubmitted,
                    child: Text(t.general.save),
                  ),
                ],
              );
            },
          );
        });
      },
    );
  }

  // show dialog to add custom order tags
  // this show avalble tags using from dropdown
  // and the optional note and a text form input by defealt pointed to current date
  void _addCustomOrderTagsHistories(Order order) async {
    var store = context.read<MarchentStoresBloc>().state.store;
    var customOrderTags = store?.customOrderTags ?? <CustomOrderTag>[];
    var customOrderTagHistories = order.customOrderTagHistories;

    await showDialog(
      context: context,
      builder: (context) {
        CustomOrderTag? tag;
        var noteController = TextEditingController();
        var createdAtController = TextEditingController(text: DateTime.now().toString());

        return StatefulBuilder(builder: (context, setState) {
          return FormDailog(
            title: const Text('تسمية الطلب'),
            builder: (context, error) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (error != null) ...[
                    AlertCard.error(
                      title: Text(error.messages.join("\n")),
                    ),
                    const SizedBox(height: 8),
                  ],
                  DropdownButtonFormField<CustomOrderTag>(
                    decoration: InputDecoration(
                      labelText: 'التسمية',
                      prefixIcon: Icon(Ionicons.pricetag_outline),
                    ),
                    value: tag,
                    items: customOrderTags.map((e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Text(e.name),
                      );
                    }).toList(),
                    onChanged: (value) {
                      tag = value;
                      setState(() {});
                    },
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: noteController,
                    decoration: InputDecoration(
                      labelText: 'ملاحظة',
                      prefixIcon: Icon(Ionicons.document_text_outline),
                    ),
                  ),
                  const SizedBox(height: 8),
                  // createdAt
                  TextFormField(
                    controller: createdAtController,
                    decoration: InputDecoration(
                      labelText: 'تاريخ',
                      prefixIcon: Icon(Ionicons.calendar_outline),
                    ),
                  ),
                ],
              );
            },
            onSubmitted: () async {
              try {
                await ff.orders.update(
                  id: order.id,
                  data: OrderUpdate(
                    storeId: order.storeId,
                    metadata: {
                      ...order.metadata,
                      'customOrderTagHistories': [
                        ...customOrderTagHistories,
                        CustomOrderTagHistory(
                          tag: tag!,
                          note: noteController.text,
                          createdAt: DateTime.parse(createdAtController.text),
                        ),
                      ].map((e) => e.toJson()).toList(),
                    },
                  ),
                );
                context.showSuccessSnackBar(
                  Text('تم تسمية الطلب بنجاح'),
                );
              } on FeeefValidationException catch (e) {
                context.showErrorSnackBar(
                  Text(e.messages.join("\n")),
                );
              } catch (e) {
                context.showErrorSnackBar(
                  Text(e.toString()),
                );
              }
            },
            actionIcon: Icon(Icons.save),
            actionText: Text(t.general.save),
          );
        });
      },
    );
  }

  late final size = MediaQuery.sizeOf(context);

  late List<FableField<Order>> fields = [
    // photo
    FableField<Order>(
      label: const Text('الطلب'),
      priority: 20,
      visible: true,
      config: FlexTableItemConfig.flex(2),
      builder: (value) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              minTileHeight: 0,
              minVerticalPadding: 0,
              style: ListTileStyle.drawer,
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if ((value?.metadata["note"] as String?)?.nullIfEmpty != null) ...[
                    const SizedBox(width: 8),
                    searchQuery == null
                        ? Text(
                            value!.metadata["note"],
                            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                  fontSize: 10,
                                  color: Colors.orange,
                                ),
                          )
                        : highlightMatchedText(
                            Theme.of(context).textTheme.labelSmall!.copyWith(
                                  fontSize: 10,
                                  color: Colors.orange,
                                ),
                            value!.metadata["note"],
                            searchQuery!),
                  ],
                  Row(
                    children: [
                      value == null ? TextPlaceholder() : Text(value.customerName ?? "بدون إسم"),

                      if (value != null) ...[
                        const SizedBox(width: 8),
                        searchQuery == null
                            ? Text(
                                value.customerPhone,
                                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                      fontSize: 10,
                                      color: Colors.blue,
                                    ),
                              )
                            : highlightMatchedText(
                                Theme.of(context).textTheme.labelSmall!.copyWith(
                                      fontSize: 10,
                                      color: Colors.blue,
                                    ),
                                value.customerPhone,
                                searchQuery!),
                      ],
                      // if (value != null) ...[
                      //   const SizedBox(width: 4),
                      //   FeBadge(color: Colors.blue, child: Text(value!.customerPhone)),
                      // ],
                    ],
                  ),
                ],
              ),
              subtitle: value == null ? TextPlaceholder() : Text(timeago.format(value!.createdAt)),
            ),
            const SizedBox(height: 4),
            if (value == null)
              TextPlaceholder()
            else
              Builder(
                builder: (context) {
                  var colorScheme = ColorScheme.fromSeed(seedColor: value.status.color, brightness: Theme.of(context).colorScheme.brightness);
                  return Wrap(
                    spacing: 3,
                    runSpacing: 3,
                    children: [
                      MenuAnchor(
                        builder: (context, controller, _) {
                          return SizedBox(
                            height: 30,
                            child: FilledButton.icon(
                              style: Theme.of(context).filledButtonTheme.style!.copyWith(
                                    backgroundColor: WidgetStateProperty.all([
                                      OrderStatus.completed.name,
                                    ].contains(value.status.name)
                                        ? value.status.color
                                        : colorScheme.primaryContainer),
                                    minimumSize: WidgetStateProperty.all(Size.square(30)),
                                    padding: WidgetStateProperty.all(EdgeInsetsDirectional.only(start: 8, end: 8)),
                                    visualDensity: VisualDensity.standard,
                                    textStyle: WidgetStateProperty.all(Theme.of(context).textTheme.labelSmall!.copyWith(color: colorScheme.primary)),
                                    shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                              onPressed: () {
                                if (controller.isOpen) {
                                  controller.close();
                                } else {
                                  controller.open();
                                }
                              },
                              label: value?.ecotrackData != null
                                  ? Assets.integrations.ecotrack.logo.image(
                                      height: 10,
                                      color: [
                                        OrderStatus.completed.name,
                                      ].contains(value.status.name)
                                          ? colorScheme.primaryContainer
                                          : colorScheme.primary)
                                  : value?.procolisData != null
                                      ? Assets.integrations.procolis.logo.image(
                                          height: 10,
                                          color: [
                                            OrderStatus.completed.name,
                                          ].contains(value.status.name)
                                              ? colorScheme.primaryContainer
                                              : colorScheme.primary)
                                      :
                                        value?.yalidineData != null
                                          ? Assets.integrations.yalidine.logo.image(
                                              height: 10,
                                              color: [
                                                OrderStatus.completed.name,
                                              ].contains(value.status.name)
                                                  ? colorScheme.primaryContainer
                                                  : colorScheme.primary)
                                          :
                                  
                                   Text(
                                      switch (value.status) {
                                        OrderStatus.draft => t.orders.status.draft,
                                        OrderStatus.pending => t.orders.status.pending,
                                        OrderStatus.completed => t.orders.status.completed,
                                        OrderStatus.processing => t.orders.status.processing,
                                        OrderStatus.cancelled => t.orders.status.cancelled,
                                      },
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: [
                                            OrderStatus.completed.name,
                                          ].contains(value.status.name)
                                              ? colorScheme.primaryContainer
                                              : colorScheme.primary),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                              // icon: Icon(
                              //   value.status.icon,
                              //   size: 18,
                              // ),
                            ),
                          );
                        },
                        menuChildren: [
                          for (var status in OrderStatus.values)
                            ListTile(
                              leading: Icon(
                                status.icon,
                                color: status.color,
                              ),
                              enabled: status != value.status,
                              title: Text(switch (status) {
                                    OrderStatus.draft => t.orders.status.draft,
                                    OrderStatus.pending => t.orders.status.pending,
                                    OrderStatus.completed => t.orders.status.completed,
                                    OrderStatus.processing => t.orders.status.processing,
                                    OrderStatus.cancelled => t.orders.status.cancelled,
                                  } +
                                  (value?.ecotrackData != null && status == value.status ? "\n(Ecotrack)" : "")),
                              onTap: status == value.status
                                  ? null
                                  : () {
                                      context.read<OrdersBloc>().add(
                                            OrdersEvent.update(
                                              orderId: value.id,
                                              order: OrderUpdate(
                                                storeId: value.storeId,
                                                status: status,
                                              ),
                                            ),
                                          );
                                    },
                            ),
                        ],
                      ),
                      for (var tag in value.customOrderTagHistories)
                        Builder(builder: (context) {
                          final color = customOrderTags.where((element) => element.name == tag.tag.name).firstOrNull?.color ?? tag.tag.color;
                          final textColor = color != null && color.computeLuminance() > 0.5 ? Colors.black : Colors.white;
                          return SizedBox(
                            height: 30,
                            child: FilledButton(
                              style: Theme.of(context).filledButtonTheme.style!.copyWith(
                                    iconColor: WidgetStateProperty.all(textColor),
                                    minimumSize: WidgetStateProperty.all(Size.square(30)),
                                    padding: WidgetStateProperty.all(EdgeInsetsDirectional.only(start: 6, end: 6)),
                                    textStyle: WidgetStateProperty.all(Theme.of(context).textTheme.labelSmall!.copyWith(color: color)),
                                    visualDensity: VisualDensity.standard,
                                    shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        side: BorderSide(color: color!),
                                      ),
                                    ),
                                    backgroundColor: WidgetStateProperty.all(color),
                                    foregroundColor: WidgetStateProperty.all(
                                      textColor,
                                    ),
                                  ),
                              onPressed: () {
                                _editCustomOrderTagsHistories(value, tag.tag.name);
                              },
                              // backgroundColor: value.status.color,
                              child: Text(tag.tag.name),
                              // icon: Icon(
                              //   Ionicons.pricetag_outline,
                              //   size: 18,
                              // ),
                            ),
                          );
                        }),
                      MenuAnchor(
                        builder: (context, controller, _) {
                          return Tooltip(
                            message: "يمكنك إضافة تسميات جديدة من الإعدادات",
                            child: isSm(MediaQuery.sizeOf(context).width)
                                ? SizedBox.square(
                                    dimension: 30,
                                    child: OutlinedButton(
                                      style: Theme.of(context).outlinedButtonTheme.style!.copyWith(
                                            // backgroundColor: WidgetStateProperty.all(colorScheme.primary),
                                            minimumSize: WidgetStateProperty.all(Size.square(30)),
                                            padding: WidgetStateProperty.all(EdgeInsetsDirectional.only(start: 5, end: 5)),
                                            textStyle: WidgetStateProperty.all(Theme.of(context).textTheme.labelSmall!),
                                            visualDensity: VisualDensity.standard,
                                            shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                                          ),
                                      onPressed: () {
                                        // _addCustomOrderTagsHistories(value);
                                        if (controller.isOpen) {
                                          controller.close();
                                        } else {
                                          controller.open();
                                        }
                                      },
                                      // backgroundColor: value.status.color,
                                      child: Icon(
                                        Icons.add,
                                        size: 18,
                                      ),
                                    ),
                                  )
                                : SizedBox(
                                    height: 30,
                                    child: OutlinedButton.icon(
                                      style: Theme.of(context).outlinedButtonTheme.style!.copyWith(
                                            // backgroundColor: WidgetStateProperty.all(colorScheme.primary),
                                            minimumSize: WidgetStateProperty.all(Size.square(30)),
                                            padding: WidgetStateProperty.all(EdgeInsetsDirectional.only(start: 5, end: 10)),
                                            textStyle: WidgetStateProperty.all(Theme.of(context).textTheme.labelSmall!),
                                            visualDensity: VisualDensity.standard,
                                            shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                                          ),
                                      onPressed: () {
                                        // _addCustomOrderTagsHistories(value);
                                        if (controller.isOpen) {
                                          controller.close();
                                        } else {
                                          controller.open();
                                        }
                                      },
                                      // backgroundColor: value.status.color,
                                      label: Text("تسمية"),
                                      icon: Icon(
                                        Icons.add,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                          );
                        },
                        menuChildren: [
                          for (var tag in customOrderTags)
                            if (!value.customOrderTagHistories.any((e) => e.tag.name == tag.name))
                              ListTile(
                                leading: Icon(
                                  Ionicons.pricetag_outline,
                                  color: tag.color,
                                ),
                                title: Text(tag.name),
                                onTap: () async {
                                  await ff.orders.update(
                                    id: value.id,
                                    data: OrderUpdate(
                                      storeId: value.storeId,
                                      metadata: {
                                        ...value.metadata,
                                        'customOrderTagHistories': [
                                          ...value.customOrderTagHistories,
                                          CustomOrderTagHistory(
                                            tag: tag,
                                            note: null,
                                            createdAt: DateTime.now(),
                                          ),
                                        ].map((e) => e.toJson()).toList(),
                                      },
                                    ),
                                  );
                                },
                              ),
                        ],
                      ),
                      if (value.metadata["note"] != null) ...[
                        // AlertCard.warning(
                        //   icon: Icon(Ionicons.chatbubble_ellipses_outline),
                        //   title:
                        // Text(value.metadata["note"]),
                        // ),
                        // const SizedBox(
                        //   height: 8,
                        //   child: Divider(),
                        // ),
                        // Row(
                        //   children: [
                        //     Icon(
                        //       Ionicons.chatbubble_ellipses_outline,
                        //       size: 15,
                        //     ),
                        //     const SizedBox(width: 4),
                        //     Text(
                        //       value!.metadata["note"],
                        //       style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6)),
                        //       maxLines: 1,
                        //       overflow: TextOverflow.ellipsis,
                        //     ),
                        //   ],
                        // ),
                      ]
                    ],
                  );
                },
              ),
            ForScreen(
              

              sm:  Text('${value?.items.map((e)=>"${e.productName.substring(0,min(7, e.productName.length))}... ${e.variantPath ?? ""}").join("\n")}'),
            )

          ],
        );
      },
    ),
    FableField<Order>(
      label: const Text('السلة'),
      priority: 11,
      visible: true,
      config: FlexTableItemConfig.flex(1),
      builder: (value) => value == null ? TextPlaceholder() : Text(value.items.map((e)=>"${e.productName.substring(0,min(7, e.productName.length))}... ${e.variantPath ?? ""}").join("\n")),
    ),
    // products
    FableField<Order>(
      label: const Text('المجموع'),
      priority: 11,
      visible: true,
      config: FlexTableItemConfig.flex(1),
      builder: (value) => value == null ? TextPlaceholder() : Text('${value.total}${t.general.defaultCurrency.symbol}'),
    ),
    FableField<Order>(
      label: const Text('الشحن'),
      priority: 10,
      visible: true,
      config: FlexTableItemConfig.flex(1),
      builder: (value) {
        if (value == null) return TextPlaceholder();
        String state, city;
        var stateIndex = int.tryParse(value.shippingState ?? "");
        state = stateIndex != null ? t.states.elementAtOrNull(stateIndex - 1) ?? "??" : "??";
        var cityIndex = stateIndex == null ? null : int.tryParse(value.shippingCity ?? "");
        city = cityIndex != null ? t.cities.elementAtOrNull(stateIndex! - 1)?.elementAtOrNull(cityIndex - 1) ?? "??" : "??";

        return Text(
          "${value?.shippingPrice}da\n"
          '$state, $city',
        );
      },
    ),

    FableField<Order>(
      label: const Text('تاريخ الطلب'),
      priority: 9,
      visible: true,
      config: FlexTableItemConfig.flex(1),
      builder: (value) => value == null
          ? TextPlaceholder()
          : Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  timeago.format(value.createdAt, locale: 'ar'),
                ),
                Text(
                  // timeago.format(value.createdAt ?? DateTime.now(), locale: 'ar'),
                  DateFormat('yyyy-MM-dd').format(value.createdAt),
                  style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6)),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
    ),
  ];

  List<FableField<Order>> get activeFields {
    // return fields.where((element) => element.visible).toList();
    var width = MediaQuery.sizeOf(context).width;
    var vfields = fields.where((element) => element.visible).toList();
    // sort by priority
    vfields.sort((a, b) => b.priority.compareTo(a.priority));
    var maxToShow = forScreen<int>(
      width: width,
      sm: 1,
      md: 3,
      lg: 5,
      xl: 6,
    )!;
    return [
      ...vfields.take(maxToShow).toList(),
      // call (customerPhone)
      // FableField<Order>(
      //   label: Text("الحالة"),
      //   priority: 100,
      //   visible: true,
      //   config: FlexTableItemConfig.flex(1),
      //   builder: (value) {
      //     // show chip with the color of the status, when click on it use dropdown to show menu of options
      //     return value == null
      //         ? TextPlaceholder()
      //         : MenuAnchor(
      //             builder: (context, controller, _) => Align(
      //               alignment: AlignmentDirectional.centerStart,
      //               child: OutlinedButton.icon(
      //                 style: Theme.of(context).outlinedButtonTheme.style!.copyWith(
      //                       minimumSize: WidgetStateProperty.all(Size.square(35)),
      //                       padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 4)),
      //                       textStyle: WidgetStateProperty.all(TextStyle(fontSize: 14)),
      //                     ),
      //                 onPressed: () {
      //                   if (controller.isOpen) {
      //                     controller.close();
      //                   } else {
      //                     controller.open();
      //                   }
      //                 },
      //                 // backgroundColor: value.status.color,
      //                 label: Text(value.status.name.toUpperCase()),
      //                 icon: Container(
      //                   // cirlc
      //                   decoration: BoxDecoration(
      //                     shape: BoxShape.circle,
      //                     color: value.status.color,
      //                   ),
      //                   child: const Icon(
      //                     Ionicons.chevron_down_outline,
      //                     color: Colors.white,
      //                     size: 18,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //             menuChildren: [
      //               for (var status in OrderStatus.values)
      //                 ListTile(
      //                   title: Text(status.toString().split('.').last),
      //                   onTap: () {
      //                     context.read<OrdersBloc>().add(
      //                           OrdersEvent.update(
      //                             orderId: value.id,
      //                             order: OrderUpdate(
      //                               storeId: value.storeId,
      //                               status: status,
      //                             ),
      //                           ),
      //                         );
      //                   },
      //                 ),
      //             ],
      //           );
      //   },
      // ),
      // call (customerPhone)
      // FableField<Order>(
      //   label: const Icon(Ionicons.call_outline),
      //   priority: 100,
      //   visible: true,
      //   config: FlexTableItemConfig.square(40),
      //   builder: (value) => IconButton(
      //     icon: IconButton(
      //       padding: EdgeInsets.zero,
      //       icon: const Icon(Ionicons.call_outline),
      //       onPressed: () async {
      //         try {
      //           if (value?.customerPhone != null) {
      //             await launchUrlString('tel:${value!.customerPhone}');
      //           }
      //         } catch (e) {
      //           context.showErrorSnackBar(
      //             Text(e.toString()),
      //           );
      //         }
      //       },
      //     ),
      //     onPressed: () {
      //       // context.go('${GoRouterState.of(context).uri.path}/create');
      //     },
      //   ),
      // ),
      FableField<Order>(
        label: MenuAnchor(
          builder: (context, controller, _) => IconButton(
            icon: const Icon(Ionicons.filter_outline),
            onPressed: () {
              // context.go('${GoRouterState.of(context).uri.path}/create');
              if (controller.isOpen) {
                controller.close();
              } else {
                controller.open();
              }
            },
          ),
          menuChildren: [
            for (var i = 0; i < fields.length; i++)
              CheckboxListTile(
                title: fields[i].label,
                value: fields[i].visible,
                onChanged: (value) {
                  setState(() {
                    fields[i] = fields[i].copyWith(visible: value!);
                  });
                },
              ),
          ],
        ),
        priority: 100,
        visible: true,
        config: FlexTableItemConfig.square(40),
        builder: (value) => MenuAnchor(
          builder: (context, controller, _) => IconButton(
            icon: const Icon(Ionicons.ellipsis_vertical),
            onPressed: () {
              if (controller.isOpen) {
                controller.close();
              } else {
                controller.open();
              }
            },
          ),
          menuChildren: [
            // call customer
            ListTile(
              title: const Text('إتصال بالعميل'),
              leading: const Icon(Ionicons.call_outline),
              onTap: () async {
                try {
                  if (value?.customerPhone != null) {
                    await launchUrlString('tel:${value!.customerPhone}');
                  }
                } catch (e) {
                  context.showErrorSnackBar(
                    Text(e.toString()),
                  );
                }
              },
            ),
            Divider(),
            // send to delivery service (ecotrack and yalidin, procolis)
            if (![
              OrderStatus.cancelled,
              OrderStatus.completed
            ].contains(value?.status))
              BlocBuilder<MarchentStoresBloc, MarchentStoresState>(
                builder: (context, state) {
                  var yalidin = state.store?.integrations.yalidine;
                  var ecotrack = state.store?.integrations.echotrak;
                  var procolis = state.store?.integrations.procolis;
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (value!.deliveryData == null) ...[
                        // yalidin
                        if (yalidin?.active == true)
                          ListTile(
                            enabled: false,
                            title: const Text('إرسال إلى يالدين'),
                            leading: const Icon(Ionicons.send_outline),
                            onTap: () {
                              // showSendToYalidinDialog(
                              //   context
                              //   store: state.store!,
                              //   order: value!
                              // );
                            },
                          ),
                        // ecotrack
                        if (ecotrack?.active == true)
                          ListTile(
                            title: const Text('إرسال إلى ايكوتراك'),
                            leading: const Icon(Ionicons.send_outline),
                            onTap: () {
                              // send to ecotrack
                              showSendToEchotrakDialog(
                                context,
                                store: state.store!,
                                order: value!,
                              );
                            },
                          ),
                        // procolis
                        if (procolis?.active == true)
                          ListTile(
                            title: const Text('إرسال إلى بروكوليس'),
                            leading: const Icon(Ionicons.send_outline),
                            onTap: () {
                              // send to procolis
                              showSendToProcolisDialog(
                                context,
                                store: state.store!,
                                order: value!,
                              );
                            },
                          ),
                      ] else ...[
                        if (value!.ecotrackData != null) ...[
                          // print the ticket (open url)

                          ListTile(
                            title: const Text('طباعة الملصق (ecotrack)'),
                            leading: const Icon(Ionicons.send_outline),
                            onTap: () {
                              // https://msmgo.ecotrack.dz/download/etiq/EC4GPH240725182179
                              launchUrlString("${state.store!.integrations.echotrak!.baseUrl}/download/etiq/${value!.ecotrackTrackingId}");
                            },
                          ),
                          ListTile(
                            title: const Text('فتخ (ecotrack)'),
                            leading: const Icon(Ionicons.send_outline),
                            onTap: () {
                              // https://msmgo.ecotrack.dz/download/etiq/EC4GPH240725182179
                              launchUrlString("${state.store!.integrations.echotrak!.baseUrl}/validation/orders");
                            },
                          ),
                          // deattach ecotrack
                          ListTile(
                            title: const Text('إلغاء الربط مع (ecotrack)'),
                            leading: const Icon(Ionicons.close_circle_outline),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return FormDailog(
                                    title: const Text('إلغاء الربط مع ecotrack'),
                                    builder: (context, error) {
                                      return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          if (error != null) ...[
                                            AlertCard.error(
                                              title: Text(error.messages.join("\n")),
                                            ),
                                            const SizedBox(height: 8),
                                          ],
                                          Text('هل أنت متأكد من إلغاء الربط'),
                                        ],
                                      );
                                    },
                                    onSubmitted: () async {
                                      var service = EchotrakDeliveryService(client: Dio(), integration: state.store!.integrations.echotrak!);
                                      try {
                                        await service.detach(order: value);
                                        context.showSuccessSnackBar(
                                          Text('تم إلغاء الربط بنجاح'),
                                        );
                                      } on FeeefValidationException catch (e) {
                                        context.showErrorSnackBar(
                                          Text(e.messages.join("\n")),
                                        );
                                      } catch (e) {
                                        context.showErrorSnackBar(
                                          Text(e.toString()),
                                        );
                                      }
                                    },
                                    actionIcon: Icon(Icons.delete),
                                    actionText: const Text('إلغاء الإرسال'),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                        if (value!.procolisData != null) ...[
                          // deattach procolis
                          ListTile(
                            title: const Text('إلغاء الربط مع (procolis)'),
                            leading: const Icon(Ionicons.close_circle_outline),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return FormDailog(
                                    title: const Text('إلغاء الربط مع procolis'),
                                    builder: (context, error) {
                                      return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          if (error != null) ...[
                                            AlertCard.error(
                                              title: Text(error.messages.join("\n")),
                                            ),
                                            const SizedBox(height: 8),
                                          ],
                                          Text('هل أنت متأكد من إلغاء الربط'),
                                        ],
                                      );
                                    },
                                    onSubmitted: () async {
                                      var service = ProcolisDeliveryService(client: Dio(), integration: state.store!.integrations.procolis!);
                                      try {
                                        await service.detach(order: value);
                                        context.showSuccessSnackBar(
                                          Text('تم إلغاء الربط بنجاح'),
                                        );
                                      } on FeeefValidationException catch (e) {
                                        context.showErrorSnackBar(
                                          Text(e.messages.join("\n")),
                                        );
                                      } catch (e) {
                                        context.showErrorSnackBar(
                                          Text(e.toString()),
                                        );
                                      }
                                    },
                                    actionIcon: Icon(Icons.delete),
                                    actionText: const Text('إلغاء الإرسال'),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ]
                    ],
                  );
                },
              ),

            // add note
            // ListTile(
            //   title: const Text('أظف ملاحظة'),
            //   leading: const Icon(Ionicons.chatbubbles_outline),
            //   onTap: () {
            //     // _addNoteDialog(value);
            //   },
            // ),
            Divider(),
            ListTile(
              title: const Text('تعديل'),
              leading: const Icon(Ionicons.pencil),
              onTap: () {
                context.go("${GoRouterState.of(context).uri.path}/${value?.id}");
              },
            ),
            ListTile(
              title: const Text('حذف'),
              leading: const Icon(Ionicons.trash),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return FormDailog(
                      title: const Text('حذف الطلب'),
                      builder: (context, error) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (error != null) ...[
                              AlertCard.error(
                                title: Text(error.messages.join("\n")),
                              ),
                              const SizedBox(height: 8),
                            ],
                            Text('هل أنت متأكد من حذف الطلب؟\nهذا الإجراء نهائي لا يمكن التراجع عنه.'),
                          ],
                        );
                      },
                      onSubmitted: () async {
                        await Future.delayed(const Duration(seconds: 1));
                        await ff.orders.delete(id: value!.id);

                        context.showSuccessSnackBar(
                          Text('تم حذف الطلب بنجاح'),
                        );
                      },
                      actionIcon: Icon(Icons.delete),
                      actionText: const Text('حذف'),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    ];
  }

  String? get searchQuery => _searchController.text.toLowerCase().trim().nullIfEmpty;

  // filtered
  final _searchController = TextEditingController();
  List<Order>? _filteredOrders(List<Order> _orders) {
    if (selectedStatus != null) {
      _orders = _orders.where((element) => element.status.name == selectedStatus!.name).toList();
    }
    if (deliveryService != null) {
      _orders = _orders.where((element) {
        return element.deliveryData != null && element.deliveryData!["service"] == deliveryService!.name;
      }).toList();
    }
    if (searchQuery == null) {
      return _orders;
    }
    return _orders
        .where(
          (element) => (element.customerName?.toLowerCase().contains(searchQuery!) == true) || (element.customerPhone.contains(searchQuery!) == true || (element.metadata["note"] as String?)?.contains(searchQuery!) == true),
        )
        .toList();
  }

  @override
  void initState() {
    super.initState();
    _load();
  }

  void _load() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var params = GoRouterState.of(context).pathParameters;
      var storeId = params['storeId']!;
      context.read<OrdersBloc>().add(OrdersEvent.load(storeId: storeId, page: 1));
    });
  }

  // load more
  void _loadMore(int nextPage) async {
    context.read<OrdersBloc>().add(OrdersEvent.load(storeId: GoRouterState.of(context).pathParameters['storeId']!, page: nextPage));
  }

  void listener(BuildContext context, OrdersState state) {
    if (state.status == FetchStatus.error) {
      print(state);
    }
  }

  // _cardStyleBuilder
  // Widget _cardStyleBuilder(
  //   BuildContext context, {
  //   Order? order,
  // }) {
  //   return Card(
  //     child: Padding(
  //       padding: const EdgeInsets.all(8),
  //       child: FlexTable(
  //         configs: activeFields.map((e) => e.config).toList(),
  //         children: [
  //           for (var field in activeFields)
  //             field.builder(order),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  StoreSummary? get summary => context.read<MarchentStoresBloc>().state.summary;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;

    return BlocConsumer<OrdersBloc, OrdersState>(
      listener: listener,
      builder: (context, state) {
        List<Order>? filteredOrders = state.orders != null ? _filteredOrders(state.orders!) : null;
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            tooltip: 'إضافة طلب',
            onPressed: () {
              context.go('${GoRouterState.of(context).uri.path}/create');
            },
            child: const Icon(Ionicons.add),
          ),
          body: FlexTable(
            gap: 0,
            // selectable: true,
            configs: activeFields.map((e) => e.config).toList(),
            child: RefreshIndicator.adaptive(
              onRefresh: () async {
                _load();
              },
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    leadingWidth: kMinInteractiveDimension,
                    titleSpacing: 0,
                    // centerTitle: false,
                    title: Row(
                      children: [
                        Text(t.dashboard.sections.orders.label),
                        const SizedBox(width: 8),
                        // count
                        if (state.total != null)
                          Text(
                            ' (${state.total})',
                            style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6)),
                          )
                        else
                          TextPlaceholder(
                            width: 30,
                          ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: forScreen<double>(
                                  width: width,
                                  lg: 250,
                                  xl: 300,
                                )!,
                              ),
                              height: 35,
                              child: TextField(
                                controller: _searchController,
                                style: TextStyle(fontSize: 14),
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: 'مثال: رقم الهاتف..',
                                  labelText: t.dashboard.sections.orders.search,
                                  prefixIcon: const Icon(Icons.search, size: 25),
                                ),
                                onChanged: (value) {
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    floating: true,
                    snap: true,
                    flexibleSpace: SizedBox(),
                    bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(48),
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          width: double.infinity,
                          // color: Colors.red,
                          height: 35,
                          child: Row(
                            children: [
                              Expanded(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    // date filter (open menu ancher, show, last 24h|last week|last month)
                                    MenuAnchor(
                                      builder: (context, controller, _) => IconButton(
                                        icon: const Icon(
                                          Ionicons.calendar_outline,
                                          size: 20,
                                        ),
                                        onPressed: () {
                                          if (controller.isOpen) {
                                            controller.close();
                                          } else {
                                            controller.open();
                                          }
                                        },
                                      ),
                                      menuChildren: [
                                        // lastHour
                                        MenuItemButton(
                                          child: Text("last 2h".titleCase),
                                          onPressed: () {
                                            var after = DateTime.now().subtract(const Duration(hours: 2));
                                            context.read<OrdersBloc>().add(
                                                  OrdersEvent.load(
                                                    storeId: GoRouterState.of(context).pathParameters['storeId']!,
                                                    page: 1,
                                                    createdAfter: after,
                                                  ),
                                                );
                                          },
                                        ),

                                        MenuItemButton(
                                          child: Text("last24h".titleCase),
                                          onPressed: () {
                                            var after = DateTime.now().subtract(const Duration(days: 1));
                                            context.read<OrdersBloc>().add(
                                                  OrdersEvent.load(
                                                    storeId: GoRouterState.of(context).pathParameters['storeId']!,
                                                    page: 1,
                                                    createdAfter: after,
                                                  ),
                                                );
                                          },
                                        ),
                                        MenuItemButton(
                                          child: Text("lastWeek".titleCase),
                                          onPressed: () {
                                            var after = DateTime.now().subtract(const Duration(days: 7));
                                            context.read<OrdersBloc>().add(
                                                  OrdersEvent.load(
                                                    storeId: GoRouterState.of(context).pathParameters['storeId']!,
                                                    page: 1,
                                                    createdAfter: after,
                                                  ),
                                                );
                                          },
                                        ),
                                        MenuItemButton(
                                          child: Text("lastMonth".titleCase),
                                          onPressed: () {
                                            var after = DateTime.now().subtract(const Duration(days: 30));
                                            context.read<OrdersBloc>().add(
                                                  OrdersEvent.load(
                                                    storeId: GoRouterState.of(context).pathParameters['storeId']!,
                                                    page: 1,
                                                    createdAfter: after,
                                                  ),
                                                );
                                          },
                                        ),
                                        // all time
                                        MenuItemButton(
                                          child: Text("allTime".titleCase),
                                          onPressed: () {
                                            context.read<OrdersBloc>().add(
                                                  OrdersEvent.load(
                                                    storeId: GoRouterState.of(context).pathParameters['storeId']!,
                                                    page: 1,
                                                  ),
                                                );
                                          },
                                        ),
                                      ],
                                    ),
                                    // som filters
                                    if (!isMd(width)) ...[
                                      FilterChip(
                                        label: Text(t.all),
                                        onSelected: (value) {
                                          var uri = Uri(
                                            path: GoRouterState.of(context).uri.path,
                                            queryParameters: {
                                              ...GoRouterState.of(context).uri.queryParameters
                                            }..removeWhere(
                                                (key, value) => key == 'status',
                                              ),
                                          );

                                          setState(() {
                                            context.go(uri.toString());
                                          });
                                        },
                                        selected: selectedStatus == null,
                                      ),
                                      const SizedBox(width: 8),
                                      for (var status in OrderStatus.values) ...[
                                        Builder(builder: (context) {
                                          var foregroundColor = selectedStatus != status
                                              ? Theme.of(context).colorScheme.onSurface.withOpacity(0.6)
                                              : status.color.computeLuminance() > 0.5
                                                  ? Colors.black
                                                  : Colors.white;
                                          return FilterChip(
                                            avatar: selectedStatus == status ? null : Icon(status.icon),
                                            selectedColor: status.color,
                                            checkmarkColor: foregroundColor,
                                            label: Text(
                                              switch (status) {
                                                OrderStatus.draft => t.orders.status.draft + (" (${summary?.orders.draft.toString() ?? "!"})"),
                                                OrderStatus.pending => t.orders.status.pending + (" (${summary?.orders.pending.toString() ?? "!"})"),
                                                OrderStatus.completed => t.orders.status.completed + (" (${summary?.orders.completed.toString() ?? "!"})"),
                                                OrderStatus.processing => t.orders.status.processing + (" (${summary?.orders.processing.toString() ?? "!"})"),
                                                OrderStatus.cancelled => t.orders.status.cancelled + (" (${summary?.orders.cancelled.toString() ?? "!"})"),
                                              },
                                              style: TextStyle(color: foregroundColor),
                                            ),
                                            onSelected: (value) {
                                              var uri = Uri(
                                                path: GoRouterState.of(context).uri.path,
                                                queryParameters: {
                                                  ...GoRouterState.of(context).uri.queryParameters,
                                                  'status': status.name,
                                                },
                                              );
                                              setState(() {
                                                context.go(uri.toString());
                                              });
                                            },
                                            selected: selectedStatus == status,
                                          );
                                        }),
                                        const SizedBox(width: 8),
                                      ],
                                    ] else ...[
                                      MenuAnchor(
                                        builder: (context, controller, _) {
                                          return ActionChip(
                                            avatar: selectedStatus == null
                                                ? null
                                                : Icon(
                                                    selectedStatus!.icon,
                                                    color: selectedStatus!.color,
                                                  ),
                                            label: switch (selectedStatus) {
                                              OrderStatus.draft => Text(t.orders.status.draft + (" (${summary?.orders.draft.toString() ?? "!"})")),
                                              OrderStatus.pending => Text(t.orders.status.pending + (" (${summary?.orders.pending.toString() ?? "!"})")),
                                              OrderStatus.completed => Text(t.orders.status.completed + (" (${summary?.orders.completed.toString() ?? "!"})")),
                                              OrderStatus.processing => Text(t.orders.status.processing + (" (${summary?.orders.processing.toString() ?? "!"})")),
                                              OrderStatus.cancelled => Text(t.orders.status.cancelled + (" (${summary?.orders.cancelled.toString() ?? "!"})")),
                                              _ => Text("كل الحالات"),
                                            },
                                            onPressed: () {
                                              if (controller.isOpen) {
                                                controller.close();
                                              } else {
                                                controller.open();
                                              }
                                            },
                                          );
                                        },
                                        menuChildren: [
                                          MenuItemButton(
                                            child: Text("كل الحالات"),
                                            onPressed: () {
                                              Map<String, dynamic> params = {
                                                ...GoRouterState.of(context).uri.queryParameters
                                              }..removeWhere((k, v) => k == "status");
                                              var uri = Uri(
                                                path: GoRouterState.of(context).uri.path,
                                                queryParameters: params,
                                              );
                                              setState(() {
                                                context.go(uri.toString());
                                              });
                                            },
                                          ),
                                          for (var status in OrderStatus.values)
                                            MenuItemButton(
                                              leadingIcon: Icon(status.icon),
                                              child: Text(
                                                switch (status) {
                                                  OrderStatus.draft => t.orders.status.draft + (" (${summary?.orders.draft.toString() ?? "!"})"),
                                                  OrderStatus.pending => t.orders.status.pending + (" (${summary?.orders.pending.toString() ?? "!"})"),
                                                  OrderStatus.completed => t.orders.status.completed + (" (${summary?.orders.completed.toString() ?? "!"})"),
                                                  OrderStatus.processing => t.orders.status.processing + (" (${summary?.orders.processing.toString() ?? "!"})"),
                                                  OrderStatus.cancelled => t.orders.status.cancelled + (" (${summary?.orders.cancelled.toString() ?? "!"})"),
                                                },
                                              ),
                                              onPressed: () {
                                                var uri = Uri(
                                                  path: GoRouterState.of(context).uri.path,
                                                  queryParameters: {
                                                    ...GoRouterState.of(context).uri.queryParameters,
                                                    'status': status.name,
                                                  },
                                                );
                                                setState(() {
                                                  context.go(uri.toString());
                                                });
                                              },
                                            ),
                                        ],
                                      ),
                                      const SizedBox(width: 8),
                                    ],
                                    // delevery service (MenuAncher)
                                    MenuAnchor(
                                      builder: (context, controller, _) {
                                        return ActionChip(
                                          label: switch (deliveryService) {
                                              _DeliveryServiceFilter.yalidine => Assets.integrations.yalidine.logo.image(height: 20, color: Colors.red),
                                              _DeliveryServiceFilter.ecotrack => Assets.integrations.ecotrack.logo.image(height: 20, color: Colors.blue),
                                              _DeliveryServiceFilter.procolis => Assets.integrations.procolis.logo.image(height: 20, color: Colors.blueGrey),

                                            _ => Text("كل الخدمات"),
                                          },
                                          onPressed: () {
                                            if (controller.isOpen) {
                                              controller.close();
                                            } else {
                                              controller.open();
                                            }
                                          },
                                        );
                                      },
                                      menuChildren: [
                                        MenuItemButton(
                                          child: Text("كل الخدمات"),
                                          onPressed: () {
                                            Map<String, dynamic> params = {
                                              ...GoRouterState.of(context).uri.queryParameters
                                            }..removeWhere((k, v) => k == "deliveryService");
                                            var uri = Uri(
                                              path: GoRouterState.of(context).uri.path,
                                              queryParameters: params,
                                            );
                                            setState(() {
                                              context.go(uri.toString());
                                            });
                                          },
                                        ),
                                        for (var service in _DeliveryServiceFilter.values)
                                          MenuItemButton(
                                            child: switch (service) {
                                              _DeliveryServiceFilter.yalidine => Assets.integrations.yalidine.logo.image(height: 20, color: Colors.red),
                                              _DeliveryServiceFilter.ecotrack => Assets.integrations.ecotrack.logo.image(height: 20, color: Colors.blue),
                                              _DeliveryServiceFilter.procolis => Assets.integrations.procolis.logo.image(height: 20, color: Colors.blueGrey),
                                              _ => Text(service.name),
                                            },
                                            
                                            onPressed: () {
                                              var uri = Uri(
                                                path: GoRouterState.of(context).uri.path,
                                                queryParameters: {
                                                  ...GoRouterState.of(context).uri.queryParameters,
                                                  'deliveryService': service.name,
                                                },
                                              );
                                              setState(() {
                                                context.go(uri.toString());
                                              });
                                            },
                                          ),
                                      ],
                                    ),

                                    const SizedBox(width: 8),
                                  ],
                                ),
                              ),
                              // const SizedBox(width: 8),
                              // MenuAnchor(
                              //   builder: (context, controller, _) => IconButton(
                              //     icon: const Icon(Ionicons.filter_outline),
                              //     onPressed: () {
                              //       // context.go('${GoRouterState.of(context).uri.path}/create');
                              //       if (controller.isOpen) {
                              //         controller.close();
                              //       } else {
                              //         controller.open();
                              //       }
                              //     },
                              //   ),
                              //   menuChildren: [
                              //     for (var i = 0; i < fields.length; i++)
                              //       ListTile(
                              //         title: fields[i].label,
                              //         leading: Checkbox(
                              //           value: fields[i].visible,
                              //           onChanged: (value) {
                              //             // context.read<FableController>().toggleField(i);
                              //             setState(() {
                              //               fields[i] = fields[i].copyWith(visible: value!);
                              //             });
                              //           },
                              //         ),
                              //       ),
                              //   ],
                              // ),
                              // const SizedBox(width: 8),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // header (single item not in SliverList)
                  SliverPersistentHeader(
                    key: ValueKey([
                      Theme.of(context),
                      // fieldsSliced
                    ]),
                    delegate: StickyHeaderDelegate(
                        child: Stack(
                      children: [
                        Container(
                          // border bottom
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: FlexTableItem(
                              children: activeFields.map((e) => e.label).toList(),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: (state.status == FetchStatus.loading)
                              ? const LinearProgressIndicator(
                                  minHeight: 2,
                                )
                              : Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
                                ),
                        )
                      ],
                    )),
                    pinned: true,
                  ),
                  SliverList(
                    key: ValueKey([
                      filteredOrders,
                    ]),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          // if order isInjected show a border 3px in start
                          decoration: filteredOrders?[index].isInjected == true
                              ? BoxDecoration(
                                  border: BorderDirectional(
                                    start: BorderSide(color: Theme.of(context).colorScheme.primary, width: 3),
                                  ),
                                )
                              : null,
                          child: ModelTile(
                            isOdd: index.isOdd,
                            // selected: index == 2,
                            onTap: () {
                              if (filteredOrders != null) {
                                context.go("${GoRouterState.of(context).uri.path}/${filteredOrders[index].id}");
                              }
                            },
                            child: FlexTableItem(
                              children: activeFields.map((e) {
                                if (filteredOrders == null) {
                                  return e.builder(null);
                                }
                                return e.builder(filteredOrders[index]);
                              }).toList(),
                            ),
                          ),
                        );
                      },
                      childCount: filteredOrders?.length ?? 20,
                    ),
                  ),
                  // load more
                  if (state.status == FetchStatus.loading)
                    SliverToBoxAdapter(
                      child: Center(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          height: 30,
                          width: 30,
                          child: CircularProgressIndicator.adaptive(
                            strokeWidth: 2,
                          ),
                        ),
                      ),
                    )
                  else if (state.status == FetchStatus.loaded) ...[
                    if (state.hasMore)
                      SliverToBoxAdapter(
                        child: SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: TextButton.icon(
                                onPressed: () {
                                  _loadMore(
                                    (state.page ?? 1) + 1,
                                  );
                                },
                                label: Text(t.loadMore),
                                icon: Icon(Ionicons.arrow_down)),
                          ),
                        ),
                      )
                    else if (filteredOrders?.isEmpty == true)
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            const SizedBox(height: 16),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Ionicons.information_circle_outline,
                                  // size: 30,
                                  color: Colors.grey,
                                ),
                                const SizedBox(width: 8),
                                Text('لا توجد طلبات', style: Theme.of(context).textTheme.displayLarge!.copyWith(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'ستظهر الطلبات هنا عندما تقوم بإضافة طلبات جديدة',
                              style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6)),
                            ),
                          ],
                        ),
                      )
                  ],
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 80,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class FeBadge extends StatelessWidget {
  final Widget child;
  final Color color;
  const FeBadge({
    super.key,
    required this.child,
    this.color = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1),
      // rouded border Colors.purple
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color),
      ),

      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.labelSmall!.copyWith(
              fontSize: 10,
              color: color,
            ),
        child: child,
      ),
    );
  }
}

// echotrak
void showSendToEchotrakDialog(BuildContext context, {required Store store, required Order order}) {
  var service = EchotrakDeliveryService(client: Dio(), integration: store.integrations.echotrak!);

  var nom_client = order.customerName;
  var telephone = order.customerPhone;
  var telephone_2 = "";
  var adresse = order.shippingAddress?.nullIfEmpty ?? "unknown";
  var commune = [
    order.shippingState,
    order.shippingCity
  ].contains(null)
      ? "unknown"
      : getCityByCode(code: int.parse(order.shippingCity!).toString(), stateCode: int.parse(order.shippingState!).toString(), lang: AlgeriaScript.latin)?.name;
  var code_wilaya = int.tryParse(order.shippingState.toString());
  var montant = order.total;
  var remarque = order.metadata['note'];
  var produit = order.items.map((e) => e.productName).join(', ');
  var quantite = order.items.map((e) => e.quantity).join(', ');
  var boutique = store.name.trim();
  var type = 1;
  var stop_desk = order.shippingAddress?.nullIfEmpty == null ? 1 : 0;
  var can_open = false;
  var fragile = false;

  var request = EchotrakOrderCreateRequest(
    codeWilaya: code_wilaya ?? 0,
    montant: montant?.toDouble() ?? 0.0,
    remarque: remarque,
    produit: produit,
    quantite: quantite,
    boutique: boutique,
    type: type,
    stopDesk: stop_desk,
    nomClient: nom_client ?? "client",
    telephone: telephone,
    telephone2: telephone_2,
    adresse: adresse,
    commune: commune!,
    stock: 0,
    canOpen: can_open ? 1 : 0,
    weight: 0.0, // Default weight
    fragile: fragile ? 1 : 0,
    reference: order.id,
  );

  showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(builder: (context, setState) {
        return Container(
          child: FormDailog(
            title: const Text('إرسال إلى ايكوتراك'),
            builder: (context, error) {
              return SizedBox(
                width: 500,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (error != null) ...[
                        AlertCard.error(
                          title: Text(error.messages.join("\n")),
                        ),
                        const SizedBox(height: 8),
                      ],
                      // Text input for 'nom_client'
                      TextFormField(
                        initialValue: request.nomClient,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: 'إسم العميل',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: const Icon(Ionicons.location_outline),
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.maxLength(100),
                          FormBuilderValidators.required(),
                        ]),
                        onChanged: (value) => setState(() => request = request.copyWith(nomClient: value)),
                      ),
                      const SizedBox(height: 16),
                      // Text input for 'telephone'
                      TextFormField(
                        initialValue: request.telephone,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: 'هاتف العميل',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: const Icon(Ionicons.call_outline),
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.maxLength(20),
                          FormBuilderValidators.required(),
                        ]),
                        onChanged: (value) => setState(() => request = request.copyWith(telephone: value)),
                      ),
                      const SizedBox(height: 16),
                      // Text input for 'telephone_2'
                      TextFormField(
                        initialValue: request.telephone2,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: 'هاتف إضافي',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: const Icon(Ionicons.call_outline),
                        ),
                        validator: FormBuilderValidators.maxLength(20),
                        onChanged: (value) => setState(() => request = request.copyWith(telephone2: value)),
                      ),
                      const SizedBox(height: 16),
                      // Text input for 'adresse'
                      TextFormField(
                        initialValue: request.adresse,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: 'عنوان العميل',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: const Icon(Ionicons.location_outline),
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.maxLength(200),
                          FormBuilderValidators.required(),
                        ]),
                        onChanged: (value) => setState(() => request = request.copyWith(adresse: value)),
                      ),
                      const SizedBox(height: 16),
                      // Text input for 'wilaya'
                      TextFormField(
                        enabled: false,
                        readOnly: true,
                        initialValue: getStateByCode(code: request.codeWilaya.toString())?.name,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: 'الولاية',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: const Icon(Ionicons.location_outline),
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.maxLength(100),
                          FormBuilderValidators.required(),
                        ]),
                      ),
                      const SizedBox(height: 16),
                      // Text input for 'commune'
                      TextFormField(
                        enabled: false,
                        readOnly: true,
                        initialValue: request.commune,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: 'بلدية',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: const Icon(Ionicons.location_outline),
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.maxLength(100),
                          FormBuilderValidators.required(),
                        ]),
                        onChanged: (value) => setState(() => request = request.copyWith(commune: value)),
                      ),
                      const SizedBox(height: 16),
                      // Text input for 'remarque'
                      TextFormField(
                        initialValue: request.remarque,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: 'ملاحظات',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: const Icon(Ionicons.chatbox_outline),
                        ),
                        maxLines: 3,
                        validator: FormBuilderValidators.maxLength(500),
                        onChanged: (value) => setState(() => request = request.copyWith(remarque: value)),
                      ),
                      const SizedBox(height: 16),
                      // Text input for 'weight'
                      TextFormField(
                        initialValue: request.weight.toString(),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: 'الوزن بالكلغ',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: const Icon(Ionicons.scale_outline),
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.maxLength(100),
                          FormBuilderValidators.required(),
                          FormBuilderValidators.numeric(),
                        ]),
                        onChanged: (value) => setState(() => request = request.copyWith(weight: double.tryParse(value) ?? 0.0)),
                      ),
                      const SizedBox(height: 16),
                      // ListTileSwitch for 'canOpen'
                      SwitchListTile(
                        value: request.canOpen == 1,
                        secondary: const Icon(Ionicons.lock_open_outline),
                        onChanged: (value) {
                          setState(() {
                            request = request.copyWith(canOpen: value ? 1 : 0);
                          });
                        },
                        title: const Text('يمكن فتح'),
                        subtitle: const Text('حدد ما إذا كان يمكن فتح الطلب'),
                      ),
                      // ListTileSwitch for 'fragile'
                      SwitchListTile(
                        value: request.fragile == 1,
                        secondary: const Icon(Ionicons.warning_outline),
                        onChanged: (value) {
                          setState(() {
                            fragile = value;
                            request = request.copyWith(fragile: value ? 1 : 0);
                          });
                        },
                        title: const Text('قابل للكسر'),
                        subtitle: const Text('حدد ما إذا كان الطلب قابلاً للكسر'),
                      ),
                    ],
                  ),
                ),
              );
            },
            // actionText: Text("أرسال"),
            onSubmitted: () async {
              try {
                var response = await service.send(order, request);
                context.showSuccessSnackBar(
                  Text('تم إرسال الطلب إلى ايكوتراك بنجاح'),
                );
              } on FeeefValidationException catch (e) {
                context.showErrorSnackBar(
                  Text('خطأ: ${e.messages.join(', ')}'),
                );
              } on DioException catch (e) {
                context.showErrorSnackBar(
                  Text(e.message ?? 'خطأ غير معروف'),
                );
              }
            },
          ),
        );
      });
    },
  );
}

// procolis
Future<void> showSendToProcolisDialog(BuildContext context, {required Store store, required Order order}) async {
  if (store.integrations.procolis == null) context.showErrorSnackBar(Text('المتجر ليس مرتبط ببروكوليس'));
  var service = ProcolisDeliveryService(client: ff.client, integration: store.integrations.procolis!);
  try {
    var response = await service.send(order);
    print(response);
    context.showSuccessSnackBar(Text('تم إرسال الطلب إلى بروكوليس بنجاح'));
  } on FeeefValidationException catch (e) {
    context.showErrorSnackBar(Text(e.messages.join(', ')));
  } catch (e) {
    context.showErrorSnackBar(Text(e.toString()));
  }
}
