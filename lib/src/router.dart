// auth middleware
import 'dart:async';

import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/src/orders/list/views/orders_view.dart';
import 'package:feeef_marchant/src/orders/update/views/update_order_view.dart';
import 'package:feeef_marchant/src/shipping_methods/list/shipping_methods_view.dart';
import 'package:feeef_marchant/src/shipping_methods/show/shipping_methods_find.dart';
import 'package:feeef_marchant/src/store_settings/settings_view.dart';
import 'package:feeef_marchant/src/store_settings/shipping_rates_view.dart';
import 'package:feeef_marchant/src/stores/views/merchant_store_products_show_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'auth/auth_bloc.dart';
import 'auth/auth_view.dart';
import 'integrations/integrations.dart';
import 'stores/views.dart';
import 'auth/profile_view.dart';
import 'stores/views/overview.dart';

FutureOr<String?> _authMiddleware(BuildContext context, GoRouterState state) {
  if (!context.read<AuthBloc>().state.isSignedIn) {
    return Uri(path: '/auth', queryParameters: {
      'form': 'signin',
      'redirect': state.uri.toString(),
    }).toString();
  }
  return null;
}

// guest middleware
FutureOr<String?> _guestMiddleware(BuildContext context, GoRouterState state) {
  if (context.read<AuthBloc>().state.isSignedIn) {
    // if redirect is set, use it, otherwise go to home
    return state.uri.queryParameters['redirect'] ?? '/';
  }
  return null;
}

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();
// GoRouter configuration
final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const SizedBox();
      },
      // redirect: _authMiddleware,
      redirect: (_, __) => '/stores',
    ),

    GoRoute(
      path: '/stores',
      builder: (context, state) {
        return MarchentStores(
          showCreateStore: state.uri.queryParameters['showCreateStore'] == 'true',
        );
      },
      redirect: _authMiddleware,
      routes: [
        ShellRoute(
            navigatorKey: _shellNavigatorKey,
            builder: (context, state, child) {
              return MerchantStoresDashboardView(
                storeId: state.pathParameters['storeId']!,
                content: child,
              );
            },
            routes: [
              GoRoute(
                path: ':storeId',
                builder: (context, state) => const StoreOverview(),
                redirect: _authMiddleware,
                routes: [
                  // products
                  GoRoute(
                    path: 'products',
                    builder: (context, state) => const MerchantStoreProductsView(),
                    redirect: _authMiddleware,
                    routes: [
                      GoRoute(
                        path: 'create',
                        builder: (context, state) => const ProductsCreateView(),
                        redirect: _authMiddleware,
                      ),
                      GoRoute(
                        path: ':productId',
                        builder: (context, state) => ProductsCreateView(id: state.pathParameters["productId"]),
                        redirect: _authMiddleware,
                      ),
                    ],
                  ),
                  // orders
                  GoRoute(
                    path: 'orders',
                    builder: (context, state) => const OrdersPage(),
                    redirect: _authMiddleware,
                    routes: [
                      GoRoute(
                        path: 'create',
                        builder: (context, state) => const UpdateOrderPage(),
                        redirect: _authMiddleware,
                      ),
                      GoRoute(
                        path: ':orderId',
                        builder: (context, state) => UpdateOrderPage(orderId: state.pathParameters['orderId']!),
                        redirect: _authMiddleware,
                      ),
                    ],
                  ),
                  // pos
                  GoRoute(
                    path: 'pos',
                    builder: (context, state) => Center(child: Text(t.soon)),
                    redirect: _authMiddleware,
                  ),
                  // themes
                  GoRoute(
                    path: 'themes',
                    builder: (context, state) => Center(child: Text(t.soon)),
                    redirect: _authMiddleware,
                  ),
                  // shipping_rates
                  GoRoute(
                    path: 'shipping_rates',
                    builder: (context, state) => StoreShippingRatesPage(storeId: state.pathParameters['storeId']!),
                    redirect: _authMiddleware,
                  ),
                  // shipping
                  GoRoute(
                    path: 'shipping_methods',
                    builder: (context, state) => ShippingMethodsListPage(storeId: state.pathParameters['storeId']!),
                    redirect: _authMiddleware,
                    routes: [
                      GoRoute(
                        path: 'create',
                        builder: (context, state) => ShippingMethodsFindPage(
                          storeId: state.pathParameters['storeId']!,
                        ),
                        redirect: _authMiddleware,
                      ),
                      GoRoute(
                        path: ':shippingMethodId',
                        builder: (context, state) => ShippingMethodsFindPage(
                          storeId: state.pathParameters['storeId']!,
                          shippingMethodId: state.pathParameters['shippingMethodId'],
                        ),
                        redirect: _authMiddleware,
                      ),
                    ],
                  ),
                  // integrations
                  GoRoute(
                    path: 'integrations',
                    builder: (context, state) => IntegrationsPage(storeId: state.pathParameters['storeId']!),
                    redirect: _authMiddleware,
                  ),
                  // settings
                  GoRoute(
                    path: 'settings',
                    builder: (context, state) => StoreSettingsPage(storeId: state.pathParameters['storeId']!),
                    redirect: _authMiddleware,
                  ),
                ],
              ),
            ]),
      ],
    ),
    // auth, has optional parameter (form for signin or signup)
    GoRoute(
      path: '/auth',
      builder: (context, state) {
        final form = state.uri.queryParameters['form'] == 'signup' ? AuthForm.signup : AuthForm.signin;
        return AuthView(form: form);
      },
      redirect: _guestMiddleware,
    ),
    // profile
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileView(),
      redirect: _authMiddleware,
    ),
  ],
  refreshListenable: Listenable.merge([
    AuthBloc.currentUser,
  ]),
);
