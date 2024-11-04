// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:feature_discovery/feature_discovery.dart';
import 'package:feeef_marchant/feeef/core/list_response.dart';
import 'package:feeef_marchant/feeef/core/validation/validation_exception.dart';
import 'package:feeef_marchant/feeef/core/widgets/alerts.dart';
import 'package:feeef_marchant/feeef/interfaces/helpers.dart';
import 'package:feeef_marchant/feeef/interfaces/product.dart';
import 'package:feeef_marchant/feeef/products/models/product.dart';
import 'package:feeef_marchant/feeef/stores/models/store.dart';
import 'package:feeef_marchant/helpers.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/main.dart';
import 'package:feeef_marchant/src/core/fable.dart';
import 'package:feeef_marchant/src/core/widgets/form_dailog.dart';
import 'package:feeef_marchant/src/stores/bloc/marchent_stores_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lib/lib.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../bloc/marchent_stores_bloc.dart';

// MerchantStoreProductsPage
class MerchantStoreProductsPage extends StatelessWidget {
  const MerchantStoreProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MerchantStoreProductsView();
  }
}

class MerchantStoreProductsView extends StatefulWidget {
  const MerchantStoreProductsView({super.key});

  @override
  State<MerchantStoreProductsView> createState() => _MerchantStoreProductsViewState();
}

class _MerchantStoreProductsViewState extends State<MerchantStoreProductsView> {
  late List<FableField<Product>> fields = [
    // photo
    FableField<Product>(
      label: const SizedBox(),
      priority: 11,
      visible: true,
      config: FlexTableItemConfig.square(40),
      builder: (model) => CircleAvatar(
        backgroundImage: model?.photoUrl != null ? NetworkImage(model!.photoUrl!) : null,
        child: model?.photoUrl == null ? const Icon(Ionicons.image_outline) : null,
      ),
    ),
    FableField<Product>(
      label: Text(t.dashboard.sections.products.product),
      priority: 10,
      visible: true,
      config: FlexTableItemConfig.flex(4),
      builder: (value) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          value == null ? TextPlaceholder() : Text('${value!.name}'),
          value == null
              ? TextPlaceholder()
              : Text(
                  '${value!.description}',
                  style: TextStyle(fontSize: 11, color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6)),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
        ],
      ),
    ),
    FableField<Product>(
      label: Text('${t.dashboard.sections.products.quantity}/${t.dashboard.sections.products.price}'),
      priority: 9,
      visible: true,
      config: FlexTableItemConfig.flex(2),
      builder: (value) => value == null ? TextPlaceholder() : Text('${value.price}${t.general.defaultCurrency.symbol}\nx${value.stock}'),
    ),
    FableField<Product>(
      label: Text('${t.dashboard.sections.products.sales}'),
      priority: 8,
      visible: true,
      config: FlexTableItemConfig.flex(1),
      builder: (value) => value == null ? TextPlaceholder() : Text('${value.sold}'),
    ),
    FableField<Product>(
      label: Text('${t.dashboard.sections.products.images}'),
      priority: 7,
      visible: true,
      config: FlexTableItemConfig.flex(2),
      builder: (value) => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: value == null
              ? [
                  Container(
                    width: 50,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: const Icon(Ionicons.image_outline),
                    ),
                  ),
                ]
              : value!.media
                  .map((e) => Container(
                        width: 50,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Image.network(e),
                        ),
                      ))
                  .toList(),
        ),
      ),
    ),
  ];

  List<FableField<Product>> activeFields(Store store) {
    // return fields.where((element) => element.visible).toList();
    var width = MediaQuery.sizeOf(context).width;
    var vfields = fields.where((element) => element.visible).toList();
    // sort by priority
    vfields.sort((a, b) => b.priority.compareTo(a.priority));
    var maxToShow = forScreen<int>(
      width: width,
      sm: 3,
      md: 4,
      lg: 5,
      xl: 6,
    )!;
    return [
      ...vfields.take(maxToShow).toList(),
      FableField<Product>(
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
            // open link
            ListTile(
              title: const Text('فتح صفحة المنتج'),
              leading: const Icon(Ionicons.link),
              onTap: () {
                var url = "${store.getPublicUrl()}/p/${value?.slug}";
                launchUrlString(url);
              },
            ),
            // نسخ الرابط
            ListTile(
              title: const Text('نسخ رابط المنتج'),
              leading: const Icon(Ionicons.copy),
              onTap: () {
                var url = "${store.getPublicUrl()}/p/${value?.id}";
                Clipboard.setData(ClipboardData(text: url));
                context.showSuccessSnackBar(
                  const Text('تم نسخ رابط المنتج'),
                  action: SnackBarAction(
                    onPressed: () {
                      launchUrlString(url);
                    },
                    label: "فتح",
                  ),
                );
              },
            ),
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
                      title: const Text('حذف المنتج'),
                      builder: (context, error) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (error != null) ...[
                              AlertCard.error(
                                title: error is FeeefValidationException ? Text((error as FeeefValidationException).messages.join("\n")) : Text(error.toString()),
                              ),
                              const SizedBox(height: 8),
                            ],
                            Text('هل أنت متأكد من حذف المنتج "${value?.name}"؟\nهذا الإجراء نهائي لا يمكن التراجع عنه.'),
                          ],
                        );
                      },
                      onSubmitted: () async {
                        await Future.delayed(const Duration(seconds: 1));
                        await ff.products.delete(id: value!.id);
                        // delete it from the list
                        setState(() {
                          _products!.removeWhere((element) => element.id == value!.id);
                        });

                        context.showSuccessSnackBar(
                          Text('تم حذف المنتج "${value.name}" بنجاح'),
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

  ListResponse<Product>? _response;

  List<Product>? _products;

  // filtered
  final _searchController = TextEditingController();
  List<Product>? get filteredProducts {
    var query = _searchController.text;
    if (query.isEmpty) {
      return _products;
    }
    return _products!.where((element) => element.name.toLowerCase().contains(query.toLowerCase())).toList();
  }

  final List<StreamSubscription> subscriptions = [];

  @override
  void initState() {
    super.initState();
    _load();
    subscriptions.addAll([
      ff.products.modelCreateStream.listen((model) {
        setState(() {
          _products!.insert(0, model);
        });
      }),
      ff.products.modelUpdateStream.listen((model) {
        setState(() {
          _products = _products!
              .map((e) => e.id == model.id
                  ? Product.fromJson({
                      ...e.toJson(),
                      ...model.data.toUpdateJson(),
                    })
                  : e)
              .toList();
        });
      }),
    ]);

    // FeatureDiscovery.clearPreferences(context, [
    //   "create_product_btn"
    // ]);
    // SchedulerBinding.instance.addPostFrameCallback((Duration duration) {
    //   FeatureDiscovery.discoverFeatures(
    //     context,
    //     const <String>{
    //       // Feature ids for every feature that you want to showcase in order.
    //       'create_product_btn',
    //     },
    //   );
    // });
  }

  @override
  void dispose() {
    for (var element in subscriptions) {
      element.cancel();
    }
    super.dispose();
  }

  bool loading = false;
  int limit = 20;

  void _load() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      setState(() {
        loading = true;
      });
      var params = GoRouterState.of(context).pathParameters;
      var storeId = params['storeId']!;
      _response = await ff.products.list(limit: limit, storeId: storeId);
      _products = _response!.data;
      loading = false;
      if (mounted) {
        setState(() {});
      }
    });
  }

  // load more
  void _loadMore() async {
    setState(() {
      loading = true;
    });
    var params = GoRouterState.of(context).pathParameters;
    var storeId = params['storeId']!;
    _response = await ff.products.list(storeId: storeId, limit: limit, page: _response!.nextPage);
    _products = [
      ..._products!,
      ..._response!.data,
    ];
    loading = false;
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;

    return BlocBuilder<MarchentStoresBloc, MarchentStoresState>(
      builder: (context, state) {
        if (state.status == MarchentStoresStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        var _floatingActionButton = FloatingActionButton.extended(
          tooltip: t.dashboard.sections.products.addProduct,
          onPressed: () {
            context.go('${GoRouterState.of(context).uri.path}/create');
          },
          icon: const Icon(Ionicons.add),
          label: 
              Text(t.dashboard.sections.products.addProduct),
          // make width 100
          isExtended: true,
        );
        return Scaffold(
          floatingActionButton: _floatingActionButton,
          body: FlexTable(
            // selectable: true,
            configs: activeFields(state.store!).map((e) => e.config).toList(),
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
                        Text(t.dashboard.sections.products.label),
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
                                  hintText: 'مثال: تي شيرت أبيض',
                                  labelText: t.dashboard.sections.products.search,
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
                    bottom: true
                        ? null
                        : PreferredSize(
                            preferredSize: const Size.fromHeight(48),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
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
                                          // som filters
                                          FilterChip(
                                            label: const Text('الكل'),
                                            onSelected: (value) {},
                                            selected: true,
                                          ),
                                          const SizedBox(width: 8),
                                          FilterChip(
                                            label: const Text('المتاح'),
                                            onSelected: (value) {},
                                            selected: false,
                                          ),
                                          const SizedBox(width: 8),
                                          FilterChip(
                                            label: const Text('المخزن'),
                                            onSelected: (value) {},
                                            selected: false,
                                          ),
                                          const SizedBox(width: 8),
                                          FilterChip(
                                            label: const Text('المباع'),
                                            onSelected: (value) {},
                                            selected: false,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    MenuAnchor(
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
                                          ListTile(
                                            title: fields[i].label,
                                            leading: Checkbox(
                                              value: fields[i].visible,
                                              onChanged: (value) {
                                                // context.read<FableController>().toggleField(i);
                                                setState(() {
                                                  fields[i] = fields[i].copyWith(visible: value!);
                                                });
                                              },
                                            ),
                                          ),
                                      ],
                                    ),
                                    const SizedBox(width: 8),
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
                              children: activeFields(state.store!).map((e) => e.label).toList(),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: (loading)
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
                      filteredProducts
                    ]),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: ModelTile(
                            isOdd: index.isOdd,
                            // selected: index == 2,
                            onTap: () {
                              if (filteredProducts != null) {
                                var extra = GoRouterState.of(context).extra;
                                if (extra != null && extra is Map && extra['mode'] == 'select') {
                                  context.pop<Product>(filteredProducts![index]);
                                } else
                                  context.go("${GoRouterState.of(context).uri.path}/${filteredProducts![index].id}");
                              }
                            },
                            child: FlexTableItem(
                              children: activeFields(state.store!).map((e) {
                                if (filteredProducts == null) {
                                  return e.builder(null);
                                }
                                return e.builder(filteredProducts![index]);
                              }).toList(),
                            ),
                          ),
                        );
                      },
                      childCount: filteredProducts?.length ?? 20,
                    ),
                  ),
                  // load more
                  if (loading)
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
                  else if (_response?.hasMore == true)
                    SliverToBoxAdapter(
                      child: SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextButton.icon(onPressed: _loadMore, label: Text(t.loadMore), icon: Icon(Ionicons.arrow_down)),
                        ),
                      ),
                    )
                  else
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
