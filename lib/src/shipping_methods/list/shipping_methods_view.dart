// ShippingMethodsPage
import 'package:feeef_marchant/feeef/interfaces/shipping_method.dart';
import 'package:feeef_marchant/feeef/shipping_methods/models/shipping_method.dart';
import 'package:feeef_marchant/feeef/stores/models/store.dart';
import 'package:feeef_marchant/gen/assets.gen.dart';
import 'package:feeef_marchant/helpers.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/main.dart';
import 'package:feeef_marchant/src/core/algeria_cites.dart';
import 'package:feeef_marchant/src/core/theme.dart';
import 'package:feeef_marchant/src/core/widgets/form_dailog.dart';
import 'package:feeef_marchant/src/shipping_methods/list/cubit/shipping_methods_list_cubit.dart';
import 'package:feeef_marchant/src/stores/bloc/marchent_stores_bloc.dart';
import 'package:feeef_marchant/src/uploader/cubit/uploader_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:ionicons/ionicons.dart';

class ShippingMethodsListPage extends StatelessWidget {
  final String storeId;
  const ShippingMethodsListPage({super.key, required this.storeId});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShippingMethodsListCubit(
        storeId: storeId,
      ),
      child: ShippingMethodsListView(),
    );
  }
}

// ShippingMethodsView
class ShippingMethodsListView extends StatefulWidget {
  const ShippingMethodsListView({super.key});

  @override
  State<ShippingMethodsListView> createState() => _ShippingMethodsListViewState();
}

class _ShippingMethodsListViewState extends State<ShippingMethodsListView> {
  @override
  void initState() {
    super.initState();
    context.read<ShippingMethodsListCubit>().load();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return BlocBuilder<ShippingMethodsListCubit, ShippingMethodsListState>(
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
                      Card.filled(
                        color: Theme.of(context).colorScheme.primary,
                        child: ListTile(
                          leading: Icon(Icons.delivery_dining_rounded, color: Theme.of(context).colorScheme.onPrimary),
                          title: Text(
                            'أظف طرق الشحن التي تعتمدها',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                          ),
                          subtitle: Text(
                            'يمكنك ايضا نسخ اسعار الشركات التي تتتعامل معها وتعدير الأسعار بما يناسبك',
                            style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ListTile(
                        contentPadding: const EdgeInsetsDirectional.only(start: 8),
                        enabled: false,
                        leading: const Icon(Icons.delivery_dining_outlined),
                        title: const Text('الشحن والتوصيل'),
                        trailing: TextButton.icon(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            _showShippingMethod(
                              context,
                              storeId: context.read<ShippingMethodsListCubit>().storeId,
                            );
                          },
                          label: const Text('إضافة طريقة شحن'),
                        ),
                      ),

                      for (var shipping in state.all) ...[
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
                                          Assets.integrations.maystro.icon.image(
                                            width: 64,
                                            height: 64,
                                            fit: BoxFit.contain,
                                            color: Colors.blue,
                                          ),
                                          Spacer(),
                                          IconButton(
                                            icon: const Icon(Icons.edit),
                                            onPressed: () {
                                              _showShippingMethod(context, storeId: context.read<ShippingMethodsListCubit>().storeId, shippingMethod: shipping);
                                            },
                                          ),
                                          IconButton(
                                            icon: const Icon(Icons.delete),
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    title: const Text('حذف طريقة الشحن'),
                                                    content: const Text('هل تريد حذف هذه الطريقة؟'),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        onPressed: () {
                                                          ff.shippingMethods.delete(id: shipping.id);
                                                          Navigator.of(context).pop();
                                                        },
                                                        child: Text(t.general.cancel),
                                                      ),
                                                      TextButton(
                                                        onPressed: () async {
                                                          await ff.shippingMethods.delete(id: shipping.id);
                                                          context.read<MarchentStoresBloc>().add(MarchentStoresEvent.removeShippingMethod(shipping.id));
                                                          context.showInfoSnackBar(const Text("تم حذف طريقة الشحن"));
                                                          Navigator.of(context).pop();
                                                        },
                                                        child: const Text('حذف'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
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
                        const SizedBox(height: 16),
                      ],

                      Card.outlined(
                        child: Column(
                          children: [
                            if (state.all.isEmpty)
                              const SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 16),
                                    Icon(
                                      Icons.delivery_dining_outlined,
                                      size: 40,
                                    ),
                                    SizedBox(height: 16),
                                    Text('لم يتم اضافة طرق شحن بعد'),
                                    SizedBox(height: 16),
                                  ],
                                ),
                              ),
                            for (var shipping in state.all)
                              ListTile(
                                leading: const Icon(Icons.delivery_dining_outlined),
                                title: Text(shipping.name),
                                subtitle: Text('التوصيل: ${shipping.forks}${t.general.defaultCurrency.symbol}'),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [],
                                ),
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const ListTile(
                        enabled: false,
                        leading: Icon(Icons.security),
                        title: Text('الخيارات الخطيرة'),
                      ),
                      // change password
                      // Card.outlined(
                      //   child: Column(
                      //     children: [
                      //       // tokens list
                      //       if (false)
                      //         // ignore: dead_code
                      //         FutureBuilder<List<AccessToken>>(
                      //           future: fif.users.tokens(),
                      //           builder: (context, snapshot) {
                      //             if (snapshot.data == null || snapshot.connectionState == ConnectionState.waiting) {
                      //               return const Center(child: CircularProgressIndicator());
                      //             }
                      //             return Column(
                      //               children: [
                      //                 for (var token in snapshot.data!)
                      //                   ListTile(
                      //                     leading: const Icon(Icons.vpn_key),
                      //                     title: Text("آخر استخدام: ${token.lastUsedAt == null ? "غير معروف" : timeago.format(token.lastUsedAt!)}"),
                      //                     subtitle: Text("lastUsedAt: ${token.lastUsedAt}"),
                      //                     trailing: IconButton(
                      //                       icon: const Icon(Icons.delete),
                      //                       onPressed: () async {
                      //                         // await fif.users.deleteToken(token.id);
                      //                         // context.showSuccessSnackBar(const Text('تم حذف الجلسة بنجاح'));
                      //                       },
                      //                     ),
                      //                   ),
                      //               ],
                      //             );
                      //           },
                      //         ),
                      //       ListTile(
                      //         leading: const Icon(Icons.lock),
                      //         title: const Text('تغيير كلمة المرور'),
                      //         subtitle: const Text('يمكنك تغيير كلمة المرور الخاصة بك'),
                      //         trailing: IconButton(
                      //           icon: const Icon(Icons.edit),
                      //           onPressed: () {
                      //             showDialog(
                      //                 context: context,
                      //                 builder: (context) {
                      //                   return _ChangePasswordDailog(
                      //                     onSubmitted: _updatePassword,
                      //                   );
                      //                 });
                      //           },
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // const SizedBox(height: 16),
                      // logout
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton.icon(
                          // red
                          style: Theme.of(context).outlinedButtonTheme.style!.copyWith(
                                iconColor: WidgetStateProperty.all(Colors.red),
                                overlayColor: WidgetStateProperty.all(Colors.red.withOpacity(0.1)),
                              ),
                          icon: const Icon(
                            Ionicons.trash_bin_outline,
                            size: 16,
                          ),
                          onPressed: () {
                            // _logout(context);
                          },
                          label: const Text('حذف المتجر', style: TextStyle(color: Colors.red)),
                        ),
                      ),

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
