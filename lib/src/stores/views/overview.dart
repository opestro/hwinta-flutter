import 'dart:ui';

import 'package:feeef_marchant/feeef/core/widgets/alerts.dart';
import 'package:feeef_marchant/feeef/interfaces/embadded/store_summary.dart';
import 'package:feeef_marchant/feeef/interfaces/order.dart';
import 'package:feeef_marchant/helpers.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/main.dart';
import 'package:feeef_marchant/src/auth/auth_bloc.dart';
import 'package:feeef_marchant/src/stores/views.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:lib/lib.dart';
import 'package:recase/recase.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:url_launcher/url_launcher_string.dart';

import '../bloc/marchent_stores_bloc.dart';
// import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class StoreOverview extends StatefulWidget {
  const StoreOverview({super.key});

  @override
  State<StoreOverview> createState() => _StoreOverviewState();
}

class _StoreOverviewState extends State<StoreOverview> {
  StoreSummary? get summary => context.read<MarchentStoresBloc>().state.summary;

  void _load() async {
    final storeId = GoRouterState.of(context).pathParameters['storeId']!;
    context.read<MarchentStoresBloc>().add(MarchentStoresEvent.setSummary(await ff.stores.summary(id: storeId)));
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _load();
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return ListView(
      children: [
        // Carousel using page
        // AspectRatio(
        //   aspectRatio: forScreen(width: width, sm: 3, md: 4, lg: 4)!,
        //   child: PageView.builder(
        //     itemCount: 3,
        //     itemBuilder: (context, index) {
        //       return Container(
        //         color: index % 2 == 0 ? Colors.red : Colors.blue,
        //         child: Center(
        //           child: Text(
        //             'Page $index',
        //             style: TextStyle(fontSize: 32, color: Colors.white),
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        // ),

        // telegram link
        Padding(
          padding: const EdgeInsets.only(top: 24,left: 24,right: 24),
          child: GestureDetector(
            onTap: () {
              launchUrlString("https://t.me/feeefchat");
            },
            child: const AlertCard.info(
              icon: Icon(Icons.telegram_outlined),
              title: Text("قناة فيف والدعم الفني على تلجرام 24/7"),
              subtitle: Text("نحن هنا للإجابة على أسئلتكم واستفساراتكم. اضغط هنا للانضمام إلى قناة ومجتمع فيف."),
            ),
          ),
        ),

        // hello nessage
        Container(
          padding: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return RichText(
                      textAlign: TextAlign.start,
                      // allow wrap
                      softWrap: true,
                      maxLines: 10,
                      text: TextSpan(
                        // set the default style for the children TextSpans
                        style: Theme.of(context).textTheme.headlineSmall,
                        children: <TextSpan>[
                          TextSpan(text: t.dashboard.welcomeUser, style: const TextStyle(fontWeight: FontWeight.w200)),
                          TextSpan(text: ' ${state.auth?.user.name} 👋', style: const TextStyle(fontWeight: FontWeight.w900)),
                          TextSpan(text: '\n${t.dashboard.sections.overview.label}', style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w900)),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        // 3 cards for (products/orders/ lefted orders)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ForScreen(
            // sm: Column(
            //   children: [
            //     _ordersPendingCard(context),
            //     const SizedBox(height: 16),
            //     _ordersDeliveredAnalyticsCard(context),
            //     const SizedBox(height: 16),
            //     _ordersCancelledAnalyticsCard(context),
            //     const SizedBox(height: 16),
            //     BlurFeature(
            //       label: Text("قريبا"),
            //       child: _trafficAnalyticsCard(context),
            //     ),
            //   ],
            // ),
            md: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: _ordersPendingCard(context),
                    ),
                    const SizedBox(width: 16),
                    Flexible(
                      child: _ordersDeliveredAnalyticsCard(context),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Flexible(
                      child: _ordersCancelledAnalyticsCard(context),
                    ),
                    const SizedBox(width: 16),
                    Flexible(
                      child: BlurFeature(
                        label: const Text("قريبا"),
                        child: _trafficAnalyticsCard(context),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            lg: Row(
              children: [
                Flexible(
                  child: _ordersPendingCard(context),
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: _ordersDeliveredAnalyticsCard(context),
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: _ordersCancelledAnalyticsCard(context),
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: BlurFeature(
                    label: Text(t.soon),
                    child: _trafficAnalyticsCard(context),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        //  Line chart and list of orders table

        // 3 cards for (products/orders/ lefted orders)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ForScreen(
            sm: Column(
              children: [
                _quickActions(context),
                const SizedBox(height: 16),
                _ordersChart(context),
                const SizedBox(height: 16),
                _ordersTable(context),
              ],
            ),
            md: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      _ordersChart(context),
                      const SizedBox(width: 16),
                      _quickActions(context)
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: _ordersTable(context),
                ),
              ],
            ),
            lg: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 3,
                  child: _ordersChart(context),
                ),
                const SizedBox(width: 16),
                Flexible(
                  flex: 2,
                  child: Column(
                    children: [
                      _quickActions(context),
                      _ordersTable(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // _quickActions
  Widget _quickActions(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Ionicons.flash),
          title: Text(t.dashboard.sections.overview.quickLinks.label),
        ),
        Card(
          elevation: 0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), side: BorderSide(width: 1, color: Theme.of(context).dividerColor)),
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Ionicons.create_outline),
                title: Text(t.dashboard.sections.overview.quickLinks.addProduct),
                onTap: () => context.go(
                  GoRouterState.of(context).uri.path + '/products/create',
                ),
              ),
              ListTile(
                leading: const Icon(Ionicons.cart_outline),
                title: Text(t.dashboard.sections.overview.quickLinks.abandonedCarts),
                onTap: () => context.go(
                  Uri(
                    path: GoRouterState.of(context).uri.path + '/orders',
                    queryParameters: {
                      'status': OrderStatus.draft.name,
                    },
                  ).toString(),
                ),
              ),
              ListTile(
                onTap: () => context.go(
                  GoRouterState.of(context).uri.path + '/settings',
                ),
                leading: const Icon(Ionicons.pricetag_outline),
                title: Text(t.dashboard.sections.overview.quickLinks.changeTheme),
              ),
              ListTile(
                onTap: () => context.go(
                  GoRouterState.of(context).uri.path + '/settings',
                ),
                leading: const Icon(Ionicons.settings_outline),
                title: Text(t.dashboard.sections.overview.quickLinks.storeSettings),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // orders chart
  Widget _ordersChart(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: const Icon(Ionicons.bar_chart_outline),
          title: Text(t.dashboard.sections.overview.statistics),
        ),
        Flexible(
          child: Card(
            elevation: 0,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), side: BorderSide(width: 1, color: Theme.of(context).dividerColor)),
            child: Container(
              constraints: const BoxConstraints(maxHeight: 250),
              child: SimpleModelViewChartLine(
                points: [
                  for (var i = 0; i < 10; i++)
                    Offset(
                      DateTime.now().subtract(Duration(days: i)).millisecondsSinceEpoch.toDouble(),
                      faker.datatype.number(max: 100).toDouble(),
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  // orders table
  Widget _ordersTable(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Ionicons.cart_outline),
          title: Text(t.dashboard.sections.overview.recentOrders.label),
          trailing: TextButton(
            onPressed: () {
              context.go(
                Uri(
                  path: GoRouterState.of(context).uri.path + '/orders',
                  // queryParameters: {
                  //   'status': OrderStatus.draft.name,
                  // },
                ).toString(),
              );
            },
            child: Text(t.dashboard.sections.overview.recentOrders.viewAll),
          ),
        ),
        BlurFeature(
          // blured: false,
          label: Text(t.soon),
          child: Card(
            elevation: 0,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), side: BorderSide(width: 1, color: Theme.of(context).dividerColor)),
            child: Column(
              children: [
                for (var i = 0; i < 5; i++)
                  ListTile(
                    title: Text(faker.commerce.product()),
                    subtitle: Text(faker.commerce.productName()),
                    trailing: Text(faker.date.month().toString()),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _ordersAnalyticsCard(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), side: BorderSide(width: 1, color: Theme.of(context).dividerColor)),
      child: ListTile(
        leading: const Icon(
          Ionicons.cart_outline,
          size: 30,
        ),
        title: const Text("طلبات قيد المعالجة"),
        subtitle: summary == null
            ? const TextPlaceholder()
            : Text(
                summary!.orders.processing.toString(),
                style: Theme.of(context).textTheme.headlineLarge,
              ),
      ),
    );
  }

  Widget _ordersPendingCard(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(0),
      ),
      onPressed: () {
        var url = Uri(
          path: GoRouterState.of(context).uri.path + '/orders',
          queryParameters: {
            'status': OrderStatus.pending.name,
          },
        ).toString();
        context.go(url);
      },
      child: ListTile(
        contentPadding: const EdgeInsetsDirectional.only(start: 12, end: 6),
        leading: Icon(
          Ionicons.cart_outline,
          size: 30,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(t.orders.status.pending.titleCase),
        ),
        subtitle: summary == null
            ? const TextPlaceholder()
            : Text(
                (summary!.orders.pending + summary!.orders.draft).toString(),
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: isSm(MediaQuery.sizeOf(context).width) ? 18 : 30,
                    ),
              ),
      ),
    );
  }

  // cancelled
  Widget _ordersCancelledAnalyticsCard(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(0),
      ),
      onPressed: () {
        var url = Uri(
          path: GoRouterState.of(context).uri.path + '/orders',
          queryParameters: {
            'status': OrderStatus.cancelled.name,
          },
        ).toString();
        context.go(url);
      },
      child: ListTile(
        contentPadding: const EdgeInsetsDirectional.only(start: 12, end: 6),
        leading: const Icon(
          Ionicons.close_outline,
          size: 30,
        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(t.orders.status.cancelled.titleCase),
        ),
        subtitle: summary == null
            ? const TextPlaceholder()
            : Text(
                summary!.orders.cancelled.toString(),
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: isSm(MediaQuery.sizeOf(context).width) ? 18 : 30,
                    ),
              ),
      ),
    );
  }

  Widget _ordersDeliveredAnalyticsCard(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(0),
      ),
      onPressed: () {
        var url = Uri(
          path: GoRouterState.of(context).uri.path + '/orders',
          queryParameters: {
            'status': OrderStatus.completed.name,
          },
        ).toString();
        context.go(url);
      },
      child: ListTile(
        contentPadding: const EdgeInsetsDirectional.only(start: 12, end: 6),
        leading:  Icon(
          Ionicons.checkmark_done,
          size: 30,
                    color: Theme.of(context).colorScheme.primary,

        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(t.orders.status.completed.titleCase),
        ),
        subtitle: summary == null
            ? const TextPlaceholder()
            : Text(
                summary!.orders.completed.toString(),
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: isSm(MediaQuery.sizeOf(context).width) ? 18 : 30,
                    ),
              ),
      ),
    );
  }

  Widget _trafficAnalyticsCard(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), side: BorderSide(width: 1, color: Theme.of(context).dividerColor)),
      child: ListTile(
        contentPadding: const EdgeInsetsDirectional.only(start: 12, end: 6),
        leading: const Icon(
          Ionicons.bar_chart_outline,
          size: 30,
        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(t.general.visits.titleCase),
        ),
        subtitle: Text(
          faker.datatype.number().toString(),
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontSize: isSm(MediaQuery.sizeOf(context).width) ? 18 : 30,
              ),
        ),
      ),
    );
  }
}

////////////////////////////// PieChartSample3 ////////////////////
class SimpleModelViewChartLine extends StatefulWidget {
  final List<Offset> points;
  const SimpleModelViewChartLine({super.key, required this.points});

  @override
  State<SimpleModelViewChartLine> createState() => _SimpleModelViewChartLineState();
}

class _SimpleModelViewChartLineState extends State<SimpleModelViewChartLine> {
  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 18,
        left: 12,
        top: 24,
        bottom: 12,
      ),
      child: BlurFeature(
        label: Text(t.soon),
        child: LineChart(
          mainData(),
        ),
      ),
    );
  }

  int _prevDay = 0;
  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      // fontWeight: FontWeight.bold,
      fontSize: 12,
    );
    Widget text;

    // same day shows only once
    int currentDay = DateTime.fromMillisecondsSinceEpoch(value.toInt()).day;
    if (currentDay != _prevDay) {
      text = Text(
        currentDay.toString(),
        style: style,
        textAlign: TextAlign.center,
      );
      _prevDay = currentDay;
    } else {
      text = Container();
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    Widget text;
    if (value.toInt() % 5 == 0) {
      text = Text(
        value.toInt().toString(),
        style: style,
        textAlign: TextAlign.right,
      );
    } else {
      text = Container();
    }

    return text;
  }

  LineChartData mainData() {
    return LineChartData(
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (_) => Theme.of(context).colorScheme.primary,
          getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
            return touchedBarSpots.map((barSpot) {
              return LineTooltipItem(
                "${timeago.format(DateTime.fromMillisecondsSinceEpoch(barSpot.x.toInt()))} : ${barSpot.y.toInt()}",
                Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).colorScheme.surface),
              );
            }).toList();
          },
        ),
        getTouchedSpotIndicator: (LineChartBarData barData, List<int> spotIndexes) {
          return spotIndexes.map((spotIndex) {
            return TouchedSpotIndicatorData(
              FlLine(
                color: Theme.of(context).colorScheme.primary,
                strokeWidth: 1,
              ),
              FlDotData(
                getDotPainter: (spot, percent, barData, index) {
                  return FlDotCirclePainter(
                    radius: 5,
                    color: Theme.of(context).colorScheme.primary,
                    strokeWidth: 2,
                    strokeColor: Theme.of(context).colorScheme.surface,
                  );
                },
              ),
            );
          }).toList();
        },
      ),
      gridData: const FlGridData(show: true),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
            sideTitles: SideTitles(
          showTitles: true,
          getTitlesWidget: bottomTitleWidgets,
        )),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitleWidgets,
          ),
        ),
      ),
      borderData: FlBorderData(show: false),
      lineBarsData: [
        LineChartBarData(
          spots: [
            for (var item in widget.points!)
              FlSpot(
                item.dx,
                item.dy,
              ),
          ],
          isCurved: false,
          color: Theme.of(context).colorScheme.primary,
          barWidth: 1,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.primary.withOpacity(0.8),
                Theme.of(context).colorScheme.primary.withOpacity(0),
              ],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
            ),
          ),
          aboveBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.onPrimary.withOpacity(0.2),
                Theme.of(context).colorScheme.onPrimary.withOpacity(0),
              ],
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
            ),
          ),
        ),
      ],
    );
  }
}

// BlurFeature
// its widget blure the child and andd lebel to center
class BlurFeature extends StatelessWidget {
  final bool blured;
  final Widget child;
  final Widget label;
  const BlurFeature({super.key, this.blured = true, required this.child, required this.label});

  @override
  Widget build(BuildContext context) {
    if (!blured || kDebugMode) {
      return child;
    }
    return Stack(
      children: [
        child,
        Positioned(
          top: -10,
          bottom: -10,
          left: -10,
          right: -10,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Theme.of(context).colorScheme.surface.withOpacity(0.5),
                child: Center(
                  child: label,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
