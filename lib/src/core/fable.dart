import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lib/lib.dart';

class ModelTile extends StatelessWidget {
  const ModelTile({
    super.key,
    required this.child,
    this.onTap,
    this.selected = false,
    this.prevSelected = false,
    this.nextSelected = false,
    this.isOdd = false,
  });
  final Widget child;
  final VoidCallback? onTap;
  final bool selected;
  final bool prevSelected;
  final bool nextSelected;
  final bool isOdd;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Theme.of(context).colorScheme.primary.withOpacity(isOdd ? 0.1 : 0.2),
      focusColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
      hoverColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
      // borderRadius: BorderRadius.vertical(
      //   top: Radius.circular(prevSelected ? 0 : 8),
      //   bottom: Radius.circular(nextSelected ? 0 : 8),
      // ),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        decoration: selected
            ? BoxDecoration(
                // borderRadius: BorderRadius.vertical(
                //   top: Radius.circular(prevSelected ? 0 : 8),
                //   bottom: Radius.circular(nextSelected ? 0 : 8),
                // ),
                color: Theme.of(context).colorScheme.primary.withOpacity(isOdd ? 0.5 : 0.1),
              )
            : BoxDecoration(
                // borderRadius: BorderRadius.vertical(
                //   top: Radius.circular(prevSelected ? 0 : 8),
                //   bottom: Radius.circular(nextSelected ? 0 : 8),
                // ),
                color: Colors.grey.withOpacity(isOdd ? 0.1 : 0),
                // border:  Border(
                //         bottom: BorderSide(
                //           // color: Theme.of(context).colorScheme.primary.withOpacity(isOdd ? 0.1 : 0.2),
                //           color:Colors.grey.withOpacity(0.5),
                //           width: 1,
                //         ),
                //         // top: BorderSide(
                //         //   color: Theme.of(context).colorScheme.primary.withOpacity(isOdd ? 0.1 : 0.2),
                //         //   width: 1,
                //         // ),
                //       ),
              ),
        child: child,
      ),
    );
  }
}

// _Header
class StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  const StickyHeaderDelegate({required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 40;

  @override
  double get minExtent => 40;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class FableField<T> {
  final Widget label;
  final int priority;
  final bool visible;
  final FlexTableItemConfig config;
  final Widget Function(T? value) builder;
  // placeholder

  const FableField({
    required this.label,
    required this.priority,
    required this.visible,
    required this.config,
    required this.builder,
  });

  FableField<T> copyWith({Widget? label, int? priority, bool? visible, FlexTableItemConfig? config, Widget Function(T? value)? builder}) {
    return FableField(
      label: label ?? this.label,
      priority: priority ?? this.priority,
      visible: visible ?? this.visible,
      config: config ?? this.config,
      builder: builder ?? this.builder,
    );
  }
}

// controller
class FableController extends ChangeNotifier {
  List<FableField> fields;
  FableController({
    required this.fields,
  });

  void toggleField(int index) {
    fields[index] = fields[index].copyWith(visible: !fields[index].visible);
    notifyListeners();
  }

  // get visible fields by priority param limit
  List<FableField> getLimitedVisibleFields(int limit) {
    // assert(limit > 0, 'limit must be greater than 0');
    var visibleFields = fields.where((element) => element.visible).toList();
    // sort by priority
    visibleFields.sort((a, b) => a.priority.compareTo(b.priority));
    return visibleFields.take(limit).toList();
  }
}
