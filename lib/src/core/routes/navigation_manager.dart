import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sokrio_users/src/features/users/presentation/pages/user_list_page.dart';

import 'app_routes.dart';

class NavigationManager {
  static final NavigationManager _instance = NavigationManager._internal();

  static NavigationManager get instance => _instance;

  static late final GoRouter router;

  BuildContext get context =>
      router.routerDelegate.navigatorKey.currentContext!;

  GoRouterDelegate get routerDelegate => router.routerDelegate;

  GoRouteInformationParser get routeInformationParser =>
      router.routeInformationParser;

  factory NavigationManager() {
    return _instance;
  }

  NavigationManager._internal() {
    final routes = [
      GoRoute(
        path: AppRoutes.userList,
        pageBuilder: (context, state) => getPage(child: UserListPage(), state: state),
      ),
    ];

    router = GoRouter(initialLocation: AppRoutes.userList, routes: routes);
  }

  static Page getPage({required Widget child, required GoRouterState state}) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
          child: child,
        );
      },
    );
  }
}
