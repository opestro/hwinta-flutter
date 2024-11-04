// alerts
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AlertCard extends StatelessWidget {
  final Widget icon;
  final Color? color;
  final Widget title;
  final Widget? subtitle;
  final Widget? trailing;
  const AlertCard({
    super.key,
    this.color,
    required this.title,
    this.icon = const Icon(Ionicons.alert_circle),
    this.subtitle,
    this.trailing,
  });

  const AlertCard.error({
    super.key,
    this.color = Colors.red,
    required this.title,
    this.icon = const Icon(Ionicons.close_circle),
    this.subtitle,
    this.trailing,
  });

  const AlertCard.success({
    super.key,
    this.color = Colors.green,
    required this.title,
    this.icon = const Icon(Ionicons.checkmark_circle),
    this.subtitle,
    this.trailing,
  });

  const AlertCard.warning({
    super.key,
    this.color = Colors.orange,
    required this.title,
    this.icon = const Icon(Icons.warning_rounded),
    this.subtitle,
    this.trailing,
  });

  // info
  const AlertCard.info({
    super.key,
    this.color = Colors.blue,
    required this.title,
    this.icon = const Icon(Icons.info_rounded),
    this.subtitle,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    var color = this.color ?? Theme.of(context).colorScheme.primary;
    return Card.outlined(
      color: color.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: color.withOpacity(0.5)),
      ),
      child: ListTile(
        leading: IconTheme(data: Theme.of(context).iconTheme.copyWith(color: color), child: icon),
        title: DefaultTextStyle(style: Theme.of(context).textTheme.labelLarge!.copyWith(color: color), child: title),
        subtitle: subtitle,
        trailing: trailing,
      ),
    );
  }
}
