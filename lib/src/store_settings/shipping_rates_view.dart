import 'package:feeef_marchant/feeef/core/validation/validation_exception.dart';
import 'package:feeef_marchant/feeef/stores/models/store.dart';
import 'package:feeef_marchant/helpers.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/main.dart';
import 'package:feeef_marchant/src/core/algeria_cites.dart';
import 'package:feeef_marchant/src/core/enums.dart';
import 'package:feeef_marchant/src/core/fable.dart';
import 'package:feeef_marchant/src/core/files.dart';
import 'package:feeef_marchant/src/stores/bloc/marchent_stores_bloc.dart';
import 'package:feeef_marchant/src/stores/bloc/marchent_stores_state.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lib/widgets/flex_table.dart';
import 'package:csv/csv.dart';
import 'package:file_saver/file_saver.dart';
import 'package:cross_file/cross_file.dart';

import '../../feeef/core/widgets/alerts.dart';

class StoreShippingRatesPage extends StatelessWidget {
  final String storeId;
  const StoreShippingRatesPage({super.key, required this.storeId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarchentStoresBloc, MarchentStoresState>(
      builder: (context, state) {
        if (state.store == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return StoreShippingRatesView(store: state.store!);
      },
    );
  }
}

class StoreShippingRatesView extends StatefulWidget {
  final Store store;
  const StoreShippingRatesView({super.key, required this.store});

  @override
  State<StoreShippingRatesView> createState() => _StoreShippingRatesViewState();
}

class _StoreShippingRatesViewState extends State<StoreShippingRatesView> {
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
      if (widget.store.defaultShippingRates.length > index) {
        desk = widget.store.defaultShippingRates[index]?[0]?.toString();
        home = widget.store.defaultShippingRates[index]?[1]?.toString();
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
      await ff.stores.update(
        id: widget.store.id,
        data: StoreUpdate(
          defaultShippingRates: rates,
        ),
      );
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

  // ValueNotifier<bool> hasUnsavedChanges = ValueNotifier(false);

  // bool unSavedChanges() {
  //   return hasUnsavedChanges.value;
  // }

  void reset() {
    for (var i = 0; i < rates.length; i++) {
      rates[i].desk.text = (widget.store.defaultShippingRates[i]?[0]).toString();
      rates[i].home.text = (widget.store.defaultShippingRates[i]?[1]).toString();
    }
    // hasUnsavedChanges.value = false;
  }

  String? getErrorText(int x, int y) {
    if (error is FeeefValidationException) {
      return (error as FeeefValidationException).getFieldMessage('defaultShippingRates.$x.$y');
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;

    return BlocBuilder<MarchentStoresBloc, MarchentStoresState>(
      builder: (context, state) {
        return Scaffold(
          body: FlexTable(
            // selectable: true,
            configs: const [
              FlexTableItemConfig.flex(1),
              FlexTableItemConfig.flex(1),
              FlexTableItemConfig.flex(1),
            ],
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  leadingWidth: kMinInteractiveDimension,
                  titleSpacing: 0,
                  // centerTitle: false,
                  title: Row(
                    children: [
                      Text(t.dashboard.sections.shipping.shippingPrices),
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
                  floating: true,
                  snap: true,
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
                                        XFile xfile = XFile(file.path!);
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
                                          var toHome = decoded.elementAt(i + 1).elementAt(2);
                                          var toDesk = decoded.elementAt(i + 1).elementAt(1);
                                          rates[i].desk.text = toDesk.toString();
                                          rates[i].home.text = toHome.toString();
                                        }
                                        print(rates);
                                        context.showSuccessSnackBar(const Text('تم استيراد البيانات بنجاح'));
                                      }
                                    },
                                    icon: const Icon(Ionicons.cloud_download),
                                    label: Text(t.general.import),
                                  ),
                                ),
                                const Spacer(),
                                // set all (quick edit)
                                Tooltip(
                                  message: 'تعديل الأسعار لجميع الولايات',
                                  child: IconButton.filled(
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
                                                AlertCard.info(
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
                                    icon: const Icon(Icons.done_all_rounded),
                                  ),
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
