// page
import 'package:cuid2/cuid2.dart';
import 'package:dio/dio.dart';
import 'package:feeef_marchant/feeef/core/validation/validation_exception.dart';
import 'package:feeef_marchant/feeef/core/widgets/alerts.dart';
import 'package:feeef_marchant/feeef/interfaces/embadded/order_item.dart';
import 'package:feeef_marchant/feeef/interfaces/order.dart';
import 'package:feeef_marchant/feeef/orders/models/order.dart';
import 'package:feeef_marchant/feeef/products/models/product.dart';
import 'package:feeef_marchant/helpers.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/main.dart';
import 'package:feeef_marchant/src/core/algeria_cites.dart';
import 'package:feeef_marchant/src/core/enums.dart';
import 'package:feeef_marchant/src/core/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lib/lib.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../bloc/update_order_bloc.dart';

class UpdateOrderPage extends StatelessWidget {
  final String? orderId;
  const UpdateOrderPage({super.key, this.orderId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      key: ValueKey(orderId),
      create: (_) => UpdateOrderBloc(),
      child: UpdateOrderView(orderId: orderId),
    );
  }
}

// view
class UpdateOrderView extends StatefulWidget {
  final String? orderId;
  const UpdateOrderView({super.key, this.orderId});

  @override
  State<UpdateOrderView> createState() => _UpdateOrderViewState();
}

class _UpdateOrderViewState extends State<UpdateOrderView> {
  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (widget.orderId != null) {
        context.read<UpdateOrderBloc>().add(
              UpdateOrderEvent.load(orderId: widget.orderId!),
            );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BlocBuilder<UpdateOrderBloc, UpdateOrderState>(
        builder: (context, state) {
          return AnimatedSwitcher(
            key: ValueKey(state),
            duration: const Duration(milliseconds: 300),
            child: state.when(
              initial: () {
                return const _CreateOrUpdateOrder();
              },
              loading: () => const SizedBox.square(
                dimension: 30,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ),
              loaded: (order) {
                return _CreateOrUpdateOrder(order: order);
              },
              error: (exception) => Text('error: $exception'),
            ),
          );
        },
      ),
    );
  }
}

// widget _CreateOrUpdateOrder
class _CreateOrUpdateOrder extends StatefulWidget {
  final Order? order;
  const _CreateOrUpdateOrder({super.key, this.order});

  @override
  State<_CreateOrUpdateOrder> createState() => _CreateOrUpdateOrderState();
}

class _CreateOrUpdateOrderState extends State<_CreateOrUpdateOrder> {
  final _formKey = GlobalKey<FormState>();

  late final id = widget.order?.id ?? cuid();
  late final storeId = GoRouterState.of(context).pathParameters['storeId']!;
  // status
  late OrderStatus orderStatus = widget.order?.status ?? OrderStatus.draft;
  late PaymentStatus paymentStatus = widget.order?.paymentStatus ?? PaymentStatus.unpaid;
  late DeliveryStatus deliveryStatus = widget.order?.deliveryStatus ?? DeliveryStatus.pending;

  late final customerName = TextEditingController(text: widget.order?.customerName);
  late final customerPhone = TextEditingController(text: widget.order?.customerPhone);
  late final customerNote = TextEditingController(text: widget.order?.customerNote);
  // shipping
  late final shippingAddress = TextEditingController(text: widget.order?.shippingAddress);
  late final shippingCity = TextEditingController(text: widget.order?.shippingCity);
  late final shippingState = TextEditingController(text: widget.order?.shippingState);
  // note
  late final internalNote = TextEditingController(text: widget.order?.metadata["note"]);
  // manualTotal
  late final manualTotal = TextEditingController(text: widget.order?.manualTotal?.toString());

  // items (cart)
  late var items = [
    ...?widget.order?.items,
  ];

  FutureStatus status = FutureStatus.initial;
  Exception? error;

  String? getErrorMessageOf(String field) {
    if (error is FeeefValidationException) {
      return (error as FeeefValidationException).getFieldMessage(field);
    }
    return null;
  }

  void _save() async {
    setState(() {
      status = FutureStatus.inProgress;
      error = null;
    });
    try {
      if (widget.order == null) {
        await _create();
      } else {
        await _update();
      }
      status = FutureStatus.success;
    } on FeeefValidationException catch (e) {
      setState(() {
        status = FutureStatus.error;
        error = e;
      });
    } catch (e) {
      setState(() {
        status = FutureStatus.error;
        error = Exception(e.toString());
      });
    }
    setState(() {});
  }

  Future<void> _create() async {
    var order = await ff.orders.create(
      data: OrderCreate(
        id: id,
        status: orderStatus,
        paymentStatus: paymentStatus,
        deliveryStatus: deliveryStatus,
        storeId: storeId,
        customerName: customerName.text,
        customerPhone: customerPhone.text,
        shippingAddress: shippingAddress.text,
        shippingCity: shippingCity.text,
        shippingState: shippingState.text,
        items: items,
        manualTotal: double.tryParse(manualTotal.text.trim()),
        metadata: {
          if (internalNote.text.isNotEmpty) "note": internalNote.text,
        },
      ),
    );
    context.showSuccessSnackBar(const Text('تم إنشاء الطلب بنجاح'));
  }

  Future<void> _update() async {
    var order = await ff.orders.update(
      id: widget.order!.id,
      data: OrderUpdate(
        storeId: storeId,
        status: orderStatus,
        paymentStatus: paymentStatus,
        deliveryStatus: deliveryStatus,
        customerName: customerName.text,
        customerPhone: customerPhone.text,
        shippingAddress: shippingAddress.text,
        shippingCity: shippingCity.text,
        shippingState: shippingState.text,
        items: items,
        metadata: internalNote.text.isNotEmpty
            ? {
                ...?widget.order?.metadata,
                "note": internalNote.text,
              }
            : null,
        setToNull: manualTotal.text.nullIfEmpty == null? ["manual_total"]:[],
        manualTotal: double.tryParse(manualTotal.text.trim()),
      ),
    );
    context.showSuccessSnackBar(const Text('تم تعديل الطلب بنجاح'));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Form(
      key: _formKey,
      child: LoadingBox(
        loading: status == FutureStatus.inProgress,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: widget.order == null ? const Text('إنشاء طلب جديد') : const Text('تعديل طلب'),
              // actions: [
              //   IconButton(
              //     icon: const Icon(Icons.save),
              //     onPressed: () {
              //       // save order
              //     },
              //   ),
              // ],
            ),
            SliverToBoxAdapter(
              child: Column(children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: forScreen(width: width, sm: 400, md: 600)!,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      if (error != null)
                        AlertCard.error(
                          title: error is FeeefValidationException ? Text((error as FeeefValidationException).messages.join("\n")) : Text(error.toString()),
                        ),
                      const ListTile(
                        enabled: false,
                        leading: Icon(Ionicons.person_outline),
                        title: Text('بيانات العميل'),
                      ),
                      // name
                      TextFormField(
                        controller: customerName,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: 'اسم العميل',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: const Icon(Ionicons.pricetag_outline),
                          errorText: getErrorMessageOf('customerName'),
                        ),
                        // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.maxLength(100),
                          FormBuilderValidators.minLength(1),
                        ]),
                      ),
                      const SizedBox(height: 16),
                      // phone
                      TextFormField(
                        controller: customerPhone,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: 'رقم الهاتف',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: const Icon(Ionicons.phone_portrait_outline),
                          errorText: getErrorMessageOf('customerPhone'),
                          // call button
                          suffixIcon: IconButton(
                            icon: const Icon(Ionicons.call_outline),
                            onPressed: () {
                              launchUrlString('tel:${customerPhone.text}');
                            },
                          ),
                        ),
                        // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.numeric(),
                          FormBuilderValidators.maxLength(10),
                          FormBuilderValidators.minLength(9),
                        ]),
                      ),
                      const SizedBox(height: 16),
                      const ListTile(
                        enabled: false,
                        leading: Icon(Ionicons.location_outline),
                        title: Text('الشحن والتوصيل'),
                      ),
                      // address
                      TextFormField(
                        controller: shippingAddress,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: 'العنوان',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: const Icon(Ionicons.location_outline),
                          errorText: getErrorMessageOf('shippingAddress'),
                        ),
                        // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.maxLength(100),
                        ]),
                      ),
                      const SizedBox(height: 16),
                      Builder(builder: (context) {
                        var stateDropDown = DropdownButtonFormField<int>(
                          autovalidateMode: AutovalidateMode.always,
                          value: int.tryParse(getStateByCode(code: shippingState.text)?.code ?? ""),
                          decoration: InputDecoration(
                            labelText: 'الولاية',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            prefixIcon: const Icon(Ionicons.location_outline),
                            errorText: getErrorMessageOf('shippingState'),
                          ),
                          onChanged: (value) {
                            setState(() {
                              shippingState.text = value!.toString();
                              shippingCity.text = "";
                            });
                          },
                          items: [
                            for (var state in getAllStates())
                              DropdownMenuItem(
                                value: int.tryParse(state.code),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      child: Text(state.code),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(state.name),
                                  ],
                                ),
                              ),
                          ],
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                          ]),
                        );
                        var cityDropDown = DropdownButtonFormField<int>(
                          autovalidateMode: AutovalidateMode.always,
                          value: int.tryParse(getCityByCode(code: shippingCity.text, stateCode: shippingState.text)?.code ?? ""),
                          decoration: InputDecoration(
                            labelText: 'المدينة',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            prefixIcon: const Icon(Ionicons.location_outline),
                            errorText: getErrorMessageOf('shippingCity'),
                          ),
                          onChanged: (value) {
                            setState(() {
                              shippingCity.text = value!.toString();
                            });
                          },
                          items: [
                            for (var city in getCitiesByStateCode(code: shippingState.text))
                              DropdownMenuItem(
                                value: int.parse(city.code),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      child: Text(city.code),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(city.name),
                                  ],
                                ),
                              ),
                          ],
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                          ]),
                        );

                        return ForScreen(
                          sm: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              stateDropDown,
                              const SizedBox(height: 16),
                              cityDropDown,
                            ],
                          ),
                          md: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: stateDropDown,
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                // المدينة
                                child: cityDropDown,
                              ),
                            ],
                          ),
                        );
                      }),
                      const SizedBox(height: 16),
                      // customerNote
                      TextFormField(
                        controller: customerNote,
                        maxLines: 3,
                        textInputAction: TextInputAction.newline,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          labelText: 'ملاحظة العميل',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: const Icon(Ionicons.document_text_outline),
                          errorText: getErrorMessageOf('customerNote'),
                        ),
                        // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.maxLength(1000),
                        ]),
                      ),
                      const SizedBox(height: 16),
                      ListTile(
                        contentPadding: const EdgeInsetsDirectional.only(start: 8),
                        enabled: false,
                        leading: const Icon(Ionicons.cart_outline),
                        title: Text(t.products.label),
                        trailing: TextButton.icon(
                          icon: const Icon(Ionicons.add_outline),
                          label: Text(t.general.add),
                          onPressed: () async {
                            var result = await context.push('/stores/$storeId/products', extra: {
                              'selected': items.map((e) => e.productId).toList(),
                              'multiple': true,
                              'mode': 'select',
                            });
                            if (result is Product) {
                              setState(() {
                                items.add(OrderItem(
                                  productId: result.id,
                                  productName: result.name,
                                  price: result.price,
                                  quantity: 1,
                                ));
                              });
                            }
                          },
                        ),
                      ),
                      // items
                      Card.outlined(
                        child: Column(
                          children: [
                            if (items.isEmpty)
                              ListTile(
                                title: Text(t.general.empty),
                              ),
                            for (var item in items) ...[
                              ListTile(
                                leading: const Icon(Ionicons.cart_outline),
                                title: Text("${item.productName} ${item.variantPath != null ? '(${item.variantPath})' : ''}"),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${t.products.fields.quantity.label}: ${item.quantity} | ${t.products.fields.price.label}: ${item.price} | ${t.orders.fields.total.label}: ${item.price * item.quantity}'),
                                    // error display field: 'items.' + i + '.productId',
                                    if (getErrorMessageOf('items.${items.indexOf(item)}.productId') != null)
                                      Text(
                                        getErrorMessageOf('items.${items.indexOf(item)}.productId')!,
                                        style: const TextStyle(color: Colors.red),
                                      ),
                                  ],
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: const Icon(Ionicons.add_outline),
                                      onPressed: () {
                                        setState(() {
                                          items = items.map((e) {
                                            if (e == item) {
                                              return e.copyWith(quantity: e.quantity + 1);
                                            }
                                            return e;
                                          }).toList();
                                        });
                                      },
                                    ),
                                    IconButton(
                                      icon: item.quantity == 1 ? const Icon(Ionicons.trash_outline) : const Icon(Ionicons.remove_outline),
                                      onPressed: () async {
                                        if (item.quantity == 1) {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text(t.general.delete),
                                                content: const Text('هل تريد حذف المنتج من السلة؟'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: Text(t.general.cancel),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        items = items.where((e) => e != item).toList();
                                                      });
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: Text(t.general.delete),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                          return;
                                        }
                                        setState(() {
                                          items = items.map((e) {
                                            if (e == item) {
                                              return e.copyWith(quantity: e.quantity - 1);
                                            }
                                            return e;
                                          }).toList();
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  final storeId = GoRouterState.of(context).pathParameters['storeId'];
                                  context.push('/stores/$storeId/products/${item.productId}');
                                },
                              ),
                              const Padding(padding: EdgeInsetsDirectional.only(start: kMinInteractiveDimension), child: Divider()),
                            ],
                            const Divider(),
                            IntrinsicHeight(
                              child: Row(
                                children: [
                                  Flexible(
                                    child: ListTile(
                                      leading: const Icon(Ionicons.calculator),
                                      title: Text('${t.general.total}: ${items.fold<num>(0, (previousValue, element) => previousValue + element.price * element.quantity)}'),
                                      subtitle: Text('${t.general.shipping}: ${widget.order?.shippingPrice ?? 0}'),
                                    ),
                                  ),
                                  VerticalDivider(),
                                  Flexible(
                                    child: ListTile(
                                      // tileColor: Colors.yellow.withOpacity(0.5),
                                      title: Text(
                                        '${manualTotal.text.trim().nullIfEmpty ?? widget.order?.total} ${t.general.defaultCurrency.code}',
                                        // bold
                                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: Theme.of(context).colorScheme.primary
                                        ),
                                      ),
                                      subtitle: Text(
                                        'المبلغ النهائي${manualTotal.text.nullIfEmpty != null ? "(معدل)" : ""}',
                                      ),
                                      // edit dailog
                                      trailing: IconButton(
                                        icon: const Icon(Icons.edit),
                                        onPressed: () async {
                                          var result = await showDialog(
                                            context: context,
                                            builder: (context) {
                                              var controller = TextEditingController(text: manualTotal.text.nullIfEmpty?.toString());
                                              return AlertDialog(
                                                title: const Text('تعديل المبلغ النهائي'),
                                                content: TextFormField(
                                                  autovalidateMode: AutovalidateMode.always,
                                                  controller: controller,
                                                  decoration: const InputDecoration(
                                                    labelText: 'المبلغ النهائي',
                                                    prefixIcon: Icon(Ionicons.calculator),
                                                  ),
                                                  keyboardType: TextInputType.number,
                                                  validator: FormBuilderValidators.compose([
                                                    FormBuilderValidators.numeric(),
                                                  ]),
                                                ),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: Text(t.general.cancel),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop(controller.text);
                                                    },
                                                    child: Text(t.general.save),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                          if (result != null) {
                                            setState(() {
                                              manualTotal.text = result;
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const ListTile(
                        enabled: false,
                        leading: Icon(Ionicons.settings_outline),
                        title: Text('التحكم في الطلب'),
                      ),
                      // note
                      TextFormField(
                        controller: internalNote,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: 'ملاحظة العمل',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: const Icon(Ionicons.document_text_outline),
                          errorText: getErrorMessageOf('note'),
                        ),
                        // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.maxLength(1000),
                        ]),
                      ),
                      const SizedBox(height: 16),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          var orderStatusWidget = DropdownButtonFormField<OrderStatus>(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            value: orderStatus,
                            decoration: InputDecoration(
                              labelText: 'حالة الطلب',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              prefixIcon: const Icon(Ionicons.pricetag_outline),
                              errorText: getErrorMessageOf('orderStatus'),
                            ),
                            onChanged: (value) {
                              setState(() {
                                orderStatus = value!;
                              });
                            },
                            items: OrderStatus.values
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e.name),
                                  ),
                                )
                                .toList(),
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(),
                            ]),
                          );

                          var paymentStatusWidget = DropdownButtonFormField<PaymentStatus>(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            value: paymentStatus,
                            decoration: InputDecoration(
                              labelText: 'حالة الدفع',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              prefixIcon: const Icon(Ionicons.card),
                              errorText: getErrorMessageOf('paymentStatus'),
                            ),
                            onChanged: (value) {
                              setState(() {
                                paymentStatus = value!;
                              });
                            },
                            items: PaymentStatus.values
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e.name),
                                  ),
                                )
                                .toList(),
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(),
                            ]),
                          );

                          var deliveryStatusWidget = DropdownButtonFormField<DeliveryStatus>(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            value: deliveryStatus,
                            decoration: InputDecoration(
                              labelText: 'حالة التوصيل',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              prefixIcon: const Icon(Ionicons.car_outline),
                              errorText: getErrorMessageOf('deliveryStatus'),
                            ),
                            onChanged: (value) {
                              setState(() {
                                deliveryStatus = value!;
                              });
                            },
                            items: DeliveryStatus.values
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e.name),
                                  ),
                                )
                                .toList(),
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(),
                            ]),
                          );

                          return ForScreen(
                            sm: Column(
                              children: [
                                orderStatusWidget,
                                const SizedBox(height: 16),
                                paymentStatusWidget,
                                const SizedBox(height: 16),
                                deliveryStatusWidget,
                              ],
                            ),
                            md: Row(
                              children: [
                                Expanded(child: orderStatusWidget),
                                const SizedBox(width: 16),
                                Expanded(child: paymentStatusWidget),
                                const SizedBox(width: 16),
                                Expanded(child: deliveryStatusWidget),
                              ],
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      // save button
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton.icon(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _save();
                            }
                          },
                          label: Text(t.general.save),
                          icon: const Icon(Ionicons.save_outline),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
