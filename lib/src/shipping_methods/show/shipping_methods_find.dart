// ShippingMethodsPage
import 'package:feeef_marchant/feeef/interfaces/shipping_method.dart';
import 'package:feeef_marchant/feeef/shipping_methods/models/shipping_method.dart';
import 'package:feeef_marchant/helpers.dart';
import 'package:feeef_marchant/main.dart';
import 'package:feeef_marchant/src/core/algeria_cites.dart';
import 'package:feeef_marchant/src/core/theme.dart';
import 'package:feeef_marchant/src/core/widgets/form_dailog.dart';
import 'package:feeef_marchant/src/stores/bloc/marchent_stores_bloc.dart';
import 'package:feeef_marchant/src/uploader/cubit/uploader_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:ionicons/ionicons.dart';

import 'cubit/shipping_methods_find_cubit.dart';

class ShippingMethodsFindPage extends StatelessWidget {
  final String storeId;
  final String? shippingMethodId;
  const ShippingMethodsFindPage({super.key, required this.storeId, this.shippingMethodId});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShippingMethodsFindCubit(
        storeId: storeId,
        shippingMethodId: shippingMethodId,
      ),
      child: const ShippingMethodsFindView(),
    );
  }
}

// ShippingMethodsView
class ShippingMethodsFindView extends StatefulWidget {
  const ShippingMethodsFindView({super.key});

  @override
  State<ShippingMethodsFindView> createState() => _ShippingMethodsFindViewState();
}

class _ShippingMethodsFindViewState extends State<ShippingMethodsFindView> {
  @override
  void initState() {
    super.initState();
    // context.read<ShippingMethodsFindCubit>().find();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return BlocBuilder<ShippingMethodsFindCubit, ShippingMethodsFindState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text("طرق الشحن"),
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'اي استفسار او مشكلة يمكنك التواصل معنا عبر البريد الالكتروني او الهاتف',
                          style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6)),
                          textAlign: TextAlign.center,
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

  void _showShippingMethod(BuildContext context, {required String storeId, ShippingMethod? shippingMethod}) async {
    TextEditingController name = TextEditingController(text: shippingMethod?.name);
    var photoUrl = ValueNotifier<String?>(shippingMethod?.logoUrl);
    var ondarkPhotoUrl = ValueNotifier<String?>(shippingMethod?.ondarkLogoUrl);
    var status = ValueNotifier(shippingMethod?.status ?? ShippingMethodStatus.published);
    var policy = ValueNotifier(shippingMethod?.policy ?? ShippingMethodPolicy.private);

    final states = getAllStates();
    var rates = <String, TextEditingController>{
      for (var i = 0; i < states.length; i++) states.elementAt(i).name: TextEditingController(text: shippingMethod != null && shippingMethod!.rates.length > i ? shippingMethod?.rates[i].toString() ?? "0" : "0"),
    };

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      clipBehavior: Clip.antiAlias,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return DraggableScrollableSheet(
            expand: false,
            builder: (BuildContext context, ScrollController scrollController) {
              return Scaffold(
                appBar: AppBar(
                  title: shippingMethod == null ? const Text('إضافة طريقة شحن') : const Text('تعديل طريقة شحن'),
                ),
                body: ListView(
                  controller: scrollController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: FormDailog(
                        frame: false,
                        builder: (context, error) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // photos
                              Row(
                                children: [
                                  Expanded(
                                    child: Theme(
                                      data: getTheme(brightness: Brightness.light),
                                      child: ImagePickerAndUploader(
                                        cuption: const Text("صورة العادية"),
                                        onUpload: (url) => photoUrl.value = url,
                                        onCancel: () => photoUrl.value = null,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Theme(
                                      data: getTheme(brightness: Brightness.dark),
                                      child: ImagePickerAndUploader(
                                        cuption: const Text("صورة الوضع الداكن"),
                                        onUpload: (url) => ondarkPhotoUrl.value = url,
                                        onCancel: () => ondarkPhotoUrl.value = null,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),

                              const ListTile(
                                enabled: false,
                                leading: Icon(Icons.info_outline),
                                title: Text("البيانات الوصفية"),
                              ),
                              // name
                              TextFormField(
                                controller: name,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  labelText: 'إسم وسيلة الشحن',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  prefixIcon: const Icon(Ionicons.library),
                                  // errorText: error?.getFieldMessage('category'),
                                ),
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(),
                                  FormBuilderValidators.maxLength(32),
                                ]),
                              ),
                              const ListTile(
                                enabled: false,
                                leading: Icon(Icons.remove_red_eye),
                                title: Text("الضهور"),
                              ),
                              // const SizedBox(height: 16),
                              // TODO: dropdown for status and policy
                              // Status Dropdown
                              DropdownButtonFormField(
                                decoration: InputDecoration(
                                  labelText: 'الحالة',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  prefixIcon: const Icon(Icons.visibility),
                                ),
                                items: ShippingMethodStatus.values.map((value) {
                                  return DropdownMenuItem(
                                    value: value,
                                    child: Text(value.name),
                                  );
                                }).toList(),
                                value: status.value,
                                onChanged: (value) => value == null ? null : status.value = value,
                              ),
                              const SizedBox(height: 16),
                              DropdownButtonFormField(
                                decoration: InputDecoration(
                                  labelText: 'سياسة الضهور',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  prefixIcon: const Icon(Icons.visibility),
                                ),
                                items: ShippingMethodPolicy.values.map((value) {
                                  return DropdownMenuItem(
                                    value: value,
                                    child: Text(value.name),
                                  );
                                }).toList(),
                                value: policy.value,
                                onChanged: (value) => value == null ? null : policy.value = value,
                              ),
                              const SizedBox(height: 16),

                              const ListTile(
                                enabled: false,
                                leading: Icon(Icons.wallet),
                                title: Text("اسعار التوصيل حسب الولاية"),
                              ),
                              for (var i = 0; i < rates.length; i++) ...[
                                TextFormField(
                                  controller: rates.entries.elementAt(i).value,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  decoration: InputDecoration(
                                    labelText: "${rates.entries.elementAt(i).key} ${(i + 1).toString().padLeft(2, '0')}",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    prefixIcon: const Icon(Icons.delivery_dining),
                                  ),
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.numeric(),
                                    FormBuilderValidators.max(100000),
                                    FormBuilderValidators.min(0)
                                  ]),
                                ),
                                const SizedBox(height: 8),
                              ],
                            ],
                          );
                        },
                        onSubmitted: () async {
                          var shippingMethod = await ff.shippingMethods.create(data: ShippingMethodCreate(name: name.text, storeId: storeId, status: ShippingMethodStatus.published, policy: ShippingMethodPolicy.private, rates: []));
                          context.read<MarchentStoresBloc>().add(MarchentStoresEvent.addShippingMethod(shippingMethod));
                        },
                      ),
                    ),
                  ],
                ),
              );
            });
      },
    );
  }
}
