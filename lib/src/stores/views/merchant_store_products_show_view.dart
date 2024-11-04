// import 'package:cuid2/cuid2.dart';
// import 'package:dio/dio.dart';
// import 'package:feeef_marchant/fif/interfaces/embadded/embadded_category.dart';
// import 'package:feeef_marchant/fif/interfaces/product.dart';
// import 'package:feeef_marchant/fif/interfaces/store.dart';
// import 'package:feeef_marchant/fif/products/models/product.dart';
// import 'package:feeef_marchant/helpers.dart';
// import 'package:feeef_marchant/main.dart';
// import 'package:feeef_marchant/src/auth/auth_view.dart';
// import 'package:feeef_marchant/src/stores/bloc/marchent_stores_bloc.dart';
// import 'package:feeef_marchant/src/stores/bloc/marchent_stores_state.dart';
// import 'package:feeef_marchant/src/stores/views.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:form_builder_validators/form_builder_validators.dart';
// import 'package:go_router/go_router.dart';
// import 'package:ionicons/ionicons.dart';
// import 'package:lib/lib.dart';
// // appflowy_editor
// // import 'package:appflowy_editor/appflowy_editor.dart';
// import 'package:zefyrka/zefyrka.dart';

// class MerchantStoreProductsShowView extends StatefulWidget {
//   const MerchantStoreProductsShowView({super.key});

//   @override
//   State<MerchantStoreProductsShowView> createState() => _MerchantStoreProductsShowViewState();
// }

// class _MerchantStoreProductsShowViewState extends State<MerchantStoreProductsShowView> {
//   String? id;
//   String name = "";
//   late String slug = cuid();
//   ProductDecoration? decoration;
//   String? photoUrl;
//   MultipartFile? photoFile;
//   List<String> media = [];
//   List<MultipartFile> mediaFiles = [];
//   late final String storeId = GoRouterState.of(context).pathParameters["storeId"]!;
//   List<EmbaddedCategory> categories = [];
//   String? title;
//   String? description;
//   String? body;
//   String? sku;
//   num price = 0;
//   num? discount;
//   num stock = 0;
//   ProductVariant? variant;
//   ProductStatus status = ProductStatus.draft;
//   ProductType type = ProductType.physical;
//   Map<String, dynamic> metadata = {};

//   GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   final ZefyrController _controller = ZefyrController();

//   bool loading = true;

//   void _updateProduct() async {
//     if (formKey.currentState!.validate()) {
//       final product = ProductUpdate(
//         name: name,
//         decoration: decoration,
//         photoUrl: photoUrl,
//         media: media,
//         storeId: storeId,
//         categories: categories,
//         title: title,
//         description: description,
//         body: body,
//         sku: sku,
//         price: price,
//         discount: discount,
//         stock: stock,
//         variant: variant,
//         status: status,
//         type: type,
//         metadata: metadata,
//       );
//       setState(() {
//         loading = true;
//       });
//       try {
//         var productId = GoRouterState.of(context).pathParameters["productId"]!;
//         var model = await fif.products.update(id: productId, data: product, params: {
//           if (photoFile != null) "photoFile": photoFile,
//           if (mediaFiles.isNotEmpty) "mediaFiles": mediaFiles
//         });
//         print(model);
//       } catch (e) {
//         context.showErrorSnackBar(Text("${e}"));
//       }
//       context.showSuccessSnackBar(const Text("تم إنشاء المنتج"));
//       context.pop();
//       setState(() {
//         loading = false;
//       });
//     } else {
//       context.showWarningSnackBar(const Text("يرجى ملأ الحقول الضرورية"), duration: const Duration(seconds: 6));
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     _load();
//   }

//   void _load() async {
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
//       setState(() {
//         loading = true;
//       });
//       // await Future.delayed(const Duration(seconds: 1));
//       var productId = GoRouterState.of(context).pathParameters["productId"]!;
//       var product = await fif.products.find(id: productId);
//       setState(() {
//         loading = false;
//         id = product.id;
//         name = product.name;
//         slug = product.slug;
//         decoration = product.decoration;
//         photoUrl = product.photoUrl;
//         media = [
//           ...product.media
//         ];
//         categories = product.categories;
//         title = product.title;
//         description = product.description;
//         body = product.body;
//         sku = product.sku;
//         price = product.price;
//         discount = product.discount;
//         stock = product.stock;
//         variant = product.variant;
//         status = product.status;
//         type = product.type;
//         metadata = product.metadata;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.sizeOf(context).width;
//     return Material(
//       child: AnimatedSwitcher(
//         duration: const Duration(milliseconds: 300),
//         child: loading
//             ? const Center(child: CircularProgressIndicator.adaptive())
//             : Form(
//                 key: formKey,
//                 child: BlocBuilder<MarchentStoresBloc, MarchentStoresState>(
//                   builder: (context, state) {
//                     return CustomScrollView(
//                       slivers: [
//                         SliverAppBar(
//                           titleSpacing: 0,
//                           centerTitle: false,
//                           title: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text('المنتجات'),
//                               Text(name)
//                             ],
//                           ),
//                           floating: true,
//                           snap: true,
//                           actions: [
//                             FilledButton.icon(
//                               icon: const Icon(Ionicons.save_outline),
//                               onPressed: _updateProduct,
//                               label: Text(t.general.save),
//                             ),
//                             const SizedBox(width: 8),
//                           ],
//                         ),
//                         // form
//                         SliverToBoxAdapter(
//                           child: Column(
//                             children: [
//                               // media
//                               Container(
//                                 height: 200,
//                                 constraints: BoxConstraints(
//                                   maxWidth: forScreen(width: width, sm: 400, md: 600)!,
//                                 ),
//                                 child: Column(
//                                   children: [
//                                     ListTile(
//                                       leading: const Icon(Ionicons.image_outline),
//                                       title: const Text('الصور'),
//                                       subtitle: const Text('اختر صور معبرة بعناية'),
//                                       contentPadding: EdgeInsets.zero,
//                                       trailing: ElevatedButton.icon(
//                                         onPressed: () {
//                                           media.add("${faker.image.image()}?${cuid()}");
//                                           setState(() {});
//                                         },
//                                         icon: const Icon(Ionicons.image_outline),
//                                         label: const Text('إضافة صورة'),
//                                       ),
//                                     ),
//                                     Expanded(
//                                       child: Card(
//                                         clipBehavior: Clip.antiAlias,
//                                         child: media.isEmpty
//                                             ? const Center(
//                                                 child: Column(
//                                                 mainAxisAlignment: MainAxisAlignment.center,
//                                                 children: [
//                                                   Icon(Ionicons.image_outline, size: 30),
//                                                   SizedBox(height: 8),
//                                                   Text('لا توجد صور'),
//                                                 ],
//                                               ))
//                                             : ReorderableListView(
//                                                 key: ValueKey(media),
//                                                 scrollDirection: Axis.horizontal,
//                                                 onReorder: (oldIndex, newIndex) {
//                                                   setState(() {
//                                                     if (newIndex > oldIndex) {
//                                                       newIndex -= 1;
//                                                     }
//                                                     final String item = media.removeAt(oldIndex);
//                                                     media.insert(newIndex, item);
//                                                   });
//                                                 },
//                                                 children: [
//                                                   for (var i = 0; i < media.length; i++)
//                                                     Container(
//                                                       key: ValueKey(i),
//                                                       margin: const EdgeInsetsDirectional.only(end: 8),
//                                                       child: Stack(
//                                                         children: [
//                                                           Image.network(
//                                                             media[i],
//                                                             height: 200,
//                                                             fit: BoxFit.cover,
//                                                           ),
//                                                           // floating action button
//                                                           Positioned(
//                                                             right: 0,
//                                                             top: 0,
//                                                             child: Padding(
//                                                               padding: const EdgeInsets.all(8.0),
//                                                               child: Row(
//                                                                 children: [
//                                                                   FloatingActionButton.small(
//                                                                     heroTag: UniqueKey(),
//                                                                     backgroundColor: Colors.white,
//                                                                     onPressed: () {
//                                                                       media.removeAt(i);
//                                                                       setState(() {});
//                                                                     },
//                                                                     child: const Icon(Ionicons.trash_outline, color: Colors.red),
//                                                                   ),
//                                                                   const SizedBox(width: 8),
//                                                                   FloatingActionButton.small(
//                                                                     heroTag: UniqueKey(),
//                                                                     backgroundColor: photoUrl == media[i] ? Theme.of(context).colorScheme.primary : Colors.white,
//                                                                     onPressed: () {
//                                                                       setState(() {
//                                                                         photoUrl = media[i];
//                                                                       });
//                                                                       context.showInfoSnackBar(const Text("تم تحديد الصورة الرئيسية"));
//                                                                     },
//                                                                     child: Icon(
//                                                                       Ionicons.checkmark_circle,
//                                                                       color: photoUrl != media[i] ? Theme.of(context).colorScheme.primary : Colors.white,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                 ],
//                                               ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 constraints: BoxConstraints(
//                                   maxWidth: forScreen(width: width, sm: 400, md: 600)!,
//                                 ),
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     const SizedBox(height: 8),
//                                     // name
//                                     TextFormField(
//                                       initialValue: name,
//                                       autovalidateMode: AutovalidateMode.onUserInteraction,
//                                       decoration: InputDecoration(
//                                         labelText: 'اسم المنتج',
//                                         border: OutlineInputBorder(
//                                           borderRadius: BorderRadius.circular(12),
//                                         ),
//                                         prefixIcon: const Icon(Ionicons.pricetag_outline),
//                                         helperText: 'الإسم المعروف لدي العملاء، مثلا الإسم المذكور في العلبة، او إسم السيارة من المصنع',
//                                       ),
//                                       // validator: getValidator(context).maxLength(100).maxLength(1).build(),
//                                       validator: FormBuilderValidators.compose([
//                                         FormBuilderValidators.required(),
//                                         FormBuilderValidators.maxLength(100),
//                                         FormBuilderValidators.minLength(1),
//                                       ]),
//                                       onChanged: (value) {
//                                         setState(() {
//                                           name = value;
//                                         });
//                                       },
//                                     ),
//                                     const SizedBox(height: 12),
//                                     // title
//                                     TextFormField(
//                                       initialValue: title,
//                                       autovalidateMode: AutovalidateMode.onUserInteraction,
//                                       maxLength: 100,
//                                       decoration: InputDecoration(
//                                         labelText: 'العنوان',
//                                         border: OutlineInputBorder(
//                                           borderRadius: BorderRadius.circular(12),
//                                         ),
//                                         prefixIcon: const Icon(Ionicons.at_circle_outline),
//                                         helperText: 'العنوان الترويجي للمنتج، يضهر ايضا في نتائج البحث',
//                                       ),
//                                       // validator: getValidator(context).maxLength(100).maxLength(1).build(),
//                                       validator: FormBuilderValidators.compose([
//                                         FormBuilderValidators.required(),
//                                         FormBuilderValidators.maxLength(100),
//                                         FormBuilderValidators.minLength(1),
//                                       ]),
//                                       onChanged: (value) {
//                                         setState(() {
//                                           title = value;
//                                         });
//                                       },
//                                     ),
//                                     const SizedBox(height: 12),

//                                     // description
//                                     TextFormField(
//                                       initialValue: description,
//                                       autovalidateMode: AutovalidateMode.onUserInteraction,
//                                       maxLength: 100,
//                                       decoration: InputDecoration(
//                                         labelText: 'الوصف القصير',
//                                         border: OutlineInputBorder(
//                                           borderRadius: BorderRadius.circular(12),
//                                         ),
//                                         prefixIcon: const Icon(Ionicons.text),
//                                         helperText: 'يساعد الوصف القصير في تحسين نتائج البحث',
//                                       ),
//                                       // validator: getValidator(context).maxLength(100).build(),
//                                       validator: FormBuilderValidators.compose([
//                                         FormBuilderValidators.maxLength(100),
//                                       ]),
//                                       onChanged: (value) {
//                                         setState(() {
//                                           description = value;
//                                         });
//                                       },
//                                     ),
//                                     const SizedBox(height: 12),
//                                     // category
//                                     Row(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         // sku
//                                         Flexible(
//                                           child: TextFormField(
//                                             initialValue: sku,
//                                             autovalidateMode: AutovalidateMode.onUserInteraction,
//                                             decoration: InputDecoration(
//                                               labelText: 'الرقم التعريفي (sku)',
//                                               border: OutlineInputBorder(
//                                                 borderRadius: BorderRadius.circular(12),
//                                               ),
//                                               prefixIcon: const Icon(Ionicons.barcode_outline),
//                                               helperText: 'يفيدك لتتبع كمية عنصر ما في مخزنك',
//                                             ),
//                                             // validator: getValidator(context).nullable().maxLength(100).build(),
//                                             validator: FormBuilderValidators.compose([
//                                               FormBuilderValidators.maxLength(100),
//                                               // FormBuilderValidators.minLength(1  , allowEmpty: true),
//                                             ]),
//                                             onChanged: (value) {
//                                               setState(() {
//                                                 sku = value;
//                                               });
//                                             },
//                                           ),
//                                         ),
//                                         const SizedBox(width: 12),

//                                         // stock
//                                         Flexible(
//                                           child: TextFormField(
//                                             initialValue: stock.toString(),
//                                             autovalidateMode: AutovalidateMode.onUserInteraction,
//                                             decoration: InputDecoration(
//                                               labelText: 'الكمية',
//                                               border: OutlineInputBorder(
//                                                 borderRadius: BorderRadius.circular(12),
//                                               ),
//                                               prefixIcon: const Icon(Ionicons.cube_outline),
//                                             ),
//                                             keyboardType: TextInputType.number,
//                                             // validator: getValidator(context).maxLength(100).maxLength(1).build(),
//                                             validator: FormBuilderValidators.compose([
//                                               FormBuilderValidators.required(),
//                                               FormBuilderValidators.numeric(),
//                                             ]),
//                                             onChanged: (value) {
//                                               setState(() {
//                                                 stock = num.tryParse(value) ?? 0;
//                                               });
//                                             },
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     const SizedBox(height: 12),
//                                     // price/discount
//                                     Row(
//                                       children: [
//                                         Flexible(
//                                           child: TextFormField(
//                                             initialValue: price.toString(),
//                                             autovalidateMode: AutovalidateMode.onUserInteraction,
//                                             decoration: InputDecoration(
//                                               labelText: 'السعر',
//                                               border: OutlineInputBorder(
//                                                 borderRadius: BorderRadius.circular(12),
//                                               ),
//                                               prefixIcon: const Icon(Ionicons.cash_outline),
//                                               helperText: 'السعر الأساسي للمنتج',
//                                             ),
//                                             keyboardType: TextInputType.number,
//                                             // validator: getValidator(context).price().build(),
//                                             validator: FormBuilderValidators.compose([
//                                               FormBuilderValidators.required(),
//                                               FormBuilderValidators.numeric(),
//                                             ]),
//                                             onChanged: (value) {
//                                               setState(() {
//                                                 price = num.tryParse(value) ?? 0;
//                                               });
//                                             },
//                                           ),
//                                         ),
//                                         const SizedBox(width: 12),
//                                         Flexible(
//                                           child: TextFormField(
//                                             initialValue: discount.toString(),
//                                             autovalidateMode: AutovalidateMode.onUserInteraction,
//                                             decoration: InputDecoration(
//                                               labelText: 'الخصم',
//                                               border: OutlineInputBorder(
//                                                 borderRadius: BorderRadius.circular(12),
//                                               ),
//                                               prefixIcon: const Icon(Ionicons.pricetags_outline),
//                                               helperText: 'الخصم المقدم علي المنتج',
//                                             ),
//                                             keyboardType: TextInputType.number,
//                                             // validator: getValidator(context).maxLength(100).maxLength(1).build(),
//                                             validator: FormBuilderValidators.compose([
//                                               FormBuilderValidators.numeric(),
//                                             ]),
//                                             onChanged: (value) {
//                                               setState(() {
//                                                 discount = num.tryParse(value);
//                                               });
//                                             },
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     const SizedBox(height: 12),
//                                     DropdownButtonFormField(
//                                       onChanged: (value) {
//                                         if (value != null) {
//                                           setState(() {
//                                             categories = [
//                                               value
//                                             ];
//                                           });
//                                         }
//                                       },
//                                       decoration: InputDecoration(
//                                         labelText: 'التصنيف',
//                                         border: OutlineInputBorder(
//                                           borderRadius: BorderRadius.circular(12),
//                                         ),
//                                         prefixIcon: const Icon(Ionicons.list_outline),
//                                         helperText: 'يساعد العملاء في تصفح المنتجات بشكل اسهل',
//                                       ),
//                                       items: [
//                                         if (state.store != null)
//                                           for (var category in state.store!.categories)
//                                             DropdownMenuItem(
//                                               value: category,
//                                               child: Text(category.name),
//                                             ),
//                                       ],
//                                     ),
//                                     const SizedBox(height: 12),

//                                     // body
//                                     Card(
//                                       shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(12),
//                                         side: BorderSide(color: Colors.grey.withOpacity(0.3)),
//                                       ),
//                                       child: SizedBox(
//                                         height: 500,
//                                         width: double.infinity,
//                                         child: Column(
//                                           children: [
//                                             ZefyrToolbar.basic(
//                                               controller: _controller,
//                                             ),
//                                             const Divider(),
//                                             Expanded(
//                                               child: ZefyrEditor(
//                                                 controller: _controller,
//                                                 padding: const EdgeInsets.all(12),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 12),
//                                     // variant
//                                     TextFormField(
//                                       // initialValue: name,
//                                       autovalidateMode: AutovalidateMode.onUserInteraction,
//                                       decoration: InputDecoration(
//                                         labelText: 'المتغير',
//                                         border: OutlineInputBorder(
//                                           borderRadius: BorderRadius.circular(12),
//                                         ),
//                                         prefixIcon: const Icon(Ionicons.color_palette_outline),
//                                         helperText: 'المتغيرات المتاحة للمنتج',
//                                       ),
//                                       // validator: getValidator(context).maxLength(100).maxLength(1).build(),
//                                       validator: FormBuilderValidators.compose([
//                                         FormBuilderValidators.maxLength(100),
//                                       ]),
//                                       onChanged: (value) {
//                                         // setState(() {
//                                         //   name = value;
//                                         // });
//                                       },
//                                     ),
//                                     const SizedBox(height: 12),
//                                     // STATUS/Type
//                                     Row(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Flexible(
//                                           child: DropdownButtonFormField(
//                                             onChanged: (value) {
//                                               if (value != null) {
//                                                 setState(() {
//                                                   status = value;
//                                                 });
//                                               }
//                                             },
//                                             decoration: InputDecoration(
//                                               labelText: 'الحالة',
//                                               border: OutlineInputBorder(
//                                                 borderRadius: BorderRadius.circular(12),
//                                               ),
//                                               prefixIcon: const Icon(Ionicons.eye),
//                                               helperText: 'حالة النشر',
//                                             ),
//                                             items: [
//                                               for (var status in ProductStatus.values)
//                                                 DropdownMenuItem(
//                                                   value: status,
//                                                   child: Text(status.name),
//                                                 ),
//                                             ],
//                                           ),
//                                         ),
//                                         const SizedBox(width: 12),
//                                         Flexible(
//                                           child: DropdownButtonFormField(
//                                             onChanged: (value) {
//                                               if (value != null) {
//                                                 setState(() {
//                                                   type = value;
//                                                 });
//                                               }
//                                             },
//                                             decoration: InputDecoration(
//                                               labelText: 'نوع المنتج',
//                                               border: OutlineInputBorder(
//                                                 borderRadius: BorderRadius.circular(12),
//                                               ),
//                                               prefixIcon: const Icon(Ionicons.apps),
//                                               // helperText: 'حالة النشر',
//                                             ),
//                                             items: [
//                                               for (var type in ProductType.values)
//                                                 DropdownMenuItem(
//                                                   value: type,
//                                                   child: Text(type.name),
//                                                 ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     const SizedBox(height: 12),
//                                     SizedBox(
//                                       width: double.infinity,
//                                       child: FilledButton.icon(
//                                         onPressed: _updateProduct,
//                                         icon: const Icon(Ionicons.add),
//                                         label: const Text('إضافة المنتج'),
//                                       ),
//                                     ),
//                                     const SizedBox(height: 12),
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     );
//                   },
//                 ),
//               ),
//       ),
//     );
//   }
// }
