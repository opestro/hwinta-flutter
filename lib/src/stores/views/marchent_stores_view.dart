import 'dart:math';

import 'package:feature_discovery/feature_discovery.dart';
import 'package:feeef_marchant/feeef/core/validation/validation_exception.dart';
import 'package:feeef_marchant/feeef/core/widgets/alerts.dart';
import 'package:feeef_marchant/feeef/interfaces/embadded/store.dart';
import 'package:feeef_marchant/helpers.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/main.dart';
import 'package:feeef_marchant/src/core/enums.dart';
import 'package:feeef_marchant/src/core/strings.dart';
import 'package:feeef_marchant/src/core/validators.dart';
import 'package:feeef_marchant/src/stores/bloc/marchent_stores_bloc.dart';
import 'package:feeef_marchant/src/stores/views.dart';
import 'package:feeef_marchant/src/uploader/cubit/uploader_cubit.dart';
import 'package:feeef_marchant/src/uploader/uploader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lib/lib.dart';
import 'package:faker_dart/faker_dart.dart';

import '../../../feeef/stores/models/store.dart';
import '../bloc/marchent_stores_state.dart';

final faker = Faker.instance..setLocale(FakerLocaleType.ar);

class MarchentStores extends StatefulWidget {
  final bool showCreateStore;
  const MarchentStores({super.key, this.showCreateStore = false});

  @override
  State<MarchentStores> createState() => _MarchentStoresState();
}

class _MarchentStoresState extends State<MarchentStores> {
  @override
  void initState() {
    super.initState();
    context.read<MarchentStoresBloc>().add(const MarchentStoresEvent.load());
    if (widget.showCreateStore) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        _showCreateStoreDialog(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // fetch stores
    var width = MediaQuery.sizeOf(context).width;
    var perRow = forScreen(width: width, sm: 1, md: 2, lg: 3)!;
    var maxWidth = forScreen<double>(width: width, md: 600, lg: 960)!;

    var footerColumns = [
      for (int i = 0; i < 3; i++)
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("المساعدة", style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text("الأسئلة الشائعة", style: Theme.of(context).textTheme.bodySmall),
            Text("الدعم الفني", style: Theme.of(context).textTheme.bodySmall),
            Text("التواصل معنا", style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            Image.asset(
              "assets/feeef/feeef_logo_mask.png",
              height: 30,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 12),
            Text(t.appName + " (BETA)"),
          ],
        ),
        actions: const [
          AppBarActions(),
          SizedBox(width: 8),
        ],
      ),
      body: BlocBuilder<MarchentStoresBloc, MarchentStoresState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Center(
              child: Container(
                constraints: BoxConstraints(maxWidth: maxWidth),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    ListTile(
                      leading: const Icon(Ionicons.storefront),
                      title: Text(t.dashboard.title),
                      subtitle: Text("${state.stores.length} ${t.stores.label}"),
                      trailing: Tooltip(
                        message: t.general.refresh,
                        child: IconButton(
                          icon: state.status == MarchentStoresStatus.loading
                              ? const SizedBox.square(
                                  dimension: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                )
                              : const Icon(Ionicons.refresh),
                          onPressed: state.status == MarchentStoresStatus.loading
                              ? null
                              : () {
                                  context.read<MarchentStoresBloc>().add(const MarchentStoresEvent.load());
                                },
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: perRow,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 2,
                      ),
                      itemCount: 1 + (state.status == MarchentStoresStatus.loading ? 5 : state.stores.length),
                      // itemBuilder: (context, index) => index == 0 ? const AddStoreCard() : const StoreCard(),
                      itemBuilder: (context, index) => index == 0
                          ? const AddStoreCard()
                          : StoreCard(
                              store: state.status == MarchentStoresStatus.loading ? null : state.stores[index - 1],
                            ),
                    ),
                    const SizedBox(height: 40),
                    // footer
                    Container(
                      width: double.infinity,
                      // width: forScreen(width: width, md: 200, lg: 300),
                      child: Card(
                        color: Colors.transparent,
                        shadowColor: Colors.transparent,
                        // outlined
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: Theme.of(context).dividerColor, width: 1),
                        ),
                        child: Column(
                          children: [
                            // responsive
                            // Flex(
                            //   mainAxisSize: MainAxisSize.min,
                            //   key: ValueKey(forScreen(width: width, md: Axis.vertical, lg: Axis.horizontal)!),
                            //   direction: forScreen(width: width, md: Axis.vertical, lg: Axis.horizontal)!,
                            //   children: [
                            //     for (var i = 0; i < footerColumns.length; i++) Expanded(child: footerColumns[i]),
                            //   ],
                            // ),
                            // const Divider(),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("الشروط والأحكام", style: Theme.of(context).textTheme.bodySmall),
                                  Text("سياسة الخصوصية", style: Theme.of(context).textTheme.bodySmall),
                                  Text("ملفات تعريف الارتباط", style: Theme.of(context).textTheme.bodySmall),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class StoreCard extends StatelessWidget {
  final Store? store;
  const StoreCard({
    super.key,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        alignment: AlignmentDirectional.topStart,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {
        if (store != null) context.go("/stores/${store?.id}");
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 50, child: Image.network(faker.image.loremPicsum.image())),
            if (store == null) ...[
              const SizedBox(
                  height: 50,
                  child: CircleAvatar(
                      radius: 25,
                      child: TextPlaceholder(
                        width: 30,
                        height: 30,
                      ))),
              const Spacer(),
              const TextPlaceholder(),
              const SizedBox(height: 8),
              const TextPlaceholder(
                width: 200,
              ),
            ] else ...[
              SizedBox(
                height: 50,
                child: store?.logoUrl == null && store?.ondarkLogoUrl == null
                    ? const CircleAvatar(radius: 25, child: Icon(Ionicons.storefront, size: 30))
                    : Image.network(
                        Theme.of(context).brightness == Brightness.light ? store!.logoUrl ?? store!.ondarkLogoUrl! : store!.ondarkLogoUrl ?? store!.logoUrl!,
                      ),
              ),
              const Spacer(),
              Text(store!.name, style: Theme.of(context).textTheme.titleMedium),
              Text(store!.title ?? "----", style: Theme.of(context).textTheme.bodySmall),
            ]
          ],
        ),
      ),
    );
  }
}

void _showCreateStoreDialog(BuildContext context) async {
  showDialog(
    context: context,
    builder: (context) {
      return const Dialog(
        child: MarchentCreateStore(),
      );
    },
  );
}

class AddStoreCard extends StatelessWidget {
  const AddStoreCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        alignment: AlignmentDirectional.center,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {
        _showCreateStoreDialog(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.add, size: 50),
            const SizedBox(height: 8),
            Text(t.stores.form.create),
          ],
        ),
      ),
    );
  }
}

// dailog for allowing merchant to create a store
class MarchentCreateStore extends StatefulWidget {
  const MarchentCreateStore({super.key});

  @override
  State<MarchentCreateStore> createState() => _MarchentCreateStoreState();
}

class _MarchentCreateStoreState extends State<MarchentCreateStore> {
  FeeefValidationException? error;
  var status = FetchStatus.initial;
  final colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.amber,
    Colors.teal,
  ];
  final formKey = GlobalKey<FormState>();
  String? logoUrl;
  final name = TextEditingController();
  final title = TextEditingController();
  final domain = TextEditingController();
  late final color = ValueNotifier(colors.first);

  void _create() async {
    setState(() {
      status = FetchStatus.loading;
      error = null;
    });
    try {
      var store = await ff.stores.create(
        data: StoreCreate(
          logoUrl: logoUrl,
          name: name.text,
          title: title.text,
          slug: domain.text,
          decoration: StoreDecoration(primary: color.value),
        ),
      );
      Navigator.of(context).pop();
      context.go("/stores/${store.id}");
    } on FeeefValidationException catch (e) {
      setState(() {
        status = FetchStatus.error;
        error = e;
      });
    } catch (e) {
      setState(() {
        status = FetchStatus.error;
        error = FeeefValidationException(errors: [
          FeeefViolation(
            message: e.toString(),
          ),
        ]);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 350),
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (status == FetchStatus.error)
                AlertCard.error(
                  title: Text(t.general.error),
                  subtitle: Text(error!.messages.join("\n")),
                ),
              Text(
                  // "إنشاء متجر جديد"
                  t.stores.form.create,
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 16),
              Uploader(
                onUploaded: (context, url) {
                  logoUrl = url.first;
                },
                builder: (context, state) {
                  return GestureDetector(
                    onTap: () {
                      if (state is! UploaderUploadingState) {
                        context.read<UploaderCubit>().upload(
                              allowCompression: false,
                              maxHeight: 200,
                              folder: "stores",
                            );
                      }
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Theme.of(context).dividerColor),
                          ),
                          child: logoUrl == null ? const Icon(Ionicons.image) : Image.network(logoUrl!),
                        ),
                        if (state == UploaderState.uploading)
                          const Positioned.fill(
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                enabled: status != FetchStatus.loading,
                controller: name,
                // max 30 char
                maxLength: 30,
                decoration: InputDecoration(
                  // labelText: "اسم المتجر",
                  labelText: t.stores.fields.name.label,
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Ionicons.storefront),
                  // hintText: "مثال: متجر الأزياء",
                  hintText: t.stores.fields.name.hint,
                  // helperText: "حقل ضروري",
                  helperText: t.stores.fields.name.helper,
                  errorText: error?.getFieldMessage("name"),
                ),
                // validator: getValidator(context).required().build(),
                validator: FormBuilderValidators.required(),
              ),
              // const SizedBox(height: 8),
              // title (العنوان التسويقي)
              // TextFormField(
              //   autovalidateMode: AutovalidateMode.onUserInteraction,
              //   enabled: status != FetchStatus.loading,
              //   controller: title,
              //   // max 100 char
              //   maxLength: 100,
              //   decoration: InputDecoration(
              //     // labelText: "العنوان التسويقي",
              //     labelText: t.stores.fields.title.label,
              //     border: const OutlineInputBorder(),
              //     prefixIcon: const Icon(Icons.title),
              //     // helperText: "يظهر في نتائج البحث والأوصاف",
              //     helperText: t.stores.fields.title.helper,
              //     // hintText: "مثال: متجر الأزياء الأول في الجزائر",
              //     hintText: t.stores.fields.title.hint,
              //     errorText: error?.getFieldMessage("title"),
              //   ),
              //   // validator: getValidator(context).required().build(),
              //   validator: FormBuilderValidators.required(),
              // ),
              const SizedBox(height: 8),
              // domain anem
              Directionality(
                textDirection: TextDirection.ltr,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  enabled: status != FetchStatus.loading,
                  controller: domain,
                  // max 30 char
                  maxLength: 30,
                  decoration: InputDecoration(
                    labelText: t.stores.fields.slug.label,
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.domain),
                    suffix: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(".feeef.shop"),
                    ),
                    prefix: const Text("https://"),
                    hintText: "my-store",
                    helperText: t.stores.fields.slug.helper,
                    errorText: error?.getFieldMessage("slug"),
                  ),
                  inputFormatters: [
                    // allow [a-z0-9] and - but cant start with number or -
                    // FilteringTextInputFormatter.allow(
                    //   RegExp(r"[a-zA-Z0-9\-]")
                    // ),
                    // // deny number and -  in begeining
                    // FilteringTextInputFormatter.deny(
                    //   RegExp(r"^[0-9\-]")
                    // ),
                    // convert space and -- to -
                    TextInputFormatter.withFunction((oldValue, newValue) {
                      var value = newValue.text.replaceAll(" ", "-").replaceAll("_", "-").replaceAll('--', "-").toLowerCase();
                      // remive any "-" or number in the begining
                      if (value.startsWith("-") || value.startsWith(RegExp(r"[0-9]"))) {
                        value = value.substring(1);
                      }
                      return TextEditingValue(
                        text: value,
                        selection: newValue.selection.copyWith(
                          baseOffset: min(newValue.selection.baseOffset, value.length),
                          extentOffset: min(newValue.selection.extentOffset, value.length),
                        ),
                      );
                    }),
                  ],
                  // only lower cas force
                  
                  // validator: getSlugValidator(context).build(),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    slugValidator(context),
                  ]),
                ),
              ),
              const SizedBox(height: 8),
              // pick color (from list or circles in row)
              ListenableBuilder(
                  listenable: color,
                  builder: (context, _) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        for (var i = 0; i < colors.length; i++)
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
                              color.value = colors[i];
                            },
                            child: Padding(
                              padding: const EdgeInsetsDirectional.only(start: 8),
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: color.value == colors[i] ? Border.all(
                                    color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black87,
                                    width: 2) : null,
                                ),
                                padding: const EdgeInsets.all(2),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colors[i],
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    );
                  }),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  icon: status == FetchStatus.loading
                      ? SizedBox.square(
                          dimension: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        )
                      : const Icon(Icons.add),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      _create();
                    }
                  },
                  label: Text(t.stores.form.create),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
