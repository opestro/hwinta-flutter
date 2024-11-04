// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';
import 'package:cuid2/cuid2.dart';
import 'package:dio/dio.dart';
import 'package:feeef_marchant/feeef/interfaces/embadded/embadded_category.dart';
import 'package:feeef_marchant/feeef/interfaces/product.dart';
import 'package:feeef_marchant/feeef/products/models/product.dart';
import 'package:feeef_marchant/feeef/serializers.dart';
import 'package:feeef_marchant/feeef/stores/models/store.dart';
import 'package:feeef_marchant/helpers.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/main.dart';
import 'package:feeef_marchant/src/core/generate.dart';
import 'package:feeef_marchant/src/core/strings.dart';
import 'package:feeef_marchant/src/store_settings/settings_view.dart';
import 'package:feeef_marchant/src/stores/bloc/marchent_stores_bloc.dart';
import 'package:feeef_marchant/src/stores/bloc/marchent_stores_state.dart';
import 'package:feeef_marchant/src/uploader/cubit/uploader_cubit.dart';
import 'package:feeef_marchant/src/uploader/uploader.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher_string.dart';
// appflowy_editor
// import 'package:appflowy_editor/appflowy_editor.dart';

import '../../../feeef/core/validation/validation_exception.dart';
import '../../../markdown_editor/format_markdown.dart';
import '../../../markdown_editor/markdown_text_input.dart';
import '../../auth/profile_view.dart';
import '../../core/widgets/form_dailog.dart';

String slugify(String text) {
  text = text
      .replaceAll("-", " ")
      .replaceAll("_", " ")
      // Replace Arabic and French diacritics
      .replaceAll(RegExp(r'[^\u0621-\u064A\u0660-\u0669a-zA-Z\s]'), '')

      // Replace spaces with hyphens
      .replaceAll(RegExp(r'\s+'), '-')

      // Remove leading and trailing hyphens
      .trim()
      .replaceAll(RegExp(r'(^-|-$)'), '')

      // Convert to lowercase
      .toLowerCase();

  return text;
}

class ProductsCreateView extends StatefulWidget {
  final String? id;
  const ProductsCreateView({super.key, this.id});

  @override
  State<ProductsCreateView> createState() => _ProductsCreateViewState();
}

enum _Mode {
  create,
  update,
  show,
}

class _ProductsCreateViewState extends State<ProductsCreateView> {
  late final String id = widget.id ?? cuid();

  TextEditingController _controller = TextEditingController();

  _Mode get mode => widget.id == null ? _Mode.create : _Mode.update;

  String name = "";
  late String slug = cuid();
  ProductDecoration? decoration;
  String? photoUrl;
  MultipartFile? photoFile;
  List<String> media = [];
  List<MultipartFile> mediaFiles = [];
  late final String storeId = GoRouterState.of(context).pathParameters["storeId"]!;
  String? shippingMethodId;
  EmbaddedCategory? category;
  String? title;
  String? description;

  String? body = "";
  // String? get body => _body; // _controller.document.toPlainText();
  // set body(String value) => _body = value; // _controller = ZefyrController(NotusDocument.fromJson(jsonDecode(value)));
  String? sku;
  String? barcode;
  num price = 0;
  num? discount;
  num? oldPrice;
  num stock = 0;
  ProductVariant? variant;
  ProductStatus status = ProductStatus.draft;
  ProductType type = ProductType.physical;
  Map<String, dynamic> metadata = {};

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool loading = false;

  void _submit() async {
    if (formKey.currentState!.validate()) {
      if (mode == _Mode.create) {
        await _create();
      } else {
        await _update();
      }
    } else {
      context.showWarningSnackBar(Text("يرجى ملأ الحقول الضرورية"), duration: Duration(seconds: 6));
    }
  }

  Future<void> _create() async {
    error = null;
    final product = ProductCreate(
      id: id,
      name: name,
      slug: slug.nullIfEmpty ?? generateSlug(),
      decoration: decoration,
      photoUrl: getPhotoUrl(),
      media: media,
      storeId: storeId,
      category: category,
      title: title,
      description: description,
      body: body,
      sku: sku,
      barcode: barcode,
      price: price,
      discount: discount,
      stock: stock,
      variant: variant,
      status: status,
      type: type,
      metadata: metadata,
      shippingMethodId: shippingMethodId,
    );
    setState(() {
      loading = true;
    });
    try {
      await ff.products.create(data: product, params: {
        if (photoFile != null) "photoFile": photoFile,
        if (mediaFiles.isNotEmpty) "mediaFiles": mediaFiles
      });
      context.showSuccessSnackBar(Text("تم إنشاء المنتج"));
      context.pop();
    } on FeeefValidationException catch (e) {
      error = e;
      context.showErrorSnackBar(Text(e.messages.join("\n")));
    } catch (e) {
      context.showErrorSnackBar(Text("$e"));
    }
    setState(() {
      loading = false;
    });
  }

  String? getPhotoUrl() {
    if (photoUrl == null) {
      return media.firstOrNull;
    }
    if (media.contains(photoUrl)) {
      return photoUrl;
    }
    return null;
  }

  FeeefValidationException? error;

  Future<void> _update() async {
    error = null;
    final product = ProductUpdate(
      name: name,
      slug: slug.nullIfEmpty ?? generateSlug(),
      decoration: decoration,
      photoUrl: getPhotoUrl(),
      media: media,
      storeId: storeId,
      category: category,
      title: title,
      description: description,
      body: body,
      sku: sku,
      barcode: barcode,
      price: price,
      discount: discount,
      stock: stock,
      variant: variant,
      status: status,
      type: type,
      metadata: metadata,
      shippingMethodId: shippingMethodId,
      setToNull: ['shippingMethodId']
    );
    setState(() {
      loading = true;
    });
    try {
      await ff.products.update(id: id!, old: this.product, data: product, params: {
        if (photoFile != null) "photoFile": photoFile,
        if (mediaFiles.isNotEmpty) "mediaFiles": mediaFiles
      });
      context.showSuccessSnackBar(Text("تم تحديث المنتج"));
      context.pop();
    } on FeeefValidationException catch (e) {
      error = e;
      context.showErrorSnackBar(Text(e.messages.join("\n")));
    } catch (e) {
      context.showErrorSnackBar(Text("$e"));
    }
    setState(() {
      loading = false;
    });
  }

  final _reorderableListViewController = ScrollController();

  @override
  void initState() {
    super.initState();
    if (widget.id != null) _load();
  }

  Product? product;
  void _load() async {
    loading = true;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      // await Future.delayed(const Duration(seconds: 1));
      product = await ff.products.find(id: id!);
      print(product!);
      try {
        // _controller = ZefyrController(NotusDocument.fromJson(jsonDecode(product.body!)));
      } catch (e) {
        print(e);
      }
      setState(() {
        loading = false;
        name = product!.name;
        slug = product!.slug;
        decoration = product!.decoration;
        photoUrl = product!.photoUrl;
        media = [
          ...product!.media
        ];
        category = product!.category;
        title = product!.title;
        description = product!.description;
        body = product!.body;
        sku = product!.sku;
        barcode = product!.barcode;
        price = product!.price;
        discount = product!.discount;
        stock = product!.stock;
        variant = product!.variant;
        status = product!.status;
        type = product!.type;
        metadata = product!.metadata;
        shippingMethodId = product!.shippingMethodId;
      });
    });
  }

  late final generatedId = cuid();

  String generateSlug() {
    return "${slugify(slug.nullIfEmpty ?? name)}"; //-${generatedId.substring(0, 5)}";
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        var confirm = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('تأكيد'),
              content: const Text('ستفقد أي تعديل قمت به إن لم تحفضه'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: const Text('إلغاء'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: const Text('مغادرة'),
                ),
              ],
            );
          },
        );
        if (confirm == true) {
          await Future.delayed(Duration(seconds: 1));
          context.pop();
        }
      },
      child: Material(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: loading
              ? const Center(child: CircularProgressIndicator.adaptive())
              : Form(
                  key: formKey,
                  child: BlocBuilder<MarchentStoresBloc, MarchentStoresState>(
                    builder: (context, state) {
                      var descriptiveItems = [
                        // البيانات الوصفية
                        Card.outlined(
                          child: ExpansionTile(
                            // initiallyExpanded: true,
                            leading: const Icon(Ionicons.information_circle_outline),
                            title: const Text('البيانات الوصفية'),
                            trailing: Flag("اختيارية"),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    DropdownButtonFormField(
                                      value: state.store!.categories.where((element) => element.name == category?.name).firstOrNull,
                                      onChanged: (value) {
                                        setState(() {
                                          category = value;
                                        });
                                      },
                                      padding: EdgeInsets.zero,
                                      iconSize: 40,
                                      decoration: InputDecoration(
                                        // text: 'التصنيف',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        prefixIcon: const Icon(Ionicons.list_outline),
                                        helperText: 'يساعد العملاء في تصفح المنتجات بشكل اسهل',
                                      ),
                                      items: [
                                        if (state.store != null)
                                          for (var category in state.store!.categories)
                                            DropdownMenuItem(
                                              value: category,
                                              child: Row(
                                                children: [
                                                  if (category.photoUrl != null) ...[
                                                    SizedBox.square(
                                                      dimension: 40,
                                                      child: Image.network(category.photoUrl!),
                                                    ),
                                                    const SizedBox(width: 8),
                                                  ],
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(category.name),
                                                      if (category.description != null) ...[
                                                        Text(category.description!, style: Theme.of(context).textTheme.bodySmall),
                                                      ],
                                                    ],
                                                  )
                                                ],
                                              ),
                                              // ListTile(
                                              //   leading: (category.photoUrl ?? category.ondarkPhotoUrl) == null
                                              //       ? null
                                              //       : SizedBox.square(
                                              //           dimension: 40,
                                              //           child: Image.network(category.photoUrl ?? category.ondarkPhotoUrl!),
                                              //         ),
                                              //   title: Text(category.name),
                                              //   subtitle: category.description?.nullIfEmpty == null ? null : Text(category.description!),
                                              // ),
                                            ),
                                      ],
                                    ),
                                    const SizedBox(height: 12),
                                    // description
                                    TextFormField(
                                      initialValue: description,
                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                                      maxLength: 255,
                                      decoration: InputDecoration(
                                        labelText: 'الوصف القصير',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        prefixIcon: const Icon(Ionicons.text),
                                        helperText: 'يساعد الوصف القصير في تحسين نتائج البحث',
                                      ),
                                      // validator: getValidator(context).maxLength(100).build(),
                                      validator: FormBuilderValidators.compose([
                                        FormBuilderValidators.maxLength(255),
                                      ]),
                                      onChanged: (value) {
                                        setState(() {
                                          description = value;
                                        });
                                      },
                                    ),
                                    const SizedBox(height: 12),
                                    // body
                                    // TextFormField with automatic length
                                    // TextFormField(
                                    //   initialValue: body,
                                    //   autovalidateMode: AutovalidateMode.onUserInteraction,
                                    //   decoration: InputDecoration(
                                    //     contentPadding: EdgeInsets.all(20),
                                    //     labelText: 'الوصف',
                                    //     border: OutlineInputBorder(
                                    //       borderRadius: BorderRadius.circular(12),
                                    //     ),
                                    //     prefixIcon: const Icon(Ionicons.document_text_outline),
                                    //     helperText: 'وصف مفصل للمنتج، يمكنك استخدام الصور والروابط',
                                    //   ),
                                    //   // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                                    //   validator: FormBuilderValidators.compose([
                                    //     // FormBuilderValidators.maxLength(1000),
                                    //   ]),
                                    //   maxLength: 1000,
                                    //   maxLines:
                                    //       // current +1
                                    //       (body?.split("\n").length ?? 1) + 1,
                                    //   onChanged: (value) {
                                    //     setState(() {
                                    //       body = value;
                                    //     });
                                    //   },
                                    // ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        // رابط المنتج
                        Card.outlined(
                          child: ExpansionTile(
                            initiallyExpanded: error?.getField("slug") != null,
                            leading: const Icon(Ionicons.link),
                            title: const Text('رابط المنتج'),
                            trailing: Flag("اختيارية"),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    // description
                                    TextFormField(
                                      initialValue: slug,
                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                                      maxLength: 255,
                                      decoration: InputDecoration(
                                          labelText: "الإسم اللطيف",
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          prefixIcon: const Icon(Ionicons.text),
                                          helperText: slug.nullIfEmpty ?? 'يساعد الإسم-الطيف في تحسين نتائج البحث',
                                          error: error?.getField("slug")?.message.toTextWidget),
                                      // validator: getValidator(context).maxLength(100).build(),
                                      validator: FormBuilderValidators.compose([
                                        FormBuilderValidators.maxLength(255),
                                      ]),
                                      onChanged: (value) {
                                        setState(() {
                                          slug = value;
                                          slug = generateSlug();
                                        });
                                      },
                                      onTapOutside: (e) {
                                        // setState(() {
                                        //   slug = generateSlug();
                                        // });
                                      },
                                    ),
                                    const SizedBox(height: 12),
                                    // link to open the product
                                    SizedBox(
                                      width: double.infinity,
                                      child: OutlinedButton.icon(
                                        onPressed: () {
                                          var url = state.store!.getPublicUrl(path: "/p/$slug");
                                          launchUrlString(url);
                                        },
                                        icon: const Icon(Ionicons.open_outline),
                                        label: const Text('فتح صفحة المنتج'),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        // طريقة الشحن
                        Card.outlined(
                          child: ExpansionTile(
                            initiallyExpanded: true,
                            leading: const Icon(Ionicons.rocket_outline),
                            title: const Text('طريقة الشحن'),
                            subtitle: const Text('أسعار التوصيل للمنتج'),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    // radio button of shippingMethods
                                    // default shipping rates
                                    RadioListTile(
                                      value: null,
                                      groupValue: shippingMethodId,
                                      onChanged: (value) {
                                        setState(() {
                                          shippingMethodId = value;
                                        });
                                      },
                                      title: const Text('الأسعار الإفتراضية'),
                                    ),
                                    if (state.shippingMethods != null)
                                      for (var shippingMethod in state.shippingMethods!)
                                        RadioListTile(
                                          value: shippingMethod.id,
                                          groupValue: shippingMethodId,
                                          onChanged: (value) {
                                            setState(() {
                                              shippingMethodId = value;
                                            });
                                          },
                                          title: Text(shippingMethod.name),
                                          // subtitle: Text(shippingMethod.description),
                                          // edit/remove icons
                                          secondary: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              IconButton(
                                                icon: const Icon(Ionicons.create_outline),
                                                onPressed: () {
                                                  showShippingMethodDailog(
                                                    context,
                                                    storeId: storeId,
                                                    shippingMethod: shippingMethod,
                                                  );
                                                },
                                              ),
                                              IconButton(
                                                icon: const Icon(Ionicons.trash_outline),
                                                onPressed: () {
                                                  showDeleteShippingMethodDailog(context, storeId: storeId, shippingMethod: shippingMethod);
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                    SizedBox(
                                      width: double.infinity,
                                      child: OutlinedButton.icon(
                                        onPressed: () {
                                          showShippingMethodDailog(
                                            context,
                                            storeId: storeId,
                                          );
                                        },
                                        icon: const Icon(Ionicons.add),
                                        label: const Text('إضافة'),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        // المخزون والحساب
                        Card.outlined(
                          child: ExpansionTile(
                            initiallyExpanded: false,
                            leading: const Icon(Ionicons.logo_stackoverflow),
                            title: const Text('المخزون والحساب'),
                            trailing: Flag("ننصح بها"),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 12),
                                    // inventury
                                    TextFormField(
                                            key: ValueKey(sku),
                                            initialValue: sku,
                                            autovalidateMode: AutovalidateMode.onUserInteraction,
                                            decoration: InputDecoration(
                                              labelText: 'الرقم التعريفي (sku)',
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              prefixIcon: const Icon(Ionicons.barcode_outline),
                                              helperText: 'يفيدك لتتبع كمية عنصر ما في مخزنك',
                                              // sufix is button to generate sku using skug()
                                              suffixIcon: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      sku = skug();
                                                    });
                                                  },
                                                  child: const Icon(Ionicons.refresh)),
                                            ),
                                            // validator: getValidator(context).nullable().maxLength(100).build(),
                                            validator: FormBuilderValidators.compose([
                                              FormBuilderValidators.maxLength(100),
                                              // FormBuilderValidators.minLength(1  , allowEmpty: true),
                                            ]),
                                            onChanged: (value) {
                                              sku = value;
                                            },
                                          ),
                                    const SizedBox(height: 12),
                                     TextFormField(
                                            initialValue: stock.toString(),
                                            autovalidateMode: AutovalidateMode.onUserInteraction,
                                            decoration: InputDecoration(
                                              labelText: 'الكمية',
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              prefixIcon: const Icon(Ionicons.cube_outline),
                                            ),
                                            keyboardType: TextInputType.number,
                                            // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                                            validator: FormBuilderValidators.compose([
                                              FormBuilderValidators.required(),
                                              FormBuilderValidators.numeric(),
                                              FormBuilderValidators.max(1000000),
                                              FormBuilderValidators.min(0),
                                            ]),
                                            onChanged: (value) {
                                              setState(() {
                                                stock = num.tryParse(value) ?? 0;
                                              });
                                            },
                                          ),
                                    const SizedBox(height: 12),
                                    // barcode
                                    TextFormField(
                                      initialValue: barcode,
                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                        labelText: 'الباركود',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        prefixIcon: const Icon(Ionicons.barcode_outline),
                                        helperText: 'الباركود الخاص بالمنتج',
                                      ),
                                      // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                                      validator: FormBuilderValidators.compose([
                                        FormBuilderValidators.maxLength(100),
                                      ]),
                                      onChanged: (value) {
                                        setState(() {
                                          barcode = value;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),

                        Card.outlined(
                          child: ExpansionTile(
                            // initiallyExpanded: true,
                            leading: const Icon(Ionicons.settings_outline),
                            title: const Text('إعدادات متقدمة'),
                            trailing: Flag("اختيارية"),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: DropdownButtonFormField(
                                        value: status,
                                        onChanged: (value) {
                                          if (value != null) {
                                            setState(() {
                                              status = value;
                                            });
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: 'حالة النشر',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          prefixIcon: const Icon(Ionicons.eye),
                                        ),
                                        items: [
                                          for (var status in ProductStatus.values)
                                            DropdownMenuItem(
                                              value: status,
                                              child: Text(status.name),
                                            ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Flexible(
                                      child: DropdownButtonFormField(
                                        value: type,
                                        onChanged: (value) {
                                          if (value != null) {
                                            setState(() {
                                              type = value;
                                            });
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: 'نوع المنتج',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          prefixIcon: const Icon(Ionicons.apps),
                                          // helperText: 'حالة النشر',
                                        ),
                                        items: [
                                          for (var type in ProductType.values)
                                            DropdownMenuItem(
                                              value: type,
                                              child: Text(type.name),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ];
                      return CustomScrollView(
                        slivers: [
                          SliverAppBar(
                            centerTitle: false,
                            title: Row(
                              children: [
                                Text(name.nullIfEmpty ?? t.dashboard.sections.products.product),
                              ],
                            ),
                            floating: true,
                            snap: true,
                            actions: [
                              FilledButton.icon(
                                icon: mode == _Mode.create ? const Icon(Ionicons.add) : const Icon(Ionicons.save),
                                onPressed: _submit,
                                label: mode == _Mode.create ? const Text('إضافة منتج') : Text(t.general.save),
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                          // form
                          SliverToBoxAdapter(
                            child: Center(
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 6),
                                constraints: BoxConstraints(
                                  maxWidth: forScreen(width: width, sm: 400, md: 1000)!,
                                ),
                                child: Flex(
                                  key: ValueKey(width < kMdDown),
                                  direction: width < kMdDown ? Axis.vertical : Axis.horizontal,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: width < kMdDown ? 0 : 1,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 6),
                                        child: Column(
                                          children: [
                                            // media
                                            Container(
                                              height: 250,
                                              child: Column(
                                                children: [
                                                  Uploader(
                                                    onUploaded: (context, url) {
                                                      setState(() {
                                                        for (var url in url) {
                                                          media.add(url);
                                                        }
                                                      });
                                                    },
                                                    builder: (context, state) {
                                                      return ListTile(
                                                        leading: const Icon(Ionicons.image_outline),
                                                        title: const Text('العناصر المرئية'),
                                                        // subtitle: const Text('اختر صور معبرة بعناية'),
                                                        contentPadding: EdgeInsets.zero,
                                                        trailing: MenuAnchor(
                                                          builder: (context, controller, _) {
                                                            return ElevatedButton.icon(
                                                              onPressed: () async {
                                                                // call upload in cubit
                                                                // if (state is! UploaderUploadingState) {
                                                                //   context.read<UploaderCubit>().upload(allowMultiple: true, folder: "products");
                                                                // }
                                                                if (controller.isOpen) {
                                                                  controller.close();
                                                                } else {
                                                                  controller.open();
                                                                }
                                                              },
                                                              icon: state is UploaderUploadingState
                                                                  ? SizedBox.square(
                                                                      dimension: 25,
                                                                      child: CircularProgressIndicator(
                                                                        strokeWidth: 2,
                                                                        // value: state.progress,
                                                                      ),
                                                                    )
                                                                  : const Icon(Ionicons.image_outline),
                                                              label: state is UploaderUploadingState ? const Text('جاري التحميل') : const Text('إضافة'),
                                                              //  const Text('إضافة صورة'),
                                                            );
                                                          },
                                                          menuChildren: [
                                                            // image
                                                            ListTile(
                                                              leading: const Icon(Ionicons.image_outline),
                                                              title: const Text('إضافة صورة'),
                                                              onTap: () {
                                                                context.read<UploaderCubit>().upload(
                                                                      allowMultiple: false,
                                                                      folder: "products/$id",
                                                                    );
                                                              },
                                                            ),
                                                            // youtube video
                                                            ListTile(
                                                              leading: const Icon(Ionicons.play_circle_outline),
                                                              title: const Text('إضافة رابط يوتيوب'),
                                                              onTap: () async {
                                                                ClipboardData? clipboardData = await Clipboard.getData('text/plain');
                                                                if (clipboardData != null) {
                                                                  String? url = clipboardData.text;
                                                                  if (url != null) {
                                                                    String? videoId = getYoutubeVideoIdFromUrl(url);
                                                                    if (videoId != null) {
                                                                      setState(() {
                                                                        media.add("https://img.youtube.com/vi/$videoId/maxresdefault.jpg");
                                                                      });
                                                                    }
                                                                  }
                                                                }

                                                                var _controller = TextEditingController();
                                                                // form daolog
                                                                await showDialog(
                                                                  context: context,
                                                                  builder: (context) {
                                                                    return FormDailog(
                                                                      onSubmitted: () {
                                                                        var url = _controller.text;
                                                                        var videoId = getYoutubeVideoIdFromUrl(url);
                                                                        if (videoId != null) {
                                                                          setState(() {
                                                                            media.add("https://img.youtube.com/vi/$videoId/maxresdefault.jpg");
                                                                          });
                                                                        }
                                                                      },
                                                                      title: const Text('إضافة رابط يوتيوب'),
                                                                      builder: (context, error) {
                                                                        return Column(
                                                                          mainAxisSize: MainAxisSize.min,
                                                                          children: [
                                                                            TextFormField(
                                                                              controller: _controller,
                                                                              decoration: InputDecoration(
                                                                                labelText: 'رابط الفيديو',
                                                                                border: OutlineInputBorder(
                                                                                  borderRadius: BorderRadius.circular(12),
                                                                                ),
                                                                                prefixIcon: const Icon(Ionicons.play_circle_outline),
                                                                                helperText: 'رابط الفيديو علي يوتيوب',
                                                                              ),
                                                                              onChanged: (value) {
                                                                                setState(() {});
                                                                              },
                                                                            ),
                                                                          ],
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
                                                    },
                                                  ),
                                                  Expanded(
                                                    child: Card(
                                                      clipBehavior: Clip.antiAlias,
                                                      child: media.isEmpty
                                                          ? Center(
                                                              child: Column(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                const Icon(Ionicons.image_outline, size: 30),
                                                                const SizedBox(height: 8),
                                                                const Text('لا توجد صور'),
                                                              ],
                                                            ))
                                                          : Scrollbar(
                                                              controller: _reorderableListViewController,
                                                              child: ReorderableListView(
                                                                scrollController: _reorderableListViewController,
                                                                key: ValueKey(media),
                                                                scrollDirection: Axis.horizontal,
                                                                onReorder: (oldIndex, newIndex) {
                                                                  setState(() {
                                                                    if (newIndex > oldIndex) {
                                                                      newIndex -= 1;
                                                                    }
                                                                    final String item = media.removeAt(oldIndex);
                                                                    media.insert(newIndex, item);
                                                                  });
                                                                },
                                                                children: [
                                                                  for (var i = 0; i < media.length; i++)
                                                                    Container(
                                                                      key: Key("$i ${media[i]}"),
                                                                      height: 250,
                                                                      margin: const EdgeInsetsDirectional.only(end: 8),
                                                                      // min width id 100
                                                                      constraints: BoxConstraints(minWidth: 100, maxWidth: 250),
                                                                      child: Stack(
                                                                        children: [
                                                                          Positioned.fill(
                                                                            child: Container(
                                                                              color: Theme.of(context).colorScheme.secondaryContainer,
                                                                              child: Center(
                                                                                child: CircularProgressIndicator.adaptive(),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            constraints: BoxConstraints(),
                                                                            child: Image.network(
                                                                              media[i],
                                                                              height: 250,
                                                                              fit: BoxFit.contain,
                                                                              errorBuilder: (context, error, stackTrace) {
                                                                                if (media[i].contains("img.youtube.com")) {
                                                                                  return Container(
                                                                                    color: const Color.fromARGB(255, 195, 28, 16),
                                                                                    child: AspectRatio(
                                                                                      aspectRatio: 1,
                                                                                      child: Column(
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          const Icon(Ionicons.logo_youtube, size: 30, color: Colors.white),
                                                                                          const SizedBox(height: 8),
                                                                                          const Text('يوتيوب', style: TextStyle(color: Colors.white)),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                }
                                                                                return AspectRatio(
                                                                                  aspectRatio: 1,
                                                                                  child: Column(
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      const Icon(Ionicons.image_outline, size: 30),
                                                                                      const SizedBox(height: 8),
                                                                                      const Text('لا توجد صور'),
                                                                                    ],
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                          // floating action button
                                                                          PositionedDirectional(
                                                                            start: 0,
                                                                            top: 0,
                                                                            child: Padding(
                                                                              padding: const EdgeInsets.all(8.0),
                                                                              child: Column(
                                                                                children: [
                                                                                  FloatingActionButton.small(
                                                                                    heroTag: UniqueKey(),
                                                                                    backgroundColor: Colors.white,
                                                                                    onPressed: () {
                                                                                      media.removeAt(i);
                                                                                      setState(() {});
                                                                                    },
                                                                                    child: Icon(Ionicons.trash_outline, color: Colors.red),
                                                                                  ),
                                                                                  const SizedBox(height: 8),
                                                                                  FloatingActionButton.small(
                                                                                    heroTag: UniqueKey(),
                                                                                    backgroundColor: photoUrl == media[i] ? Theme.of(context).colorScheme.primary : Colors.white,
                                                                                    onPressed: () {
                                                                                      setState(() {
                                                                                        photoUrl = media[i];
                                                                                      });
                                                                                      context.showInfoSnackBar(Text("تم تحديد الصورة الرئيسية"));
                                                                                    },
                                                                                    child: Icon(
                                                                                      Ionicons.checkmark_circle,
                                                                                      color: photoUrl != media[i] ? Theme.of(context).colorScheme.primary : Colors.white,
                                                                                    ),
                                                                                  ),
                                                                                  const SizedBox(height: 8),
                                                                                  // edit btn
                                                                                  FloatingActionButton.small(
                                                                                    heroTag: UniqueKey(),
                                                                                    backgroundColor: Colors.white,
                                                                                    onPressed: () {
                                                                                      String? mediaUrl = media[i];
                                                                                      showDialog(
                                                                                        context: context,
                                                                                        builder: (context) {
                                                                                          return FormDailog(
                                                                                            title: const Text('تحديث الصورة'),
                                                                                            builder: (context, error) {
                                                                                              return Column(
                                                                                                mainAxisSize: MainAxisSize.min,
                                                                                                children: [
                                                                                                  ImagePickerAndUploader(
                                                                                                    maxHeight: 300,
                                                                                                    allowCompression: false,
                                                                                                    initialValue: mediaUrl,
                                                                                                    cuption: const Text("صورة"),
                                                                                                    onUpload: (url) => mediaUrl = url,
                                                                                                    onCancel: () => mediaUrl = null,
                                                                                                    folder: "products/$id",
                                                                                                  ),
                                                                                                ],
                                                                                              );
                                                                                            },
                                                                                            onSubmitted: () async {
                                                                                              setState(() {
                                                                                                // set
                                                                                                if (mediaUrl == null) {
                                                                                                  media.removeAt(i);
                                                                                                } else {
                                                                                                  media[i] = mediaUrl!;
                                                                                                }
                                                                                              });
                                                                                            },
                                                                                          );
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                    child: Icon(Ionicons.create_outline, color: Colors.blue),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Positioned(
                                                                            bottom: 0,
                                                                            left: 0,
                                                                            right: 0,
                                                                            height: 40,
                                                                            child: ReorderableDragStartListener(
                                                                              index: i,
                                                                              child: Container(
                                                                                color: Colors.transparent,
                                                                              ),
                                                                            ),
                                                                          )
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

                                            const SizedBox(height: 12),

                                            Container(
                                              // padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  // المعلومات الأساسية
                                                  Card.outlined(
                                                    child: ExpansionTile(
                                                      initiallyExpanded: true,
                                                      title: const Text('المعلومات الأساسية'),
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Column(
                                                            children: [
                                                              // name
                                                              TextFormField(
                                                                initialValue: name,
                                                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                                                decoration: InputDecoration(
                                                                  labelText: 'اسم المنتج',
                                                                  border: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(12),
                                                                  ),
                                                                  prefixIcon: const Icon(Ionicons.pricetag_outline),
                                                                  helperText: 'الإسم المعروف لدي العملاء، مثلا الإسم المذكور في العلبة، او إسم السيارة من المصنع',
                                                                ),
                                                                // validator: getValidator(context).maxLength(255).maxLength(1).build(),
                                                                validator: FormBuilderValidators.compose([
                                                                  FormBuilderValidators.required(),
                                                                  FormBuilderValidators.maxLength(255),
                                                                  FormBuilderValidators.minLength(1),
                                                                ]),
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    name = value;
                                                                  });
                                                                },
                                                              ),
                                                              const SizedBox(height: 12),
                                                              // // title
                                                              // TextFormField(
                                                              //   initialValue: title,
                                                              //   autovalidateMode: AutovalidateMode.onUserInteraction,
                                                              //   maxLength: 100,
                                                              //   decoration: InputDecoration(
                                                              //     labelText: 'العنوان',
                                                              //     border: OutlineInputBorder(
                                                              //       borderRadius: BorderRadius.circular(12),
                                                              //     ),
                                                              //     prefixIcon: const Icon(Ionicons.at_circle_outline),
                                                              //     helperText: 'العنوان الترويجي للمنتج، يضهر ايضا في نتائج البحث',
                                                              //   ),
                                                              //   // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                                                              //   validator: FormBuilderValidators.compose([
                                                              //     FormBuilderValidators.required(),
                                                              //     FormBuilderValidators.maxLength(100),
                                                              //     FormBuilderValidators.minLength(1),
                                                              //   ]),
                                                              //   onChanged: (value) {
                                                              //     setState(() {
                                                              //       title = value;
                                                              //     });
                                                              //   },
                                                              // ),
                                                              // const SizedBox(height: 12),
                                                              // price/discount
                                                              Row(
                                                                children: [
                                                                  Flexible(
                                                                    child: TextFormField(
                                                                      initialValue: price.toString(),
                                                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                                                                      decoration: InputDecoration(
                                                                        labelText: 'السعر',
                                                                        border: OutlineInputBorder(
                                                                          borderRadius: BorderRadius.circular(12),
                                                                        ),
                                                                        prefixIcon: const Icon(Ionicons.cash_outline),
                                                                        helperText: 'السعر الأساسي للمنتج',
                                                                      ),
                                                                      keyboardType: TextInputType.number,
                                                                      // validator: getValidator(context).price().build(),
                                                                      validator: FormBuilderValidators.compose([
                                                                        FormBuilderValidators.required(),
                                                                        FormBuilderValidators.numeric(),
                                                                        FormBuilderValidators.max(1000000),
                                                                        FormBuilderValidators.min(0),
                                                                      ]),
                                                                      onChanged: (value) {
                                                                        setState(() {
                                                                          price = num.tryParse(value) ?? 0;
                                                                        });
                                                                      },
                                                                    ),
                                                                  ),
                                                                  const SizedBox(width: 12),
                                                                  Flexible(
                                                                    child: TextFormField(
                                                                      initialValue: discount?.toString(),
                                                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                                                                      decoration: InputDecoration(
                                                                        labelText: 'الخصم',
                                                                        border: OutlineInputBorder(
                                                                          borderRadius: BorderRadius.circular(12),
                                                                        ),
                                                                        prefixIcon: const Icon(Ionicons.pricetags_outline),
                                                                        helperText: 'الخصم المقدم علي المنتج',
                                                                      ),
                                                                      keyboardType: TextInputType.number,
                                                                      // validator: getValidator(context).maxLength(100).maxLength(1).build(),
                                                                      validator: FormBuilderValidators.compose([
                                                                        FormBuilderValidators.numeric(),
                                                                        FormBuilderValidators.max(1000000),
                                                                        FormBuilderValidators.min(0),
                                                                      ]),
                                                                      onChanged: (value) {
                                                                        setState(() {
                                                                          discount = num.tryParse(value);
                                                                        });
                                                                      },
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 12),
                                                  Card(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(color: Colors.grey.withOpacity(0)),
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        MarkdownTextInput(
                                                          (String value) => setState(() => body = value),
                                                          body ?? "",
                                                          label: 'الوصف الطويل',
                                                          actions: MarkdownType.values,
                                                          controller: _controller,
                                                          textStyle: TextStyle(fontSize: 16),
                                                          textDirection: TextDirection.rtl,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 12),

                                                  Divider(),

                                                  // variant
                                                  SwitchListTile(
                                                    secondary: const Icon(Ionicons.color_palette_outline),
                                                    value: variant != null,
                                                    title: const Text('تفعيل خيارات الطلب'),
                                                    onChanged: (value) async {
                                                      if (value) {
                                                        setState(() {
                                                          variant = ProductVariant(name: "الألوان", options: [
                                                            ProductVariantOption(
                                                              name: "أخضر",
                                                              sku: skug(),
                                                              type: VariantOptionType.color,
                                                              value: Colors.green.value,
                                                              child: ProductVariant(
                                                                name: "القياسات",
                                                                options: [
                                                                  ProductVariantOption(name: "M", sku: skug()),
                                                                ],
                                                              ),
                                                            ),
                                                          ]);
                                                        });
                                                      } else {
                                                        var confirm = await showDialog<bool>(
                                                          context: context,
                                                          builder: (context) {
                                                            return AlertDialog(
                                                              title: const Text('تأكيد'),
                                                              content: const Text('هل تريد حذف جميع الخيارات؟'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () {
                                                                    Navigator.pop(context, false);
                                                                  },
                                                                  child: const Text('لا'),
                                                                ),
                                                                TextButton(
                                                                  onPressed: () {
                                                                    Navigator.pop(context, true);
                                                                  },
                                                                  child: const Text('نعم'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                        if (confirm == true) {
                                                          setState(() {
                                                            variant = null;
                                                          });
                                                        }
                                                      }
                                                    },
                                                  ),
                                                  if (variant != null)
                                                    ProductVariantCard(
                                                      media: media,
                                                      variant: variant!,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          variant = value;
                                                        });
                                                      },
                                                    ),
                                                  const SizedBox(height: 12),
                                                ],
                                              ),
                                            ),
                                                  const SizedBox(height: 200),
                                          ],

                                        ),
                                      ),
                                    ),
                                    // sidebar
                                    Container(
                                      // color: Colors.red,
                                      padding: const EdgeInsets.symmetric(horizontal: 6),
                                      width: width < kMdDown ? null : 350,
                                      child: Column(
                                        children: [
                                          ...descriptiveItems,
                                          const SizedBox(height: 12),
                                          SizedBox(
                                            width: double.infinity,
                                            child: FilledButton.icon(
                                              onPressed: _submit,
                                              icon: mode == _Mode.create ? const Icon(Ionicons.add) : const Icon(Ionicons.save),
                                              label: mode == _Mode.create ? const Text('إضافة منتج') : Text(t.general.save),
                                            ),
                                          ),
                                          const SizedBox(height: 12),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
        ),
      ),
    );
  }
}

// ProductVariantCard widget, has onChanged
class ProductVariantCard extends StatefulWidget {
  final ProductVariant variant;
  final List<String> media;
  final void Function(ProductVariant?) onChanged;
  const ProductVariantCard({super.key, required this.media, required this.variant, required this.onChanged});

  @override
  State<ProductVariantCard> createState() => _ProductVariantCardState();
}

class _ProductVariantCardState extends State<ProductVariantCard> {
  // selectedoption
  ProductVariantOption? get selectedOption => selectedOptionIndex == null ? null : widget.variant.options[selectedOptionIndex!];
  int? selectedOptionIndex;

  bool showAdvencedOptions = false;

  Color color = Colors.teal;

  @override
  void initState() {
    super.initState();
    // select random color from materail pallet and set it to color
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(color: Colors.grey.withOpacity(0.3)),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: ListTile(
              titleAlignment: ListTileTitleAlignment.top,
              contentPadding: EdgeInsets.all(8),
              minVerticalPadding: 0,
              title: TextFormField(
                initialValue: widget.variant.name,
                decoration: InputDecoration(
                  labelText: "إسم الخيار",
                  prefixIcon: Icon(Ionicons.color_palette),
                  suffix: IconButton(
                    icon: const Icon(Ionicons.trash_outline),
                    onPressed: () async {
                      var confirm = await showDialog<bool>(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('تأكيد'),
                            content: const Text('هل تريد حذف هذا الخيار'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context, false);
                                },
                                child: const Text('إلغاء'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context, true);
                                },
                                child: const Text('حذف'),
                              ),
                            ],
                          );
                        },
                      );
                      if (confirm == true) {
                        widget.onChanged(null);
                      }
                    },
                  ),
                ),
                onChanged: (value) {
                  widget.onChanged(
                    widget.variant.copyWith(
                      name: value,
                    ),
                  );
                },
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(option.sku ?? "", style: TextStyle(color: Colors.grey, fontSize: 10)),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      // add chip
                      ActionChip(
                        avatar: const Icon(Ionicons.add),
                        label: Text(
                          "عنصر",
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        onPressed: () {
                          widget.onChanged(
                            widget.variant.copyWith(
                              options: [
                                ...widget.variant.options,
                                ProductVariantOption(
                                  name: "عنصر ${widget.variant.options.length + 1}",
                                  sku: skug(),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      for (var i = 0; i < widget.variant.options.length; i++)
                        ActionChip(
                          backgroundColor: i == selectedOptionIndex ? (widget.variant.options[i].type == VariantOptionType.color ? ColorSerializer().fromJson(int.tryParse(widget.variant.options[i].value.toString() ?? "") ?? 0) : Theme.of(context).colorScheme.primary) : Theme.of(context).colorScheme.onPrimary,
                          key: ValueKey(widget.variant.options[i]),
                          label: Text(
                            widget.variant.options[i].name,
                            style: Theme.of(context).textTheme.labelSmall?.copyWith(color: i != selectedOptionIndex ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onPrimary),
                          ),
                          side: BorderSide(
                            color: widget.variant.options[i].type == VariantOptionType.color ? ColorSerializer().fromJson(int.tryParse(widget.variant.options[i].value.toString() ?? "") ?? 0) : Theme.of(context).colorScheme.primary,
                          ),
                          avatar: widget.variant.options[i].type == VariantOptionType.color
                              ? CircleAvatar(
                                  backgroundColor: ColorSerializer().fromJson(int.tryParse(widget.variant.options[i].value.toString() ?? "") ?? 0),
                                )
                              : widget.variant.options[i].type == VariantOptionType.image
                                  ? CircleAvatar(
                                      minRadius: 100,
                                      maxRadius: 100,
                                      backgroundImage: NetworkImage(widget.variant.options[i].value.toString()),
                                    )
                                  : null,
                          onPressed: () {
                            setState(() {
                              if (selectedOption == widget.variant.options[i]) {
                                selectedOptionIndex = null;
                              } else {
                                selectedOptionIndex = widget.variant.options.indexOf(widget.variant.options[i]);
                              }
                            });
                          },
                        ),

                      if (selectedOption != null)
                        Column(children: [
                          Row(
                            children: [
                              Flexible(
                                child: TextFormField(
                                    autovalidateMode: AutovalidateMode.always,
                                    key: ValueKey("$selectedOptionIndex name"),
                                    initialValue: selectedOption!.name,
                                    decoration: InputDecoration(labelText: "إسم العنصر", prefixIcon: Icon(Ionicons.pricetag_outline)),
                                    onChanged: (value) {
                                      widget.onChanged(
                                        widget.variant.copyWith(
                                          options: [
                                            for (var option in widget.variant.options)
                                              if (option == selectedOption)
                                                option.copyWith(
                                                  name: value,
                                                )
                                              else
                                                option,
                                          ],
                                        ),
                                      );
                                    },
                                    validator: FormBuilderValidators.compose([
                                      FormBuilderValidators.required(),
                                      (value) {
                                        // must not be unique in the same level
                                        for (var option in widget.variant.options) {
                                          if (option != selectedOption && option.name == value) {
                                            return "الإسم موجود بالفعل";
                                          }
                                        }
                                      },
                                    ])),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          if (showAdvencedOptions) ...[
                            // TextFormField(
                            //   key: ValueKey("$selectedOptionIndex sku"),
                            //   initialValue: selectedOption!.sku,
                            //   decoration: InputDecoration(labelText: "الرقم التعريفي", prefixIcon: Icon(Ionicons.barcode_outline)),
                            //   onChanged: (value) {
                            //     widget.onChanged(
                            //       widget.variant.copyWith(
                            //         options: [
                            //           for (var option in widget.variant.options)
                            //             if (option == selectedOption)
                            //               option.copyWith(
                            //                 sku: value,
                            //               )
                            //             else
                            //               option,
                            //         ],
                            //       ),
                            //     );
                            //   },
                            // ),
                            // const SizedBox(height: 8),
                            TextFormField(
                              key: ValueKey("$selectedOptionIndex price"),
                              initialValue: selectedOption!.price?.toString(),
                              decoration: InputDecoration(labelText: "السعر", prefixIcon: Icon(Ionicons.cash_outline)),
                              onChanged: (value) {
                                widget.onChanged(
                                  widget.variant.copyWith(
                                    options: [
                                      for (var option in widget.variant.options)
                                        if (option == selectedOption)
                                          option.copyWith(
                                            price: num.tryParse(value) ?? 0,
                                          )
                                        else
                                          option,
                                    ],
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 8),
                            // dicount
                            TextFormField(
                              key: ValueKey("$selectedOptionIndex discount"),
                              initialValue: selectedOption!.discount?.toString(),
                              decoration: InputDecoration(labelText: "الخصم", prefixIcon: Icon(Ionicons.pricetags_outline)),
                              onChanged: (value) {
                                widget.onChanged(
                                  widget.variant.copyWith(
                                    options: [
                                      for (var option in widget.variant.options)
                                        if (option == selectedOption)
                                          option.copyWith(
                                            discount: num.tryParse(value) ?? 0,
                                          )
                                        else
                                          option,
                                    ],
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 8),
                            // stock
                            TextFormField(
                              key: ValueKey("$selectedOptionIndex stock"),
                              initialValue: selectedOption!.stock?.toString(),
                              decoration: InputDecoration(labelText: "الكمية", prefixIcon: Icon(Ionicons.cube_outline)),
                              onChanged: (value) {
                                widget.onChanged(
                                  widget.variant.copyWith(
                                    options: [
                                      for (var option in widget.variant.options)
                                        if (option == selectedOption)
                                          option.copyWith(
                                            stock: num.tryParse(value) ?? 0,
                                          )
                                        else
                                          option,
                                    ],
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 8),
                            // type
                            DropdownButtonFormField<VariantOptionType>(
                              value: selectedOption!.type,
                              onChanged: (value) {
                                widget.onChanged(
                                  widget.variant.copyWith(
                                    options: [
                                      for (var option in widget.variant.options)
                                        if (option == selectedOption)
                                          option.copyWith(
                                            type: value ?? VariantOptionType.text,
                                          )
                                        else
                                          option,
                                    ],
                                  ),
                                );
                              },
                              decoration: InputDecoration(
                                labelText: 'نوع الخيار',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                prefixIcon: const Icon(Ionicons.apps),
                                // helperText: 'حالة النشر',
                              ),
                              items: [
                                for (var type in VariantOptionType.values)
                                  DropdownMenuItem(
                                    value: type,
                                    child: Text(switch (type) {
                                      VariantOptionType.text => t.products.fields.variants.types.text,
                                      VariantOptionType.image => t.products.fields.variants.types.image,
                                      VariantOptionType.color => t.products.fields.variants.types.color,
                                    }),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            // handle color type by dailog select color using picker
                            if (selectedOption?.type == VariantOptionType.color)
                              // color picker
                              TextFormField(
                                key: ValueKey("$selectedOptionIndex ${selectedOption?.value} color"),
                                initialValue: ColorSerializer().fromJson(int.tryParse(selectedOption?.value.toString() ?? "") ?? 0).value.toRadixString(16),
                                decoration: InputDecoration(
                                  labelText: "اللون",
                                  prefixIcon: Icon(Ionicons.color_palette_outline),
                                  suffixIcon: Icon(
                                    Icons.circle,
                                    color: ColorSerializer().fromJson(int.tryParse(selectedOption?.value.toString() ?? "") ?? 0),
                                  ),
                                ),
                                onChanged: (value) {
                                  widget.onChanged(
                                    widget.variant.copyWith(
                                      options: [
                                        for (var option in widget.variant.options)
                                          if (option == selectedOption)
                                            option.copyWith(
                                              value: ColorSerializer().toJson(Color(int.tryParse(value, radix: 16) ?? 0)),
                                            )
                                          else
                                            option,
                                      ],
                                    ),
                                  );
                                },
                                onTap: () async {
                                  var result = await showColorPickerDialog(
                                    context,
                                    Color(int.tryParse(selectedOption?.value.toString() ?? "") ?? 0),
                                    pickersEnabled: {
                                      ColorPickerType.both: false,
                                      ColorPickerType.primary: true,
                                      ColorPickerType.accent: true,
                                      ColorPickerType.bw: false,
                                      ColorPickerType.custom: false,
                                      ColorPickerType.wheel: true,
                                    },
                                  );
                                  if (result != null) {
                                    widget.onChanged(
                                      widget.variant.copyWith(
                                        options: [
                                          for (var option in widget.variant.options)
                                            if (option == selectedOption)
                                              option.copyWith(
                                                value: ColorSerializer().toJson(result),
                                              )
                                            else
                                              option,
                                        ],
                                      ),
                                    );
                                  }
                                },
                              ),
                            // handle image type by horisantle cards of photos
                            if (selectedOption?.type == VariantOptionType.image)
                              SizedBox(
                                height: 100,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    // AspectRatio(
                                    //   aspectRatio: 1,
                                    //   child: IconButton.outlined(
                                    //     icon: const Icon(Ionicons.add),
                                    //     onPressed: () async {
                                    //       context.read<UploaderCubit>().upload(
                                    //             allowMultiple: false,
                                    //             folder: "products",
                                    //           );
                                    //     },
                                    //   ),
                                    // ),
                                    // const SizedBox(width: 8),
                                    for (var item in widget.media) ...[
                                      GestureDetector(
                                        onTap: () {
                                          widget.onChanged(
                                            widget.variant.copyWith(
                                              options: [
                                                for (var option in widget.variant.options)
                                                  if (option == selectedOption)
                                                    option.copyWith(
                                                      value: item,
                                                    )
                                                  else
                                                    option,
                                              ],
                                            ),
                                          );
                                        },
                                        child: AspectRatio(
                                          aspectRatio: 1,
                                          child: Container(
                                            padding: selectedOption?.value == item ? const EdgeInsets.all(2) : null,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 2,
                                                color: selectedOption?.value == item ? Theme.of(context).colorScheme.primary : Colors.transparent,
                                              ),
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(9),
                                              ),
                                              clipBehavior: Clip.antiAlias,
                                              child: Image.network(item),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                    ]
                                  ],
                                ),
                              ),
                          ],

                          // delete
                          Row(
                            children: [
                              // duplicate
                              IconButton(
                                icon: const Icon(Ionicons.copy_outline),
                                onPressed: () {
                                  widget.onChanged(
                                    widget.variant.copyWith(
                                      options: [
                                        ...widget.variant.options,
                                        selectedOption!.copyWith(
                                          name: "${selectedOption!.name} (نسخة)",
                                          sku: skug(),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              IconButton(
                                icon: const Icon(Ionicons.trash_outline),
                                onPressed: () async {
                                  var confirm = await showDialog<bool>(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text('تأكيد'),
                                        content: const Text('هل تريد حذف هذا العنصر؟'),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context, false);
                                            },
                                            child: const Text('لا'),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context, true);
                                            },
                                            child: const Text('نعم'),
                                          ),
                                        ],
                                      );
                                    },
                                  );

                                  if (confirm == true) {
                                    widget.onChanged(
                                      widget.variant.copyWith(
                                        options: [
                                          for (var option in widget.variant.options)
                                            if (option != selectedOption) option,
                                        ],
                                      ),
                                    );
                                    selectedOptionIndex = null;
                                  }
                                },
                              ),
                              Spacer(),

                              // show advenced options
                              IconButton(
                                icon: showAdvencedOptions ? const Icon(Ionicons.chevron_up) : const Icon(Ionicons.chevron_down),
                                onPressed: () {
                                  setState(() {
                                    showAdvencedOptions = !showAdvencedOptions;
                                  });
                                },
                              ),
                            ],
                          ),
                          // button for add sub options
                          if (selectedOption!.child == null)
                            ActionChip(
                              avatar: const Icon(Ionicons.add),
                              label: Text(
                                "إضافة خيارات فرعي",
                                style: Theme.of(context).textTheme?.labelSmall,
                              ),
                              onPressed: () {
                                widget.onChanged(
                                  widget.variant.copyWith(
                                    options: [
                                      for (var option in widget.variant.options)
                                        if (option == selectedOption)
                                          option.copyWith(
                                            child: ProductVariant(
                                              name: "خيارات فرعية",
                                              options: [
                                                ProductVariantOption(name: "عنصر فرعي", sku: skug()),
                                              ],
                                            ),
                                          )
                                        else
                                          option,
                                    ],
                                  ),
                                );
                              },
                            ),
                          if (selectedOption!.child != null)
                            ProductVariantCard(
                              media: widget.media,
                              variant: selectedOption!.child!,
                              onChanged: (value) {
                                widget.onChanged(
                                  widget.variant.copyWith(
                                    options: [
                                      for (var option in widget.variant.options)
                                        if (option == selectedOption)
                                          option.copyWith(
                                            child: value,
                                          )
                                        else
                                          option,
                                    ],
                                  ),
                                );
                              },
                            )
                        ])
                    ],
                  )
                  // label
                  // Text("الخيارات", style: Theme.of(context).textTheme?.titleMedium),
                  // for (var option in widget.variant.options)
                  //   ListTile(
                  //     title: Text(option.name),
                  //     subtitle: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Text(option.sku ?? "", style: TextStyle(color: Colors.grey, fontSize: 10)),
                  //         const SizedBox(height: 8),
                  //         Row(
                  //           children: [
                  //             Flexible(
                  //               child: TextFormField(
                  //                 initialValue: option.name,
                  //                 decoration: InputDecoration(labelText: "إسم الخيار", prefixIcon: Icon(Ionicons.color_palette)),
                  //                 onChanged: (value) {
                  //                   widget.onChanged(
                  //                     widget.variant.copyWith(
                  //                       options: [
                  //                         for (var i = 0; i < widget.variant.options.length; i++)
                  //                           if (widget.variant.options[i] == option)
                  //                             widget.variant.options[i].copyWith(
                  //                               name: value,
                  //                             )
                  //                           else
                  //                             widget.variant.options[i],
                  //                       ],
                  //                     ),
                  //                   );
                  //                 },
                  //               ),
                  //             ),
                  //             const SizedBox(width: 8),
                  //             Flexible(
                  //               child: TextFormField(
                  //                 initialValue: option.sku,
                  //                 decoration: InputDecoration(labelText: "الرقم التعريفي", prefixIcon: Icon(Ionicons.barcode_outline)),
                  //                 onChanged: (value) {
                  //                   widget.onChanged(
                  //                     widget.variant.copyWith(
                  //                       options: [
                  //                         for (var i = 0; i < widget.variant.options.length; i++)
                  //                           if (widget.variant.options[i] == option)
                  //                             widget.variant.options[i].copyWith(
                  //                               sku: value,
                  //                             )
                  //                           else
                  //                             widget.variant.options[i],
                  //                       ],
                  //                     ),
                  //                   );
                  //                 },
                  //               ),
                  //             ),
                  //             const SizedBox(width: 8),
                  //             Flexible(
                  //               child: TextFormField(
                  //                 initialValue: option.price.toString(),
                  //                 decoration: InputDecoration(labelText: "السعر", prefixIcon: Icon(Ionicons.cash_outline)),
                  //                 onChanged: (value) {
                  //                   widget.onChanged(
                  //                     widget.variant.copyWith(
                  //                       options: [
                  //                         for (var i = 0; i < widget.variant.options.length; i++)
                  //                           if (widget.variant.options[i] == option)
                  //                             widget.variant.options[i].copyWith(
                  //                               price: num.tryParse(value) ?? 0,
                  //                             )
                  //                           else
                  //                             widget.variant.options[i],
                  //                       ],
                  //                     ),
                  //                   );
                  //                 },
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ],
                  //     ),
                  //     trailing: Row(
                  //       mainAxisSize: MainAxisSize.min,
                  //       children: [
                  //         // edit
                  //         // IconButton(
                  //       ],
                  //     ),
                  // ),
                ],
              ),
            ),
          ),
          // line rounded vertical
          PositionedDirectional(
            start: 8,
            top: 12,
            bottom: 12,
            child: Container(
              width: 4,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
