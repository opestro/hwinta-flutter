import 'package:csv/csv.dart';
import 'package:cuid2/cuid2.dart';
import 'package:feeef_marchant/feeef/core/validation/validation_exception.dart';
import 'package:feeef_marchant/feeef/core/widgets/alerts.dart';
import 'package:feeef_marchant/feeef/interfaces/embadded/embadded_category.dart';
import 'package:feeef_marchant/feeef/interfaces/embadded/store.dart';
import 'package:feeef_marchant/feeef/interfaces/shipping_method.dart';
import 'package:feeef_marchant/feeef/orders/models/custom_order_tag.dart';
import 'package:feeef_marchant/feeef/shipping_methods/models/shipping_method.dart';
import 'package:feeef_marchant/feeef/stores/models/store.dart';
import 'package:feeef_marchant/helpers.dart';
import 'package:cross_file/cross_file.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/main.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:feeef_marchant/src/auth/profile_view.dart';
import 'package:feeef_marchant/src/core/algeria_cites.dart';
import 'package:feeef_marchant/src/core/colors.dart';
import 'package:feeef_marchant/src/core/enums.dart';
import 'package:feeef_marchant/src/core/fable.dart';
import 'package:feeef_marchant/src/core/files.dart';
import 'package:feeef_marchant/src/core/strings.dart';
import 'package:feeef_marchant/src/core/theme.dart';
import 'package:feeef_marchant/src/core/validators.dart';
import 'package:feeef_marchant/src/core/widgets/form_dailog.dart';
import 'package:feeef_marchant/src/stores/bloc/marchent_stores_bloc.dart';
import 'package:feeef_marchant/src/stores/bloc/marchent_stores_state.dart';
import 'package:feeef_marchant/src/uploader/cubit/uploader_cubit.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
// import 'package:image_compression_flutter/image_compression_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:lib/lib.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../feeef/feeef.dart';
import '../../gen/assets.gen.dart';

class StoreSettingsPage extends StatelessWidget {
  final String storeId;
  const StoreSettingsPage({super.key, required this.storeId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarchentStoresBloc, MarchentStoresState>(
      builder: (context, state) {
        if (state.store == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return StoreSettingsView(store: state.store!);
      },
    );
  }
}

class StoreSettingsView extends StatefulWidget {
  final Store store;
  const StoreSettingsView({super.key, required this.store});

  @override
  State<StoreSettingsView> createState() => _StoreSettingsViewState();
}

class _StoreSettingsViewState extends State<StoreSettingsView> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return BlocBuilder<MarchentStoresBloc, MarchentStoresState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text("إعدادات المتجر"),
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
                      if (state.store?.logoUrl == null && state.store?.ondarkLogoUrl == null)
                        CircleAvatar(
                          radius: 50,
                          child: state.store?.logoUrl == null
                              ? const Icon(
                                  Ionicons.storefront,
                                  size: 50,
                                )
                              : null,
                        )
                      else
                        Image.network(
                          Theme.of(context).brightness == Brightness.light ? state.store!.logoUrl ?? state.store!.ondarkLogoUrl! : state.store!.ondarkLogoUrl ?? state.store!.logoUrl!,
                          height: 100,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Ionicons.storefront,
                              size: 50,
                            );
                          },
                        ),
                      const SizedBox(height: 16),
                      // edit avatar button
                      FilledButton.tonalIcon(
                        icon: const Icon(Ionicons.camera, size: 16),
                        style: Theme.of(context).filledButtonTheme.style!.copyWith(
                              minimumSize: WidgetStateProperty.all(const Size(0, 0)),
                              padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 9, vertical: 8)),
                            ),
                        onPressed: () {
                          var logoUrl = ValueNotifier<String?>(state.store?.logoUrl);
                          var ondarkLogoUrl = ValueNotifier<String?>(state.store?.ondarkLogoUrl);
                          showDialog(
                            context: context,
                            builder: (context) {
                              return FormDailog(
                                title: const Text('تحديث الصورة'),
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
                                                maxHeight: 200,
                                                allowCompression: false,
                                                initialValue: state.store?.logoUrl,
                                                cuption: const Text("صورة العادية"),
                                                onUpload: (url) => logoUrl.value = url,
                                                onCancel: () => logoUrl.value = null,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 16),
                                          Expanded(
                                            child: Theme(
                                              data: getTheme(brightness: Brightness.dark),
                                              child: ImagePickerAndUploader(
                                                maxHeight: 200,
                                                allowCompression: false,
                                                initialValue: state.store?.ondarkLogoUrl,
                                                cuption: const Text("صورة الوضع الداكن"),
                                                onUpload: (url) => ondarkLogoUrl.value = url,
                                                onCancel: () => ondarkLogoUrl.value = null,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                },
                                onSubmitted: () async {
                                  await _update(StoreUpdate(logoUrl: logoUrl.value, ondarkLogoUrl: ondarkLogoUrl.value, setToNull: [
                                    "logoUrl",
                                    "ondarkLogoUrl"
                                  ]));
                                },
                              );
                            },
                          );
                        },
                        label: const Text('تغيير الصورة'),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            state.store?.name ?? 'متجري',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8),
                          // verified badge
                          if (state.store?.verifiedAt != null)
                            const Tooltip(
                              message: 'حساب موثق',
                              child: Icon(
                                Icons.verified,
                                // size: 16,
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Card.filled(
                        color: Theme.of(context).colorScheme.primary,
                        child: ListTile(
                          leading: Icon(Icons.security, color: Theme.of(context).colorScheme.onPrimary),
                          title: Text(
                            'الأمان والبيانات',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                          ),
                          subtitle: Text(
                            'نلتزم بخصوصية وامان بياناتك في كل عملياتنا',
                            style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                          ),
                        ),
                      ),
                      const ListTile(
                        enabled: false,
                        leading: Icon(Icons.person),
                        title: Text('المعلومات العامة'),
                      ),
                      // outlimed card
                      Card.outlined(
                        child: Column(
                          children: [
                            ListTile(
                              leading: const Icon(Ionicons.storefront),
                              title: TextOrFlag(state.store?.name, flag: 'لم يتم اضافة اسم'),
                              subtitle: const Text('الاسم'),
                              trailing: IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  var controller = TextEditingController(text: state.store?.name);
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return FormDailog(
                                        initialValue: state.store?.name,
                                        builder: (context, error) {
                                          return TextFormField(
                                            controller: controller,
                                            decoration: InputDecoration(
                                              labelText: 'الاسم',
                                              prefixIcon: const Icon(Ionicons.storefront),
                                              errorText: error?.getFieldMessage("name"),
                                            ),
                                            validator: FormBuilderValidators.required(),
                                          );
                                        },
                                        onSubmitted: () async {
                                          await _update(StoreUpdate(name: controller.text));
                                        },
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            const Padding(padding: EdgeInsetsDirectional.only(start: kMinInteractiveDimension), child: Divider()),
                            ListTile(
                              leading: const Icon(Ionicons.ticket),
                              title: TextOrFlag(state.store?.title, flag: 'بدون عنوان'),
                              subtitle: const Text('عنوان المتجر، يستعمل للبحث والشعار'),
                              trailing: IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  var controller = TextEditingController(text: state.store?.title);
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return FormDailog(
                                        initialValue: state.store?.title,
                                        builder: (context, error) {
                                          return TextFormField(
                                            controller: controller,
                                            decoration: InputDecoration(
                                              labelText: 'العنوان',
                                              prefixIcon: const Icon(Ionicons.ticket_outline),
                                              errorText: error?.getFieldMessage("title"),
                                            ),
                                            validator: FormBuilderValidators.required(),
                                          );
                                        },
                                        onSubmitted: () async {
                                          await _update(StoreUpdate(title: controller.text));
                                        },
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            const Padding(padding: EdgeInsetsDirectional.only(start: kMinInteractiveDimension), child: Divider()),
                            // description
                            ListTile(
                              leading: const Icon(Ionicons.document_text),
                              title: TextOrFlag(state.store?.description, flag: 'بدون وصف'),
                              subtitle: const Text('وصف المتجر، يستعمل للبحث والوصف'),
                              trailing: IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  var controller = TextEditingController(text: state.store?.description);
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return FormDailog(
                                        initialValue: state.store?.description,
                                        builder: (context, error) {
                                          return TextFormField(
                                            controller: controller,
                                            decoration: InputDecoration(
                                              labelText: 'الوصف',
                                              prefixIcon: const Icon(Ionicons.document_text),
                                              errorText: error?.getFieldMessage("description"),
                                            ),
                                            validator: FormBuilderValidators.required(),
                                          );
                                        },
                                        onSubmitted: () async {
                                          await _update(StoreUpdate(description: controller.text));
                                        },
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            // benner (has title,url)
                            const Padding(padding: EdgeInsetsDirectional.only(start: kMinInteractiveDimension), child: Divider()),
                            ListTile(
                              leading: const Icon(Icons.flag),
                              title: TextOrFlag(state.store?.banner?.title, flag: 'بدون عنوان'),
                              subtitle: const Text('العنوان الإعلاني (يظهر أعلى الموقع)'),
                              trailing: IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  var title = TextEditingController(text: state.store?.banner?.title);
                                  var url = TextEditingController(text: state.store?.banner?.url);
                                  var enabled = ValueNotifier<bool>(state.store?.banner?.enabled ?? false);
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return FormDailog(
                                        initialValue: state.store?.banner?.title,
                                        builder: (context, error) {
                                          return Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              // name
                                              TextFormField(
                                                controller: title,
                                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                                decoration: InputDecoration(
                                                  labelText: 'العنوان',
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(12),
                                                  ),
                                                  prefixIcon: const Icon(Ionicons.text),
                                                  errorText: error?.getFieldMessage('title'),
                                                ),
                                                validator: FormBuilderValidators.compose([
                                                  FormBuilderValidators.required(),
                                                  FormBuilderValidators.maxLength(32),
                                                ]),
                                              ),
                                              const SizedBox(height: 16),
                                              // url
                                              TextFormField(
                                                controller: url,
                                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                                decoration: InputDecoration(
                                                  labelText: 'الرابط',
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(12),
                                                  ),
                                                  prefixIcon: const Icon(Ionicons.link),
                                                  errorText: error?.getFieldMessage('url'),
                                                ),
                                                validator: FormBuilderValidators.compose([
                                                  FormBuilderValidators.url(),
                                                ]),
                                              ),
                                              const SizedBox(height: 16),
                                              // enabled
                                              ListenableBuilder(
                                                listenable: enabled,
                                                builder: (context, _) {
                                                  return SwitchListTile(
                                                    contentPadding: EdgeInsets.zero,
                                                    value: enabled.value,
                                                    onChanged: (value) {
                                                      enabled.value = value;
                                                    },
                                                    title: const Text('تفعيل'),
                                                    subtitle: const Text('إظهار أو اخفاء الإعلان'),
                                                  );
                                                },
                                              ),
                                            ],
                                          );
                                        },
                                        onSubmitted: () async {
                                          await _update(
                                            StoreUpdate(
                                              banner: StoreBanner(
                                                title: title.text,
                                                url: url.text,
                                                enabled: enabled.value,
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            const Padding(padding: EdgeInsetsDirectional.only(start: kMinInteractiveDimension), child: Divider()),
                            ListTile(
                              onTap: () {
                                if (state.store?.domain?.name != null) {
                                  try {
                                    launchUrlString("https://${state.store?.domain?.name}");
                                  } catch (e) {
                                    context.showErrorSnackBar(const Text("حدث خطأ أثناء فتح الرابط"));
                                  }
                                }
                              },
                              leading: const Icon(Icons.language),
                              title: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextOrFlag(state.store?.domain?.name, flag: 'إسم النطاق'),
                                  const SizedBox(width: 4),
                                  // verified badge
                                  if (state.store?.domain?.verifiedAt != null)
                                    const Tooltip(
                                      message: 'تم التحقق منه',
                                      child: Icon(
                                        Icons.verified,
                                        size: 18,
                                      ),
                                    ),
                                ],
                              ),
                              subtitle: const Text('نطاق موقعك'),
                              trailing: IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  var controller = TextEditingController(text: state.store?.domain?.name);
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return FormDailog(
                                        initialValue: state.store?.domain?.name,
                                        builder: (context, error) {
                                          return TextFormField(
                                            controller: controller,
                                            decoration: InputDecoration(
                                              labelText: 'النطاق',
                                              prefixIcon: const Icon(Icons.language),
                                              errorText: error?.getFieldMessage("domain"),
                                            ),
                                            validator: domainValidator(context),
                                          );
                                        },
                                        onSubmitted: () async {
                                          await _update(StoreUpdate(domain: StoreDomain(name: controller.text)));
                                        },
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            const Padding(padding: EdgeInsetsDirectional.only(start: kMinInteractiveDimension), child: Divider()),
                            // النطاف الفرعي (slug)
                            ListTile(
                              onTap: () {
                                if (state.store?.slug != null) {
                                  try {
                                    launchUrlString("https://${state.store?.slug.concatIfNotEmpty(".feeef.shop")}");
                                  } catch (e) {
                                    context.showErrorSnackBar(const Text("حدث خطأ أثناء فتح الرابط"));
                                  }
                                }
                              },
                              leading: const Icon(Icons.link),
                              title: TextOrFlag(state.store?.slug.concatIfNotEmpty(".feeef.shop"), flag: 'إسم النطاق الفرعي'),
                              subtitle: const Text('إسم النطاق الفرعي'),
                              trailing: IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  var controller = TextEditingController(text: state.store?.slug);
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return FormDailog(
                                        initialValue: state.store?.slug,
                                        builder: (context, error) {
                                          return TextFormField(
                                              controller: controller,
                                              decoration: InputDecoration(
                                                labelText: 'النطاق الفرعي',
                                                prefixIcon: const Icon(Icons.link),
                                                errorText: error?.getFieldMessage("slug"),
                                              ),
                                              validator: FormBuilderValidators.compose([
                                                FormBuilderValidators.required(),
                                                slugValidator(context)
                                              ]));
                                        },
                                        onSubmitted: () async {
                                          await _update(StoreUpdate(slug: controller.text));
                                        },
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      // التصميم والألوان
                      const SizedBox(height: 16),
                      const ListTile(
                        enabled: false,
                        leading: Icon(Icons.palette),
                        title: Text('التصميم والألوان'),
                      ),
                      // outlimed card
                      Card.outlined(
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.circle, color: state.store?.decoration?.primary),
                              title: TextOrFlag(state.store?.decoration?.primary.toString(), flag: 'لم يتم تحديد اللون'),
                              subtitle: const Text('اللون الأساسي'),
                              trailing: IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  var controller = TextEditingController(text: state.store?.decoration?.primary.value.toRadixString(16));
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return FormDailog(
                                        builder: (context, error) {
                                          return TextFormField(
                                            controller: controller,
                                            decoration: InputDecoration(
                                              labelText: 'اللون الأساسي',
                                              prefixIcon: const Icon(Ionicons.color_palette_outline),
                                              errorText: error?.getFieldMessage("primaryColor"),
                                            ),
                                            validator: FormBuilderValidators.compose([
                                              FormBuilderValidators.required(),
                                              (v) {
                                                try {
                                                  Color(int.parse(v!, radix: 16));
                                                  return null;
                                                } catch (e) {
                                                  return "القيمة غير صحيحة";
                                                }
                                              }
                                            ]),
                                            onTap: () async {
                                              var result = await showColorPickerDialog(
                                                  context,
                                                  Color(
                                                    int.parse(controller.text, radix: 16),
                                                  ),
                                                  pickersEnabled: {
                                                    ColorPickerType.both: false,
                                                    ColorPickerType.primary: true,
                                                    ColorPickerType.accent: true,
                                                    ColorPickerType.bw: false,
                                                    ColorPickerType.custom: false,
                                                    ColorPickerType.wheel: true,
                                                  });
                                              controller.text = result.value.toRadixString(16);
                                            },
                                          );
                                        },
                                        onSubmitted: () async {
                                          var primary = Color(int.parse(controller.text, radix: 16));
                                          // on primary is the color that is visible on the primary color
                                          var onPrimary = primary.computeLuminance() > 0.5 ? Colors.black : Colors.white;
                                          await _update(
                                            StoreUpdate(
                                              decoration: StoreDecoration(
                                                primary: primary,
                                                onPrimary: onPrimary,
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      // العناوين والفروع
                      const SizedBox(height: 16),
                      ListTile(
                        contentPadding: const EdgeInsetsDirectional.only(start: 8),
                        enabled: false,
                        leading: const Icon(Ionicons.business_outline),
                        title: const Text('العناوين والفروع'),
                        trailing: TextButton.icon(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            TextEditingController street = TextEditingController();
                            var _state = ValueNotifier<String>("09");
                            var city = ValueNotifier<String>("01");
                            var metadata = {
                              "id": cuid(8),
                            };
                            showDialog(
                              context: context,
                              builder: (context) {
                                return FormDailog(
                                  title: const Text('إضافة فرع'),
                                  builder: (context, error) {
                                    return Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        // address
                                        TextFormField(
                                          controller: street,
                                          autovalidateMode: AutovalidateMode.onUserInteraction,
                                          decoration: InputDecoration(
                                            labelText: 'العنوان',
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            prefixIcon: const Icon(Ionicons.location_outline),
                                            errorText: error?.getFieldMessage('shippingAddress'),
                                          ),
                                          // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                                          validator: FormBuilderValidators.compose([
                                            FormBuilderValidators.maxLength(100),
                                          ]),
                                        ),
                                        const SizedBox(height: 16),
                                        Builder(builder: (context) {
                                          var stateDd = DropdownButtonFormField<String>(
                                            autovalidateMode: AutovalidateMode.onUserInteraction,
                                            value: getStateByCode(code: _state.value)?.code,
                                            decoration: InputDecoration(
                                              labelText: 'الولاية',
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              prefixIcon: const Icon(Ionicons.location_outline),
                                              errorText: error?.getFieldMessage('shippingState'),
                                            ),
                                            onChanged: (value) {
                                              city.value = "";
                                              _state.value = value!;
                                            },
                                            items: [
                                              for (var state in getAllStates())
                                                DropdownMenuItem(
                                                  value: state.code,
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

                                          var cityDd = ListenableBuilder(
                                            listenable: _state,
                                            builder: (context, _) {
                                              return DropdownButtonFormField<String>(
                                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                                value: city.value.nullIfEmpty,
                                                decoration: InputDecoration(
                                                  labelText: 'المدينة',
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(12),
                                                  ),
                                                  prefixIcon: const Icon(Ionicons.location_outline),
                                                  errorText: error?.getFieldMessage('city'),
                                                ),
                                                onChanged: (value) {
                                                  city.value = value!;
                                                },
                                                items: [
                                                  for (var city in getCitiesByStateCode(code: _state.value))
                                                    DropdownMenuItem(
                                                      value: city.code,
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
                                            },
                                          );
                                          return ForScreen(
                                            widthOf: ForScreenWidthOf.mediaQuery,
                                            sm: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                stateDd,
                                                const SizedBox(height: 16),
                                                cityDd,
                                              ],
                                            ),
                                            md: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: stateDd,
                                                ),
                                                const SizedBox(width: 16),
                                                Expanded(
                                                  // المدينة
                                                  child: cityDd,
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      ],
                                    );
                                  },
                                  onSubmitted: () async {
                                    await _update(
                                      StoreUpdate(
                                        addresses: [
                                          ...state.store!.addresses,
                                          EmbaddedAddress(
                                            city: city.value,
                                            state: _state.value,
                                            street: street.text,
                                            country: "DZ",
                                            metadata: metadata,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                          label: Text(t.general.add),
                        ),
                      ),
                      // outlimed card
                      Card.outlined(
                        clipBehavior: Clip.hardEdge,
                        child: Column(
                          children: [
                            if (state.store?.addresses == null || state.store!.addresses.isEmpty)
                              const SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 16),
                                    Icon(
                                      Ionicons.business_outline,
                                      size: 40,
                                    ),
                                    SizedBox(height: 16),
                                    Text('لم يتم اضافة فروع بعد'),
                                    SizedBox(height: 16),
                                  ],
                                ),
                              )
                            else
                              for (var branch in state.store!.addresses) ...[
                                ListTile(
                                  leading: const Icon(Ionicons.business_outline),
                                  title: TextOrFlag(branch.street),
                                  subtitle: branch.city == null || branch.state == null ? const Text('المدينة والولاية غير محددة') : Text("${getStateByCode(code: branch.state!)?.name}, ${getCityByCode(code: branch.city!, stateCode: branch.state!)?.name}"),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.delete),
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: const Text('حذف الفرع'),
                                                content: const Text('هل تريد حذف هذا الفرع؟'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: Text(t.general.cancel),
                                                  ),
                                                  TextButton(
                                                    onPressed: () async {
                                                      await _update(
                                                        StoreUpdate(
                                                          addresses: state.store!.addresses.where((e) => e != branch).toList(),
                                                        ),
                                                      );
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
                                      IconButton(
                                        icon: const Icon(Icons.edit),
                                        onPressed: () {
                                          var street = TextEditingController(text: branch.street);
                                          var _state = ValueNotifier<String>(branch.state ?? "09");
                                          var city = ValueNotifier<String>(branch.city ?? "01");

                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return FormDailog(
                                                title: const Text('تعديل فرع'),
                                                builder: (context, error) {
                                                  return Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      // address
                                                      TextFormField(
                                                        controller: street,
                                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                                                        decoration: InputDecoration(
                                                          labelText: 'العنوان',
                                                          border: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(12),
                                                          ),
                                                          prefixIcon: const Icon(Ionicons.location_outline),
                                                          errorText: error?.getFieldMessage('shippingAddress'),
                                                        ),
                                                        // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                                                        validator: FormBuilderValidators.compose([
                                                          FormBuilderValidators.maxLength(100),
                                                        ]),
                                                      ),
                                                      const SizedBox(height: 16),
                                                      Row(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Expanded(
                                                            child: DropdownButtonFormField<String>(
                                                              autovalidateMode: AutovalidateMode.onUserInteraction,
                                                              value: getStateByCode(code: _state.value)?.code,
                                                              decoration: InputDecoration(
                                                                labelText: 'الولاية',
                                                                border: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(12),
                                                                ),
                                                                prefixIcon: const Icon(Ionicons.location_outline),
                                                                errorText: error?.getFieldMessage('shippingState'),
                                                              ),
                                                              onChanged: (value) {
                                                                _state.value = value!;
                                                              },
                                                              items: [
                                                                for (var state in getAllStates())
                                                                  DropdownMenuItem(
                                                                    value: state.code,
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
                                                            ),
                                                          ),
                                                          const SizedBox(width: 16),
                                                          Expanded(
                                                            // المدينة
                                                            child: ListenableBuilder(
                                                              listenable: _state,
                                                              builder: (context, _) {
                                                                return DropdownButtonFormField<String>(
                                                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                                                  value: city.value.nullIfEmpty,
                                                                  decoration: InputDecoration(
                                                                    labelText: 'المدينة',
                                                                    border: OutlineInputBorder(
                                                                      borderRadius: BorderRadius.circular(12),
                                                                    ),
                                                                    prefixIcon: const Icon(Ionicons.location_outline),
                                                                    errorText: error?.getFieldMessage('city'),
                                                                  ),
                                                                  onChanged: (value) {
                                                                    city.value = value!;
                                                                  },
                                                                  items: [
                                                                    for (var city in getCitiesByStateCode(code: _state.value))
                                                                      DropdownMenuItem(
                                                                        value: city.code,
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
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  );
                                                },
                                                onSubmitted: () async {
                                                  await _update(
                                                    StoreUpdate(
                                                      addresses: [
                                                        ...state.store!.addresses.map((e) {
                                                          if (e == branch) {
                                                            return e.copyWith(
                                                              city: city.value,
                                                              state: _state.value,
                                                              street: street.text,
                                                            );
                                                          }
                                                          return e;
                                                        }),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(padding: EdgeInsetsDirectional.only(start: kMinInteractiveDimension), child: Divider()),
                              ],
                          ],
                        ),
                      ),
                      // contacts
                      const SizedBox(height: 16),
                      ListTile(
                        contentPadding: const EdgeInsetsDirectional.only(start: 8),
                        enabled: false,
                        leading: const Icon(Ionicons.call_outline),
                        title: const Text('وسائل الإتصال'),
                        trailing: TextButton.icon(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            TextEditingController name = TextEditingController();
                            TextEditingController value = TextEditingController();
                            var type = ValueNotifier<EmbaddedContactType>(EmbaddedContactType.phone);
                            var metadata = {
                              "id": cuid(8),
                            };
                            showDialog(
                              context: context,
                              builder: (context) {
                                return FormDailog(
                                  title: const Text('إضافة وسيلة إتصال'),
                                  builder: (context, error) {
                                    return Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        // name
                                        TextFormField(
                                          controller: name,
                                          autovalidateMode: AutovalidateMode.onUserInteraction,
                                          decoration: InputDecoration(
                                            labelText: 'الإسم',
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            prefixIcon: const Icon(Ionicons.person_outline),
                                            errorText: error?.getFieldMessage('name'),
                                          ),
                                          // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                                          validator: FormBuilderValidators.compose([
                                            FormBuilderValidators.maxLength(100),
                                          ]),
                                        ),
                                        const SizedBox(height: 16),
                                        // value
                                        TextFormField(
                                          controller: value,
                                          autovalidateMode: AutovalidateMode.onUserInteraction,
                                          decoration: InputDecoration(
                                            labelText: 'القيمة',
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            prefixIcon: const Icon(Ionicons.call_outline),
                                            errorText: error?.getFieldMessage('value'),
                                          ),
                                          // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                                          validator: FormBuilderValidators.compose([
                                            FormBuilderValidators.maxLength(100),
                                          ]),
                                        ),
                                        const SizedBox(height: 16),
                                        // type
                                        ListenableBuilder(
                                          listenable: type,
                                          builder: (context, _) {
                                            return DropdownButtonFormField<EmbaddedContactType>(
                                              autovalidateMode: AutovalidateMode.onUserInteraction,
                                              value: type.value,
                                              decoration: InputDecoration(
                                                labelText: 'النوع',
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(12),
                                                ),
                                                prefixIcon: const Icon(Ionicons.call_outline),
                                                errorText: error?.getFieldMessage('type'),
                                              ),
                                              onChanged: (value) {
                                                type.value = value!;
                                              },
                                              items: [
                                                for (var type in EmbaddedContactType.values)
                                                  DropdownMenuItem(
                                                    value: type,
                                                    child: Text(type.name),
                                                  ),
                                              ],
                                              validator: FormBuilderValidators.compose([
                                                FormBuilderValidators.required(),
                                              ]),
                                            );
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                  onSubmitted: () async {
                                    await _update(
                                      StoreUpdate(
                                        contacts: [
                                          ...state.store!.contacts,
                                          EmbaddedContact(
                                            name: name.text.nullIfEmpty,
                                            value: value.text,
                                            type: type.value,
                                            metadata: metadata,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                          label: Text(t.general.add),
                        ),
                      ),
                      // outlimed card
                      Card.outlined(
                        child: Column(
                          children: [
                            if (state.store?.contacts == null || state.store!.contacts.isEmpty)
                              const SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 16),
                                    Icon(
                                      Ionicons.call_outline,
                                      size: 40,
                                    ),
                                    SizedBox(height: 16),
                                    Text('لم يتم اضافة وسائل إتصال بعد'),
                                    SizedBox(height: 16),
                                  ],
                                ),
                              )
                            else
                              for (var contact in state.store!.contacts) ...[
                                ListTile(
                                  leading: const Icon(Ionicons.call_outline),
                                  title: TextOrFlag(contact.value),
                                  subtitle: Text(contact.type.name),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.delete),
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: const Text('حذف وسيلة الإتصال'),
                                                content: const Text('هل تريد حذف هذه الوسيلة؟'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: Text(t.general.cancel),
                                                  ),
                                                  TextButton(
                                                    onPressed: () async {
                                                      await _update(
                                                        StoreUpdate(
                                                          contacts: state.store!.contacts.where((e) => e != contact).toList(),
                                                        ),
                                                      );
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
                                      IconButton(
                                        icon: const Icon(Icons.edit),
                                        onPressed: () {
                                          var name = TextEditingController(text: contact.name);
                                          var value = TextEditingController(text: contact.value);
                                          var type = ValueNotifier<EmbaddedContactType>(contact.type);
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return FormDailog(
                                                title: const Text('تعديل وسيلة الإتصال'),
                                                builder: (context, error) {
                                                  return Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      // name
                                                      TextFormField(
                                                        controller: name,
                                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                                                        decoration: InputDecoration(
                                                          labelText: 'الإسم',
                                                          border: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(12),
                                                          ),
                                                          prefixIcon: const Icon(Ionicons.person_outline),
                                                          errorText: error?.getFieldMessage('name'),
                                                        ),
                                                        // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                                                        validator: FormBuilderValidators.compose([
                                                          FormBuilderValidators.maxLength(100),
                                                        ]),
                                                      ),
                                                      const SizedBox(height: 16),
                                                      // value
                                                      TextFormField(
                                                        controller: value,
                                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                                                        decoration: InputDecoration(
                                                          labelText: 'القيمة',
                                                          border: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(12),
                                                          ),
                                                          prefixIcon: const Icon(Ionicons.call_outline),
                                                          errorText: error?.getFieldMessage('value'),
                                                        ),
                                                        // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                                                        validator: FormBuilderValidators.compose([
                                                          FormBuilderValidators.maxLength(100),
                                                        ]),
                                                      ),
                                                      const SizedBox(height: 16),
                                                      // type
                                                      ListenableBuilder(
                                                        listenable: type,
                                                        builder: (context, _) {
                                                          return DropdownButtonFormField<EmbaddedContactType>(
                                                            autovalidateMode: AutovalidateMode.onUserInteraction,
                                                            value: type.value,
                                                            decoration: InputDecoration(
                                                              labelText: 'النوع',
                                                              border: OutlineInputBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                              ),
                                                              prefixIcon: const Icon(Ionicons.call_outline),
                                                              errorText: error?.getFieldMessage('type'),
                                                            ),
                                                            onChanged: (value) {
                                                              type.value = value!;
                                                            },
                                                            items: [
                                                              for (var type in EmbaddedContactType.values)
                                                                DropdownMenuItem(
                                                                  value: type,
                                                                  child: Text(type.name),
                                                                ),
                                                            ],
                                                            validator: FormBuilderValidators.compose([
                                                              FormBuilderValidators.required(),
                                                            ]),
                                                          );
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                },
                                                onSubmitted: () async {
                                                  await _update(
                                                    StoreUpdate(
                                                      contacts: [
                                                        for (var c in state.store!.contacts)
                                                          if (c == contact)
                                                            EmbaddedContact(
                                                              name: name.text.nullIfEmpty,
                                                              value: value.text,
                                                              type: type.value,
                                                              metadata: c.metadata,
                                                            )
                                                          else
                                                            c,
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(padding: EdgeInsetsDirectional.only(start: kMinInteractiveDimension), child: Divider()),
                              ],
                          ],
                        ),
                      ),
                      // customOrderTags (like "User not respond", "Order lost"...) saved in metadata
                      const SizedBox(height: 16),
                      ListTile(
                        contentPadding: const EdgeInsetsDirectional.only(start: 8),
                        enabled: false,
                        leading: const Icon(Ionicons.prism_outline),
                        title: const Text('التسميات الخاصة بالطلبات'),
                        trailing: TextButton.icon(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            TextEditingController name = TextEditingController();
                            TextEditingController color = TextEditingController(text: Colors.blue.value.toRadixString(16));
                            showDialog(
                              context: context,
                              builder: (context) {
                                return FormDailog(
                                  title: const Text('إضافة تسمية'),
                                  builder: (context, error) {
                                    return Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        // name
                                        TextFormField(
                                          controller: name,
                                          autovalidateMode: AutovalidateMode.onUserInteraction,
                                          decoration: InputDecoration(
                                            labelText: 'التسمية',
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            prefixIcon: const Icon(Ionicons.prism_outline),
                                            errorText: error?.getFieldMessage('name'),
                                          ),
                                          // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                                          validator: FormBuilderValidators.compose([
                                            FormBuilderValidators.required(),
                                            FormBuilderValidators.maxLength(100),
                                            FormBuilderValidators.minLength(1),
                                          ]),
                                        ),
                                        const SizedBox(height: 16),
                                        TextFormField(
                                          controller: color,
                                          autovalidateMode: AutovalidateMode.onUserInteraction,
                                          decoration: InputDecoration(
                                            labelText: 'اللون',
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            prefixIcon: const Icon(Ionicons.color_palette_outline),
                                            errorText: error?.getFieldMessage('color'),
                                            // sufix circle color
                                            suffixIcon: ListenableBuilder(
                                                listenable: color,
                                                builder: (context, _) {
                                                  return Icon(
                                                    Icons.circle,
                                                    color: Color(int.parse(color.text, radix: 16)),
                                                  );
                                                }),
                                          ),
                                          // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                                          validator: FormBuilderValidators.compose([
                                            FormBuilderValidators.required(),
                                            (v) {
                                              try {
                                                Color(int.parse(v!, radix: 16));
                                                return null;
                                              } catch (e) {
                                                return "القيمة غير صحيحة";
                                              }
                                            }
                                          ]),
                                          onTap: () async {
                                            var result = await showColorPickerDialog(
                                              context,
                                              Color(int.parse(color.text, radix: 16)),
                                            );
                                            color.text = result.value.toRadixString(16);
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                  onSubmitted: () async {
                                    await _update(
                                      StoreUpdate(
                                        // customOrderTags: [
                                        //   ...state.store!.customOrderTags,
                                        //   EmbaddedCustomOrderTag(
                                        //     name: name.text,
                                        //     metadata: metadata,
                                        //   ),
                                        // ]
                                        metadata: {
                                          ...state.store!.metadata,
                                          "customOrderTags": [
                                            ...state.store!.customOrderTags.map((e) => e.toJson()),
                                            CustomOrderTag(
                                              name: name.text,
                                              color: Color(int.parse(color.text, radix: 16)),
                                            ).toJson(),
                                          ],
                                        },
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                          label: Text(t.general.add),
                        ),
                      ),
                      // outlimed card
                      Card.outlined(
                        child: Column(
                          children: [
                            if (state.store?.customOrderTags.isNotEmpty == false)
                              const SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 16),
                                    Icon(
                                      Ionicons.prism_outline,
                                      size: 40,
                                    ),
                                    SizedBox(height: 16),
                                    Text('لم يتم اضافة تسميات بعد'),
                                    SizedBox(height: 16),
                                  ],
                                ),
                              )
                            else
                              for (var tag in state.store!.customOrderTags) ...[
                                ListTile(
                                  leading: Icon(
                                    Icons.circle,
                                    color: tag.color,
                                  ),
                                  title: Text(tag.name),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      // edit
                                      IconButton(
                                        icon: const Icon(Icons.edit),
                                        onPressed: () {
                                          final currentName = tag.name;
                                          TextEditingController name = TextEditingController(text: tag.name);
                                          TextEditingController color = TextEditingController(text: tag.color.value.toRadixString(16));
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return FormDailog(
                                                title: const Text('تعديل تسمية'),
                                                builder: (context, error) {
                                                  return Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      // name
                                                      TextFormField(
                                                        controller: name,
                                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                                                        decoration: InputDecoration(
                                                          labelText: 'التسمية',
                                                          border: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(12),
                                                          ),
                                                          prefixIcon: const Icon(Ionicons.prism_outline),
                                                          errorText: error?.getFieldMessage('name'),
                                                        ),
                                                        // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                                                        validator: FormBuilderValidators.compose([
                                                          FormBuilderValidators.required(),
                                                          FormBuilderValidators.maxLength(100),
                                                          FormBuilderValidators.minLength(1),
                                                        ]),
                                                      ),
                                                      const SizedBox(height: 16),
                                                      TextFormField(
                                                        controller: color,
                                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                                                        decoration: InputDecoration(
                                                          labelText: 'اللون',
                                                          border: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(12),
                                                          ),
                                                          prefixIcon: const Icon(Ionicons.color_palette_outline),
                                                          errorText: error?.getFieldMessage('color'),
                                                          // sufix circle color
                                                          suffixIcon: ListenableBuilder(
                                                              listenable: color,
                                                              builder: (context, _) {
                                                                return Icon(
                                                                  Icons.circle,
                                                                  color: Color(int.parse(color.text, radix: 16)),
                                                                );
                                                              }),
                                                        ),
                                                        // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                                                        validator: FormBuilderValidators.compose([
                                                          FormBuilderValidators.required(),
                                                          (v) {
                                                            try {
                                                              Color(int.parse(v!, radix: 16));
                                                              return null;
                                                            } catch (e) {
                                                              return "القيمة غير صحيحة";
                                                            }
                                                          }
                                                        ]),
                                                        onTap: () async {
                                                          var result = await showColorPickerDialog(
                                                            context,
                                                            Color(int.parse(color.text, radix: 16)),
                                                          );
                                                          color.text = result.value.toRadixString(16);
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                },
                                                onSubmitted: () async {
                                                  await _update(
                                                    StoreUpdate(
                                                      // customOrderTags: [
                                                      //   ...state.store!.customOrderTags,
                                                      //   EmbaddedCustomOrderTag(
                                                      //     name: name.text,
                                                      //     metadata: metadata,
                                                      //   ),
                                                      // ]
                                                      metadata: {
                                                        ...state.store!.metadata,
                                                        "customOrderTags": [
                                                          ...state.store!.customOrderTags.map((e) => (e.name != currentName
                                                                  ? e
                                                                  : CustomOrderTag(
                                                                      name: name.text,
                                                                      color: Color(int.parse(color.text, radix: 16)),
                                                                    ))
                                                              .toJson()),
                                                        ],
                                                      },
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          );
                                        },
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.delete),
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: const Text('حذف التسمية'),
                                                content: const Text('هل تريد حذف هذه التسمية؟'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: Text(t.general.cancel),
                                                  ),
                                                  TextButton(
                                                    onPressed: () async {
                                                      await _update(
                                                        StoreUpdate(
                                                          metadata: {
                                                            ...state.store!.metadata,
                                                            "customOrderTags": state.store!.customOrderTags.where((e) => e.name != tag.name).map((e) => e.toJson()).toList(),
                                                          },
                                                        ),
                                                      );
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
                                ),
                                const Padding(padding: EdgeInsetsDirectional.only(start: kMinInteractiveDimension), child: Divider()),
                              ],
                          ],
                        ),
                      ),
                      // التصنيفات
                      const SizedBox(height: 16),
                      ListTile(
                        contentPadding: const EdgeInsetsDirectional.only(start: 8),
                        enabled: false,
                        leading: const Icon(Ionicons.list_outline),
                        title: const Text('التصنيفات'),
                        trailing: TextButton.icon(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            TextEditingController name = TextEditingController();
                            TextEditingController description = TextEditingController();
                            var photoUrl = ValueNotifier<String?>(null);
                            var ondarkPhotoUrl = ValueNotifier<String?>(null);
                            var metadata = {
                              "id": cuid(8),
                            };

                            showDialog(
                              context: context,
                              builder: (context) {
                                return FormDailog(
                                  title: const Text('إضافة تصنيف'),
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
                                                  maxHeight: 200,
                                                  allowCompression: false,
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
                                                  maxHeight: 200,
                                                  allowCompression: false,
                                                  cuption: const Text("صورة الوضع الداكن"),
                                                  onUpload: (url) => ondarkPhotoUrl.value = url,
                                                  onCancel: () => ondarkPhotoUrl.value = null,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 16),
                                        // name
                                        TextFormField(
                                          controller: name,
                                          autovalidateMode: AutovalidateMode.onUserInteraction,
                                          decoration: InputDecoration(
                                            labelText: 'إسم التصنيف',
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            prefixIcon: const Icon(Ionicons.library),
                                            errorText: error?.getFieldMessage('category'),
                                          ),
                                          validator: FormBuilderValidators.compose([
                                            FormBuilderValidators.required(),
                                            FormBuilderValidators.maxLength(32),
                                          ]),
                                        ),
                                        const SizedBox(height: 16),
                                        // description
                                        TextFormField(
                                          controller: description,
                                          autovalidateMode: AutovalidateMode.onUserInteraction,
                                          decoration: InputDecoration(
                                            labelText: 'وصف قصير للتصنيف',
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            prefixIcon: const Icon(Ionicons.document_text),
                                            errorText: error?.getFieldMessage('description'),
                                          ),
                                          validator: FormBuilderValidators.compose([
                                            FormBuilderValidators.maxLength(100),
                                          ]),
                                        ),
                                      ],
                                    );
                                  },
                                  onSubmitted: () async {
                                    await _update(
                                      StoreUpdate(
                                        categories: [
                                          ...state.store!.categories,
                                          EmbaddedCategory(
                                            name: name.text,
                                            description: description.text,
                                            photoUrl: photoUrl.value,
                                            ondarkPhotoUrl: ondarkPhotoUrl.value,
                                            metadata: metadata,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                          label: Text(t.general.add),
                        ),
                      ),
                      // outlimed card
                      Card.outlined(
                        child: Column(
                          children: [
                            if (state.store?.categories == null || state.store!.categories.isEmpty)
                              const SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 16),
                                    Icon(
                                      Ionicons.list_outline,
                                      size: 40,
                                    ),
                                    SizedBox(height: 16),
                                    Text('لم يتم اضافة تصنيفات بعد'),
                                    SizedBox(height: 16),
                                  ],
                                ),
                              )
                            else
                              ...state.store!.categories.map((category) {
                                return ListTile(
                                  leading: const Icon(Ionicons.list_outline),
                                  title: Text(category.name),
                                  subtitle: const Text('تصنيف المتجر'),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.delete),
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: const Text('حذف التصنيف'),
                                                content: const Text('هل تريد حذف هذا التصنيف؟'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: Text(t.general.cancel),
                                                  ),
                                                  TextButton(
                                                    onPressed: () async {
                                                      await _update(
                                                        StoreUpdate(
                                                          categories: state.store!.categories.where((e) => e != category).toList(),
                                                        ),
                                                      );
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
                                      IconButton(
                                        icon: const Icon(Icons.edit),
                                        onPressed: () {
                                          TextEditingController name = TextEditingController(text: category.name);
                                          TextEditingController description = TextEditingController(text: category.description);
                                          var photoUrl = ValueNotifier<String?>(category.photoUrl);
                                          var ondarkPhotoUrl = ValueNotifier<String?>(category.ondarkPhotoUrl);
                                          var metadata = category.metadata;

                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return FormDailog(
                                                title: const Text('تعديل تصنيف'),
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
                                                                maxHeight: 200,
                                                                allowCompression: false,
                                                                initialValue: photoUrl.value,
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
                                                                maxHeight: 200,
                                                                allowCompression: false,
                                                                initialValue: ondarkPhotoUrl.value,
                                                                cuption: const Text("صورة الوضع الداكن"),
                                                                onUpload: (url) => ondarkPhotoUrl.value = url,
                                                                onCancel: () => ondarkPhotoUrl.value = null,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 16),
                                                      // name
                                                      TextFormField(
                                                        controller: name,
                                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                                                        decoration: InputDecoration(
                                                          labelText: 'إسم التصنيف',
                                                          border: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(12),
                                                          ),
                                                          prefixIcon: const Icon(Ionicons.library),
                                                          errorText: error?.getFieldMessage('category'),
                                                        ),
                                                        validator: FormBuilderValidators.compose([
                                                          FormBuilderValidators.required(),
                                                          FormBuilderValidators.maxLength(32),
                                                        ]),
                                                      ),
                                                      const SizedBox(height: 16),
                                                      // description
                                                      TextFormField(
                                                        controller: description,
                                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                                                        decoration: InputDecoration(
                                                          labelText: 'وصف قصير للتصنيف',
                                                          border: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(12),
                                                          ),
                                                          prefixIcon: const Icon(Ionicons.document_text),
                                                          errorText: error?.getFieldMessage('description'),
                                                        ),
                                                        validator: FormBuilderValidators.compose([
                                                          FormBuilderValidators.maxLength(100),
                                                        ]),
                                                      ),
                                                    ],
                                                  );
                                                },
                                                onSubmitted: () async {
                                                  await _update(
                                                    StoreUpdate(
                                                      categories: [
                                                        ...state.store!.categories.where((e) => e != category).toList(),
                                                        EmbaddedCategory(
                                                          name: name.text,
                                                          description: description.text,
                                                          photoUrl: photoUrl.value,
                                                          ondarkPhotoUrl: ondarkPhotoUrl.value,
                                                          metadata: metadata,
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              }).toList()
                          ],
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
                            showShippingMethodDailog(context, storeId: state.store!.id);
                          },
                          label: Text(t.general.add),
                        ),
                      ),
                      // outlimed card
                      Card.outlined(
                        child: Column(
                          children: [
                            if (state.shippingMethods == null || state.shippingMethods!.isEmpty)
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
                            for (var shipping in state.shippingMethods!)
                              ListTile(
                                leading: const Icon(Icons.delivery_dining_outlined),
                                title: Text(shipping.name),
                                subtitle: Text('التوصيل: ${shipping.forks}${t.general.defaultCurrency.symbol}'),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.edit),
                                      onPressed: () {
                                        showShippingMethodDailog(
                                          context,
                                          storeId: state.store!.id,
                                          shippingMethod: shipping,
                                        );
                                      },
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.delete),
                                      onPressed: () {
                                        showDeleteShippingMethodDailog(context, storeId: state.store!.id, shippingMethod: shipping);
                                      },
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
                      // App version
                      const SizedBox(height: 16),
                      FutureBuilder(
                        future: PackageInfo.fromPlatform(),
                        builder: (context,s) {
                          String version = "--";
                          String buildNumber = "--";
                          if (s.hasData && s.data!=null) {
                            version = s.data!.version;
                            buildNumber = s.data!.buildNumber;
                          }
                          return ListTile(
                            contentPadding: const EdgeInsetsDirectional.only(start: 8),
                            enabled: false,
                            leading: const Icon(Icons.info_outline),
                            title: const Text('App Version'),
                            subtitle: Text('Version: $version\nBuild: $buildNumber'),
                          );
                        }
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

  Future<void> _update(StoreUpdate data) async {
    if (mounted) context.showLoadingSnackBar(Text(t.general.update + "..."));
    await ff.stores.update(id: widget.store.id, data: data);
    // context.read<MarchentStoresBloc>().add(
    //   MarchentStoresEvent.update(
    //     id: widget.store.id,
    //     data: data,
    //   ),
    // );
    if (mounted) context.showSuccessSnackBar(const Text('تم التحديث بنجاح'));
  }
}

void showShippingMethodDailog(BuildContext context, {required String storeId, ShippingMethod? shippingMethod}) async {
  showDialog(
    context: context,
    useRootNavigator: false,
    builder: (context) {
      return ShippingMethodForm(
        storeId: storeId,
        shippingMethod: shippingMethod,
      );
      // DraggableScrollableSheet(
      //     expand: false,
      //     builder: (BuildContext context, ScrollController scrollController) {
      //       return Scaffold(
      //         appBar: AppBar(
      //           title: shippingMethod == null ? const Text('إضافة طريقة شحن') : const Text('تعديل طريقة شحن'),
      //         ),
      //         body: ListView(
      //           controller: scrollController,
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.all(24.0),
      //               child: FormDailog(
      //                 frame: false,
      //                 builder: (context, error) {
      //                   return Column(
      //                     mainAxisSize: MainAxisSize.min,
      //                     children: [
      //                       // photos
      //                       Row(
      //                         children: [
      //                           Expanded(
      //                             child: Theme(
      //                               data: getTheme(brightness: Brightness.light),
      //                               child: ImagePickerAndUploader(
      //                                 maxHeight: 200,
      //                                 allowCompression: false,
      //                                 cuption: const Text("صورة العادية"),
      //                                 onUpload: (url) => photoUrl.value = url,
      //                                 onCancel: () => photoUrl.value = null,
      //                               ),
      //                             ),
      //                           ),
      //                           const SizedBox(width: 16),
      //                           Expanded(
      //                             child: Theme(
      //                               data: getTheme(brightness: Brightness.dark),
      //                               child: ImagePickerAndUploader(
      //                                 maxHeight: 200,
      //                                 allowCompression: false,
      //                                 cuption: const Text("صورة الوضع الداكن"),
      //                                 onUpload: (url) => ondarkPhotoUrl.value = url,
      //                                 onCancel: () => ondarkPhotoUrl.value = null,
      //                               ),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                       const SizedBox(height: 16),
      //                       const ListTile(
      //                         enabled: false,
      //                         leading: Icon(Icons.info_outline),
      //                         title: Text("البيانات الوصفية"),
      //                       ),
      //                       // name
      //                       TextFormField(
      //                         controller: name,
      //                         autovalidateMode: AutovalidateMode.onUserInteraction,
      //                         decoration: InputDecoration(
      //                           labelText: 'إسم وسيلة الشحن',
      //                           border: OutlineInputBorder(
      //                             borderRadius: BorderRadius.circular(12),
      //                           ),
      //                           prefixIcon: const Icon(Ionicons.library),
      //                           errorText: error?.getFieldMessage('category'),
      //                         ),
      //                         validator: FormBuilderValidators.compose([
      //                           FormBuilderValidators.required(),
      //                           FormBuilderValidators.maxLength(32),
      //                         ]),
      //                       ),
      //                       const ListTile(
      //                         enabled: false,
      //                         leading: Icon(Icons.remove_red_eye),
      //                         title: Text("الضهور"),
      //                       ),
      //                       // const SizedBox(height: 16),
      //                       // TODO: dropdown for status and policy
      //                       // Status Dropdown
      //                       DropdownButtonFormField(
      //                         decoration: InputDecoration(
      //                           labelText: 'الحالة',
      //                           border: OutlineInputBorder(
      //                             borderRadius: BorderRadius.circular(12),
      //                           ),
      //                           prefixIcon: const Icon(Icons.visibility),
      //                         ),
      //                         items: ShippingMethodStatus.values.map((value) {
      //                           return DropdownMenuItem(
      //                             value: value,
      //                             child: Text(value.name),
      //                           );
      //                         }).toList(),
      //                         value: status.value,
      //                         onChanged: (value) => value == null ? null : status.value = value,
      //                       ),
      //                       const SizedBox(height: 16),
      //                       DropdownButtonFormField(
      //                         decoration: InputDecoration(
      //                           labelText: 'سياسة الضهور',
      //                           border: OutlineInputBorder(
      //                             borderRadius: BorderRadius.circular(12),
      //                           ),
      //                           prefixIcon: const Icon(Icons.visibility),
      //                         ),
      //                         items: ShippingMethodPolicy.values.map((value) {
      //                           return DropdownMenuItem(
      //                             value: value,
      //                             child: Text(value.name),
      //                           );
      //                         }).toList(),
      //                         value: policy.value,
      //                         onChanged: (value) => value == null ? null : policy.value = value,
      //                       ),
      //                       const SizedBox(height: 16),
      //                       const ListTile(
      //                         enabled: false,
      //                         leading: Icon(Icons.wallet),
      //                         title: Text("اسعار التوصيل حسب الولاية"),
      //                       ),
      //                       for (var i = 0; i < rates.length; i++) ...[
      //                         TextFormField(
      //                           controller: rates.entries.elementAt(i).value,
      //                           autovalidateMode: AutovalidateMode.onUserInteraction,
      //                           decoration: InputDecoration(
      //                             labelText: "${rates.entries.elementAt(i).key} ${(i + 1).toString().padLeft(2, '0')}",
      //                             border: OutlineInputBorder(
      //                               borderRadius: BorderRadius.circular(12),
      //                             ),
      //                             prefixIcon: const Icon(Icons.delivery_dining),
      //                           ),
      //                           validator: FormBuilderValidators.compose([
      //                             FormBuilderValidators.numeric(),
      //                             FormBuilderValidators.max(100000),
      //                             FormBuilderValidators.min(0)
      //                           ]),
      //                         ),
      //                         const SizedBox(height: 8),
      //                       ],
      //                     ],
      //                   );
      //                 },
      //                 onSubmitted: () async {
      //                   var shippingMethod = await ff.shippingMethods.create(data: ShippingMethodCreate(name: name.text, storeId: store.id, status: ShippingMethodStatus.published, policy: ShippingMethodPolicy.private, rates: []));
      //                   context.read<MarchentStoresBloc>().add(MarchentStoresEvent.addShippingMethod(shippingMethod));
      //                 },
      //               ),
      //             ),
      //           ],
      //         ),
      //       );
      //     });
    },
  );
}

void showDeleteShippingMethodDailog(BuildContext context, {required String storeId, required ShippingMethod shippingMethod}) async {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('حذف طريقة الشحن'),
        content: const Text('هل تريد حذف هذه الطريقة؟'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(t.general.cancel),
          ),
          TextButton(
            onPressed: () async {
              await ff.shippingMethods.delete(id: shippingMethod.id);
              context.read<MarchentStoresBloc>().add(MarchentStoresEvent.removeShippingMethod(shippingMethod.id));
              context.showInfoSnackBar(const Text("تم حذف طريقة الشحن"));
              Navigator.of(context).pop();
            },
            child: Text(t.general.delete),
          ),
        ],
      );
    },
  );
}

class ShippingMethodForm extends StatefulWidget {
  final String storeId;
  final ShippingMethod? shippingMethod;

  const ShippingMethodForm({
    super.key,
    required this.storeId,
    this.shippingMethod,
  });

  @override
  State<ShippingMethodForm> createState() => _ShippingMethodFormState();
}

class _ShippingMethodFormState extends State<ShippingMethodForm> {
  late TextEditingController name = TextEditingController(text: widget.shippingMethod?.name);
  late var photoUrl = (widget.shippingMethod?.logoUrl);
  late var ondarkPhotoUrl = (widget.shippingMethod?.ondarkLogoUrl);
  late var policy = (widget.shippingMethod?.policy ?? ShippingMethodPolicy.private);

  final _searchController = TextEditingController();
  late final states = getAllStates();
  late final List<
      ({
        TextEditingController home,
        TextEditingController desk,
      })> rates = List.generate(
    states.length,
    (index) {
      String? home, desk;
      // if (widget.store.defaultShippingRates.length > index) {
      //   // desk = widget.store.defaultShippingRates[index]?[0]?.toString();
      //   // home = widget.store.defaultShippingRates[index]?[1]?.toString();
      // }
      if (widget.shippingMethod?.rates != null && widget.shippingMethod!.rates.length > index) {
        desk = widget.shippingMethod?.rates[index]?[0]?.toString();
        home = widget.shippingMethod?.rates[index]?[1]?.toString();
      }
      return (
        home: TextEditingController(text: home),
        desk: TextEditingController(text: desk),
      );
    },
  );

  var status = FutureStatus.initial;
  Exception? error;

  void _save() async {
    if (status == FutureStatus.inProgress) {
      return;
    }
    setState(() {
      error = null;
      status = FutureStatus.inProgress;
    });
    var rates = List.generate(
      states.length,
      (index) => [
        int.tryParse(this.rates[index].desk.text),
        int.tryParse(this.rates[index].home.text),
      ],
    );
    try {
      await Future.delayed(const Duration(seconds: 1));
      if (!mounted) return;
      if (widget.shippingMethod == null) {
        await ff.shippingMethods.create(
          data: ShippingMethodCreate(
            name: name.text,
            storeId: widget.storeId,
            status: ShippingMethodStatus.published,
            policy: policy,
            rates: rates,
            logoUrl: photoUrl,
            ondarkLogoUrl: ondarkPhotoUrl,
          ),
        );
        // pop
        Navigator.of(context).pop();
      } else {
        await ff.shippingMethods.update(
          id: widget.shippingMethod!.id,
          data: ShippingMethodUpdate(
            name: name.text,
            status: ShippingMethodStatus.published,
            policy: policy,
            rates: rates,
            logoUrl: photoUrl,
            ondarkLogoUrl: ondarkPhotoUrl,
          ),
        );
      }
      setState(() {
        status = FutureStatus.success;
      });
      context.showSuccessSnackBar(const Text('تم تحديث الأسعار'));
    } catch (e) {
      setState(() {
        status = FutureStatus.error;
        error = e is Exception ? e : Exception(e.toString());
      });
      context.showErrorSnackBar(Column(
        children: [
          const Text('حدث خطأ أثناء تحديث الأسعار'),
          if (error != null) Text(error.toString()),
        ],
      ));
    }
  }

  void reset() {
    for (var i = 0; i < rates.length; i++) {
      // rates[i].desk.text = (widget.store.defaultShippingRates[i]?[0]).toString();
      // rates[i].home.text = (widget.store.defaultShippingRates[i]?[1]).toString();
      rates[i].desk.text = (widget.shippingMethod?.rates[i]?[0])?.toString() ?? "";
      rates[i].home.text = (widget.shippingMethod?.rates[i]?[1])?.toString() ?? "";
    }
  }

  String? getErrorText(int x, int y) {
    if (error is FeeefValidationException) {
      return (error as FeeefValidationException).getFieldMessage('defaultShippingRates.$x.$y');
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: true,
      snap: true,
      shouldCloseOnMinExtent: true,
      minChildSize: 0.5,
      builder: (BuildContext context, ScrollController scrollController) {
        return Scaffold(
          body: FlexTable(
            // selectable: true,
            configs: const [
              FlexTableItemConfig.flex(1),
              FlexTableItemConfig.flex(1),
              FlexTableItemConfig.flex(1),
            ],
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverAppBar(
                  leadingWidth: kMinInteractiveDimension,
                  titleSpacing: 0,
                  // centerTitle: false,
                  title: Row(
                    children: [
                      widget.shippingMethod == null ? const Text('إضافة طريقة شحن') : const Text('تعديل طريقة شحن'),

                      const SizedBox(width: 8),
                      const Spacer(),
                      // if changes are made to the fees show cancel button (reset)
                      // if (unSavedChanges()) ...[
                      IconButton(
                        icon: const Icon(Ionicons.refresh_outline),
                        onPressed: reset,
                      ),
                      const SizedBox(width: 8),
                      // save
                      FilledButton.icon(
                        icon: status == FutureStatus.inProgress
                            ? SizedBox(
                                width: 16,
                                height: 16,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation(
                                    Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                              )
                            : const Icon(Icons.save),
                        label: Text(t.general.save),
                        onPressed: _save,
                      ),
                      const SizedBox(width: 8),
                      // ]
                    ],
                  ),
                  pinned: true,
                ),

                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        // error alert
                        if (error != null) ...[
                          AlertCard.error(
                            title: error is FeeefValidationException ? Text((error as FeeefValidationException).messages.join("\n")) : Text(error.toString()),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
                // text input for name of shipping method
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Card.filled(
                      child: Column(
                        children: [
                          const ListTile(
                            leading: Icon(Icons.delivery_dining_outlined),
                            title: Text('إسم وسيلة الشحن'),
                            subtitle: Text('سيستخدم هذا الإسم لعرض وسيلة الشحن وتحديده'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: TextFormField(
                              controller: name,
                              decoration: const InputDecoration(
                                labelText: 'إسم وسيلة الشحن',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Ionicons.library),
                              ),
                            ),
                          ),
                        ],
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
                      SizedBox(
                        height: 40,
                        child: Container(
                          // border bottom
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: FlexTableItem(
                              children: [
                                Text(t.dashboard.sections.shipping.state),

                                ForScreen(
                                  widthOf: ForScreenWidthOf.mediaQuery,
                                  sm: Row(
                                    children: [
                                      Text(t.dashboard.sections.shipping.toDesk),
                                      const Icon(Icons.data_array_rounded),
                                      Text(t.dashboard.sections.shipping.toHome),
                                    ],
                                  ),
                                  md: Row(
                                    children: [
                                      Expanded(child: Text(t.dashboard.sections.shipping.toDesk)),
                                      const SizedBox(width: 8),
                                      Expanded(child: Text(t.dashboard.sections.shipping.toHome)),
                                    ],
                                  ),
                                ),

                                // Text(t.dashboard.sections.shipping.toDesk),
                                // Text(t.dashboard.sections.shipping.toHome),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: (status == FutureStatus.inProgress)
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
                // note
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Card.filled(
                      color: Theme.of(context).colorScheme.primary,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.info_outline, color: Theme.of(context).colorScheme.onPrimary),
                            title: Text(
                              t.dashboard.sections.shipping.note.title,
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w800, color: Theme.of(context).colorScheme.onPrimary),
                            ),
                            subtitle: Text(
                              t.dashboard.sections.shipping.note.subtitle,
                              style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: [
                                // import/export
                                Tooltip(
                                  message: 'تصدير البيانات إلى ملف CSV',
                                  child: FilledButton.icon(
                                    onPressed: () async {
                                      var states = getAllStates(lang: AlgeriaScript.latin);
                                      List<List<dynamic>> data = [
                                        [
                                          'wilaya',
                                          'toDesk',
                                          'toHome'
                                        ],
                                        for (var i = 0; i < states.length; i++)
                                          [
                                            states.elementAt(i).name,
                                            rates[i].desk.text,
                                            rates[i].home.text,
                                          ],
                                      ];
                                      var dir = await saveCsvFile(
                                        name: 'shipping_rates.csv',
                                        data: data,
                                      );
                                      if (dir != null) {
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                            content: Text('تم حفظ الملف في $dir'),
                                          ),
                                        );
                                      }
                                    },
                                    icon: const Icon(Ionicons.cloud_upload_outline),
                                    label: Text(t.general.export),
                                  ),
                                ),
                                Tooltip(
                                  message: 'استيراد البيانات من ملف CSV أو شركة شحن',
                                  child: FilledButton.icon(
                                    onPressed: () async {
                                      // import the exported file using the same format and FilePicker
                                      // then printed it
                                      var result = await FilePicker.platform.pickFiles(
                                        type: FileType.custom,
                                        allowedExtensions: [
                                          'csv'
                                        ],
                                      );
                                      if (result != null) {
                                        PlatformFile file = result.files.first;
                                        var xfile = XFile(file.path!);
                                        var bytes = await xfile.readAsBytes();
                                        var csv = String.fromCharCodes(bytes);
                                        // var decoded = const CsvToListConverter().convert(
                                        //   csv,
                                        //   shouldParseNumbers: true,
                                        // );
                                        var decoded = csv.split('\n').map(
                                          (e)=>e.split(",").map((e2)=>int.tryParse(e2.trim()))
                                        );
                                        for (var i = 0; i < decoded.length - 1; i++) {
                                          var toDesk = decoded.elementAt(i + 1).elementAt(1);
                                          var toHome = decoded.elementAt(i + 1).elementAt(2);
                                          rates[i].desk.text = toDesk.toString();
                                          rates[i].home.text = toHome.toString();
                                        }
                                        context.showSuccessSnackBar(const Text('تم استيراد البيانات بنجاح'));
                                      }
                                    },
                                    icon: const Icon(Ionicons.cloud_download),
                                    label: Text(t.general.import),
                                  ),
                                ),
                                const Spacer(),
                                // set all (quick edit)
                                BlocBuilder<MarchentStoresBloc, MarchentStoresState>(
                                  builder: (context, state) {
                                    final store = state.store!;
                                    var loading = false;
                                    return StatefulBuilder(builder: (context, setState) {
                                      return Tooltip(
                                        message: 'تعديل الأسعار لجميع الولايات',
                                        child: MenuAnchor(
                                          builder: (context, controller, child) => IconButton.filled(
                                            onPressed: () {
                                              if (controller.isOpen) {
                                                controller.close();
                                              } else {
                                                controller.open();
                                              }
                                            },
                                            icon: loading
                                                ? const SizedBox.square(
                                                    dimension: 20,
                                                    child: CircularProgressIndicator(
                                                      strokeWidth: 2,
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                : const Icon(Icons.more_vert),
                                          ),
                                          menuChildren: [
                                            MenuItemButton(
                                              leadingIcon: const Icon(Icons.done_all_rounded),
                                              child: const Text("ملئ الكل بقيمة"),
                                              onPressed: () {
                                                showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    var desk = TextEditingController();
                                                    var home = TextEditingController();
                                                    return AlertDialog(
                                                      title: const Text('تعديل الأسعار'),
                                                      content: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        children: [
                                                          const AlertCard.info(
                                                            title: Text('تعديل الأسعار لجميع الولايات'),
                                                            subtitle: Text('يمكنك تعديل الأسعار لجميع الولايات في نفس الوقت'),
                                                          ),
                                                          const SizedBox(height: 8),
                                                          TextFormField(
                                                            controller: desk,
                                                            autovalidateMode: AutovalidateMode.onUserInteraction,
                                                            decoration: InputDecoration(
                                                              isDense: true,
                                                              border: InputBorder.none,
                                                              labelText: t.dashboard.sections.shipping.toDesk,
                                                              prefixIcon: const Icon(Ionicons.business_outline),
                                                            ),
                                                            validator: FormBuilderValidators.compose([
                                                              FormBuilderValidators.numeric(),
                                                            ]),
                                                          ),
                                                          const SizedBox(height: 8),
                                                          TextFormField(
                                                            controller: home,
                                                            autovalidateMode: AutovalidateMode.onUserInteraction,
                                                            decoration: InputDecoration(
                                                              isDense: true,
                                                              border: InputBorder.none,
                                                              labelText: t.dashboard.sections.shipping.toHome,
                                                              prefixIcon: const Icon(Ionicons.home_outline),
                                                            ),
                                                            validator: FormBuilderValidators.compose([
                                                              FormBuilderValidators.numeric(),
                                                            ]),
                                                          ),
                                                        ],
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
                                                            for (var i = 0; i < rates.length; i++) {
                                                              rates[i].desk.text = desk.text;
                                                              rates[i].home.text = home.text;
                                                            }
                                                            Navigator.of(context).pop();
                                                          },
                                                          child: Text(t.general.save),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                            // from procolis
                                            if (store.integrations.yalidine != null)
                                              MenuItemButton(
                                                leadingIcon: Assets.integrations.procolis.icon.image(height: 20,width: 20, color: Colors.blueGrey),
                                                child: const Text("نسخ من procolis"),
                                                onPressed: () async {
                                                  setState(() {
                                                    loading = true;
                                                  });
                                                  var fees = await ProcolisDeliveryIntegrationApi(
                                                    client: ff.client,
                                                    integration: store.integrations.procolis!,
                                                    storeId: store.id,
                                                  ).getDeliveryFees();
                                                  for (var i = 0; i < fees.length; i++) {
                                                    rates[i].home.text = fees[i]?[0]?.toString() ?? "";
                                                    rates[i].desk.text = fees[i]?[1]?.toString() ?? "";
                                                  }
                                                  context.showInfoSnackBar(const Text('تم نسخ الأسعار من procolis'));
                                                  setState(() {
                                                    loading = false;
                                                  });
                                                },
                                              ),
                                            // from yalidine
                                            if (store.integrations.yalidine != null)
                                              MenuItemButton(
                                                leadingIcon: Assets.integrations.yalidine.icon.image(height: 20,width: 20, color: Colors.red),
                                                child: const Text("نسخ من yalidine"),
                                                onPressed: () async {
                                                  setState(() {
                                                    loading = true;
                                                  });
                                                  var fees = await YalidineDeliveryIntegrationApi(
                                                    client: ff.client,
                                                    integration: store.integrations.yalidine!,
                                                    storeId: store.id,
                                                  ).getDeliveryFees();
                                                  for (var i = 0; i < fees.length; i++) {
                                                    rates[i].home.text = fees[i]?[0]?.toString() ?? "";
                                                    rates[i].desk.text = fees[i]?[1]?.toString() ?? "";
                                                  }
                                                  context.showInfoSnackBar(const Text('تم نسخ الأسعار من yalidine'));
                                                  setState(() {
                                                    loading = false;
                                                  });
                                                },
                                              ),
                                            // from echotrak
                                            if (store.integrations.echotrak != null)
                                              MenuItemButton(
                                                leadingIcon: Assets.integrations.ecotrack.icon.image(height: 20,width: 20, color: Colors.blue),
                                                child: const Text("نسخ من echotrak"),
                                                onPressed: () async {
                                                  setState(() {
                                                    loading = true;
                                                  });
                                                  var fees = await EchotrakDeliveryIntegrationApi(
                                                    client: ff.client,
                                                    integration: store.integrations.echotrak!,
                                                    storeId: store.id,
                                                  ).getDeliveryFees();
                                                  for (var i = 0; i < fees.length; i++) {
                                                    rates[i].home.text = fees[i]?[0]?.toString() ?? "";
                                                    rates[i].desk.text = fees[i]?[1]?.toString() ?? "";
                                                  }
                                                  context.showInfoSnackBar(const Text('تم نسخ الأسعار من echotrak'));
                                                  setState(() {
                                                    loading = false;
                                                  });
                                                },
                                              ),
                                          ],
                                        ),
                                      );
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ModelTile(
                          isOdd: index.isOdd,
                          child: FlexTableItem(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).colorScheme.primaryContainer,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Center(child: Text(states.elementAt(index).code)),
                                  ),
                                  const SizedBox(width: 8),
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      // states.elementAt(index).name
                                      t.states[index],
                                    ),
                                  ),
                                ],
                              ),
                              ForScreen(
                                widthOf: ForScreenWidthOf.mediaQuery,
                                sm: Column(
                                  children: [
                                    TextFormField(
                                      controller: rates[index].desk,
                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none,
                                        labelText: 'للمكتب',
                                        prefixIcon: const Icon(Ionicons.business_outline),
                                        errorText: getErrorText(index, 0),
                                      ),
                                      validator: FormBuilderValidators.compose([
                                        FormBuilderValidators.numeric(),
                                      ]),
                                    ),
                                    const SizedBox(height: 8),
                                    TextFormField(
                                      controller: rates[index].home,
                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none,
                                        labelText: 'للبيت',
                                        prefixIcon: const Icon(Ionicons.home_outline),
                                        errorText: getErrorText(index, 1),
                                      ),
                                      validator: FormBuilderValidators.compose([
                                        FormBuilderValidators.numeric(),
                                      ]),
                                    ),
                                  ],
                                ),
                                md: Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller: rates[index].desk,
                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          border: InputBorder.none,
                                          labelText: t.dashboard.sections.shipping.toDesk,
                                          prefixIcon: const Icon(Ionicons.business_outline),
                                          errorText: getErrorText(index, 0),
                                        ),
                                        validator: FormBuilderValidators.compose([
                                          FormBuilderValidators.numeric(),
                                        ]),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: TextFormField(
                                        controller: rates[index].home,
                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          border: InputBorder.none,
                                          labelText: t.dashboard.sections.shipping.toHome,
                                          prefixIcon: const Icon(Ionicons.home_outline),
                                          errorText: getErrorText(index, 1),
                                        ),
                                        validator: FormBuilderValidators.compose([
                                          FormBuilderValidators.numeric(),
                                        ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // TextFormField(
                              //   controller: rates[index].desk,
                              //   autovalidateMode: AutovalidateMode.onUserInteraction,
                              //   decoration: InputDecoration(
                              //     isDense: true,
                              //     border: InputBorder.none,
                              //     labelText: 'للمكتب',
                              //     prefixIcon: Icon(Ionicons.business_outline),
                              //     errorText: getErrorText(index, 0),
                              //   ),
                              //   validator: FormBuilderValidators.compose([
                              //     FormBuilderValidators.numeric(),
                              //   ]),
                              // ),
                              // TextFormField(
                              //   controller: rates[index].home,
                              //   autovalidateMode: AutovalidateMode.onUserInteraction,
                              //   decoration: InputDecoration(
                              //     isDense: true,
                              //     border: InputBorder.none,
                              //     labelText: 'للبيت',
                              //     prefixIcon: Icon(Ionicons.home_outline),
                              //     errorText: getErrorText(index, 1),
                              //   ),
                              //   validator: FormBuilderValidators.compose([
                              //     FormBuilderValidators.numeric(),
                              //   ]),
                              // ),
                            ],
                          ),
                        ),
                      );
                    },
                    childCount: rates.length,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 80,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
