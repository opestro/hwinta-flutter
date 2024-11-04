// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:feeef_marchant/feeef/stores/models/store.dart';
import 'package:feeef_marchant/helpers.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/src/auth/auth_bloc.dart';
import 'package:feeef_marchant/src/stores/bloc/marchent_stores_bloc.dart';
import 'package:feeef_marchant/src/stores/bloc/marchent_stores_state.dart';
import 'package:feeef_marchant/src/settings/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MerchantStoresDashboardView extends StatefulWidget {
  final String storeId;
  final Widget? content;
  const MerchantStoresDashboardView({super.key, required this.storeId, this.content});

  @override
  State<MerchantStoresDashboardView> createState() => _MerchantStoresDashboardViewState();
}

class _MerchantStoresDashboardViewState extends State<MerchantStoresDashboardView> {
  bool forceSmall = false;

  @override
  void initState() {
    super.initState();
    context.read<MarchentStoresBloc>().add(MarchentStoresEvent.find(widget.storeId));
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return BlocConsumer<MarchentStoresBloc, MarchentStoresState>(
      listener: (context, state) {
        if (state.status == MarchentStoresStatus.findError) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error')));
        } else if (state.status == MarchentStoresStatus.found) {
          context.read<SettingsBloc>().add(
                SettingsEvent.setTheme(
                  color: state.store?.decoration?.primary,
                ),
              );
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: switch (state.status) {
              MarchentStoresStatus.findError => const Center(child: Text('Error')),
              MarchentStoresStatus.found => Row(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 150),
                      // start quik and slow
                      curve: Curves.easeInOut,
                      width: forceSmall ? kMinInteractiveDimension + 16 : forScreen(width: width, sm: kMinInteractiveDimension + 16, md: kMinInteractiveDimension + 30, lg: 300)!,
                      padding: const EdgeInsets.all(8),
                      child: NavigationSidebar(
                        mode: forceSmall ? NavigationSidebarItemMode.square : forScreen(width: width, sm: NavigationSidebarItemMode.square, md: NavigationSidebarItemMode.squareWithTitle, lg: NavigationSidebarItemMode.full)!,
                        onToggle: (value) {
                          setState(() {
                            forceSmall = value;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          AppBar(
                            surfaceTintColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            // store logo
                            leading: Tooltip(
                              message: state.store!.getPublicUrl(),
                              child: InkWell(
                                onTap: () {
                                  launchUrlString(state.store!.getPublicUrl());
                                },
                                borderRadius: BorderRadius.circular(100),
                                child: Align(
                                  child: state.store!.logoUrl == null && state.store!.ondarkLogoUrl == null
                                      ? const CircleAvatar(radius: 20, child: Icon(Ionicons.storefront, size: 22))
                                      : Image.network(
                                          Theme.of(context).brightness == Brightness.light ? state.store!.logoUrl ?? state.store!.ondarkLogoUrl! : state.store!.ondarkLogoUrl ?? state.store!.logoUrl!,
                                          width: 44,
                                          height: 44,
                                        ),
                                ),
                              ),
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Flexible(child: Text(state.store!.name, style: Theme.of(context).textTheme.titleMedium)),
                                    const SizedBox(width: 4),
                                    if (state.store?.verifiedAt != null)
                                      const Tooltip(
                                        message: 'تم التحقق منه',
                                        child: Icon(
                                          Icons.verified,
                                          size: 18,
                                        ),
                                      ),
                                  ],
                                ),
                                if (state.store!.title != null) Text(state.store!.title!, style: Theme.of(context).textTheme.bodySmall),
                              ],
                            ),

                            automaticallyImplyLeading: false,
                            actions: [
                              AppBarActions(),
                              SizedBox(width: 8),
                            ],
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(17)),
                                color: Theme.of(context).dividerColor,
                              ),
                              padding: const EdgeInsetsDirectional.only(start: 1, top: 1),
                              child: Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.surface,
                                    borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(16)),
                                  ),
                                  child: widget.content ?? const SizedBox()),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              _ => const Center(child: CircularProgressIndicator()),
            },
          ),
        );
      },
    );
  }
}

enum NavigationSidebarItemMode {
  full,
  square,
  squareWithTitle,
}

class NavigationSidebar extends StatelessWidget {
  final NavigationSidebarItemMode mode;
  final void Function(bool)? onToggle;
  const NavigationSidebar({
    super.key,
    this.mode = NavigationSidebarItemMode.full,
    this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    var route = GoRouterState.of(context);
    var storeId = route.pathParameters['storeId']!;
    return Column(
      children: [
        // back list of stores
        NavigationSidebarItem(
          leading: Icon(Ionicons.chevron_forward),
          title: Text(t.stores.myStores),
          mode: mode,
          onTap: () => context.go('/stores'),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                NavigationSidebarItem(
                  leading: route.fullPath == "/stores/:storeId" ? Icon(Ionicons.storefront) : Icon(Ionicons.storefront_outline),
                  title: Text(t.dashboard.sections.overview.label),
                  selected: route.fullPath == "/stores/:storeId",
                  mode: mode,
                  onTap: () => context.go('/stores/$storeId'),
                ),
                NavigationSidebarItem(
                  leading: route.fullPath!.startsWith("/stores/:storeId/products") ? Icon(Ionicons.cube) : Icon(Ionicons.cube_outline),
                  title: Text(t.dashboard.sections.products.label),
                  selected: route.fullPath!.startsWith("/stores/:storeId/products"),
                  mode: mode,
                  onTap: () => context.go('/stores/$storeId/products'),
                ),
                NavigationSidebarItem(
                  leading: route.fullPath!.startsWith("/stores/:storeId/orders") ? Icon(Ionicons.cart) : Icon(Ionicons.cart_outline),
                  title: Text(t.dashboard.sections.orders.label),
                  selected: route.fullPath!.startsWith("/stores/:storeId/orders"),
                  mode: mode,
                  onTap: () => context.go('/stores/$storeId/orders'),
                ),
                // POS
                NavigationSidebarItem(
                  leading: route.fullPath == "/stores/:storeId/pos" ? Icon(Ionicons.cash) : Icon(Ionicons.cash_outline),
                  title: Text(t.dashboard.sections.pos.label),
                  selected: route.fullPath == "/stores/:storeId/pos",
                  mode: mode,
                  onTap: () => context.go('/stores/$storeId/pos'),
                ),
              ],
            ),
          ),
        ),
        Divider(
          height: 10,
        ),
        // themes
        NavigationSidebarItem(
          leading: route.fullPath == "/stores/:storeId/themes" ? Icon(Ionicons.color_palette) : Icon(Ionicons.color_palette_outline),
          title: Text(t.dashboard.sections.theme.label),
          selected: route.fullPath == "/stores/:storeId/themes",
          mode: mode,
          onTap: () => context.go('/stores/$storeId/themes'),
        ),
        // الشحن والتوصيل
        // NavigationSidebarItem(
        //   leading: route.fullPath == "/stores/:storeId/shipping_methods" ? Icon(Ionicons.rocket) : Icon(Ionicons.rocket_outline),
        //   title: Text('الشحن والتوصيل'),
        //   selected: route.fullPath == "/stores/:storeId/shipping_methods",
        //   mode: mode,
        //   onTap: () => context.go('/stores/$storeId/shipping_methods'),
        // ),
        NavigationSidebarItem(
          leading: route.fullPath == "/stores/:storeId/shipping_rates" ? Icon(Ionicons.rocket) : Icon(Ionicons.rocket_outline),
          title: Text(t.dashboard.sections.shipping.label),
          selected: route.fullPath == "/stores/:storeId/shipping_rates",
          mode: mode,
          onTap: () => context.go('/stores/$storeId/shipping_rates'),
        ),
        // التكامل
        NavigationSidebarItem(
          leading: route.fullPath == "/stores/:storeId/integrations" ? Icon(Icons.extension_rounded) : Icon(Icons.extension_outlined),
          title: Text(t.dashboard.sections.integrations.label),
          selected: route.fullPath == "/stores/:storeId/integrations",
          mode: mode,
          onTap: () => context.go('/stores/$storeId/integrations'),
        ),
        NavigationSidebarItem(
          leading: route.fullPath == "/stores/:storeId/settings" ? Icon(Ionicons.settings) : Icon(Ionicons.settings_outline),
          title: Text(t.dashboard.sections.settings.label),
          selected: route.fullPath == "/stores/:storeId/settings",
          mode: mode,
          onTap: () => context.go('/stores/$storeId/settings'),
        ),
        if (forScreen(width: MediaQuery.sizeOf(context).width, sm: false, md: false, lg: true) == true)
          NavigationSidebarItem(
            leading: Icon(Ionicons.menu_outline),
            title: Text(
              mode == NavigationSidebarItemMode.full ? t.dashboard.sections.expandMenu : t.dashboard.sections.collapseMenu,
            ),
            mode: mode,
            onTap: () {
              onToggle?.call(mode == NavigationSidebarItemMode.full ? true : false);
            },
          ),
      ],
    );
  }
}

class NavigationSidebarItem extends StatelessWidget {
  final Widget? leading;
  final Widget title;
  final Widget? subtitle;
  final Widget? trailing;
  final bool? selected;
  final NavigationSidebarItemMode mode;
  final VoidCallback? onTap;
  const NavigationSidebarItem({
    super.key,
    required this.leading,
    required this.title,
    this.subtitle,
    this.trailing,
    this.selected,
    this.mode = NavigationSidebarItemMode.full,
    this.onTap,
  });
  const NavigationSidebarItem.square({
    super.key,
    required this.leading,
    required this.title,
    this.subtitle,
    this.trailing,
    this.selected,
    this.onTap,
  }) : mode = NavigationSidebarItemMode.square;
  const NavigationSidebarItem.squareWithTitle({
    super.key,
    required this.leading,
    required this.title,
    this.subtitle,
    this.trailing,
    this.selected,
    this.onTap,
  }) : mode = NavigationSidebarItemMode.squareWithTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        width: double.infinity,
        alignment: AlignmentDirectional.centerStart,
        padding: mode == NavigationSidebarItemMode.squareWithTitle ? const EdgeInsets.all(4.0) : const EdgeInsets.all(0),
        child: Stack(
          children: [
            if (selected != null)
              Positioned.fill(
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: 4,
                    height: selected! ? 30 : 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    // color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            Align(
              alignment: mode == NavigationSidebarItemMode.squareWithTitle ? AlignmentDirectional.center : AlignmentDirectional.centerStart,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (leading != null) ...[
                    Column(
                      children: [
                        SizedBox.square(
                          dimension: mode == NavigationSidebarItemMode.squareWithTitle ? kMinInteractiveDimension * 0.8 : kMinInteractiveDimension,
                          child: Center(child: leading),
                        ),
                        if (mode == NavigationSidebarItemMode.squareWithTitle) ...[
                          DefaultTextStyle(
                            style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 10),
                            child: title,
                          ),
                        ],
                      ],
                    ),
                  ],
                  if (mode == NavigationSidebarItemMode.full) ...[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DefaultTextStyle(
                          style: Theme.of(context).textTheme.labelLarge!,
                          child: title,
                        ),
                        if (subtitle != null)
                          DefaultTextStyle(
                            style: Theme.of(context).textTheme.labelSmall!,
                            child: subtitle!,
                          ),
                      ],
                    ),
                    Spacer(),
                    if (trailing != null)
                      SizedBox.square(
                        dimension: kMinInteractiveDimension,
                        child: Center(child: trailing),
                      ),
                  ]
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarActions extends StatelessWidget {
  const AppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // lang
        IconButton(
          icon: Icon(Ionicons.language_outline),
          onPressed: () {
            context.read<SettingsBloc>().add(
                  SettingsEvent.toggleLocale(),
                );
          },
        ),
        // theme
        IconButton(
          // icon: Icon(Ionicons.moon_outline),
          icon: BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) {
              return state.themeMode == ThemeMode.dark
                  ? Icon(Ionicons.moon_outline)
                  : state.themeMode == ThemeMode.light
                      ? Icon(Ionicons.sunny_outline)
                      : Icon(Ionicons.cloudy_night_outline);
            },
          ),
          onPressed: () {
            context.read<SettingsBloc>().add(
                  SettingsEvent.toggleThemeMode(),
                );
          },
        ),
        // user
        BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return IconButton(
              padding: const EdgeInsets.all(2),
              icon: CircleAvatar(
                backgroundImage: state.auth?.user.photoUrl != null ? NetworkImage(state.auth!.user.photoUrl!) : null,
                child: state.auth?.user.photoUrl == null ? const Icon(Ionicons.person_outline) : null,
              ),
              onPressed: () {
                context.push('/profile');
              },
            );
          },
        ),
      ],
    );
  }
}
