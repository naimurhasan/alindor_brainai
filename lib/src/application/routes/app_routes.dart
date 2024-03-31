import 'package:alindor_brainai/src/core/widgets/not_found_page.dart';
import 'package:alindor_brainai/src/features/login/presentation/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:alindor_brainai/src/core/utils/constants.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final GoRouter _router = GoRouter(
    initialLocation: "/",
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: "/",
        name: Routes.root,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: LoginPage(),
        ),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );

  static GoRouter get router => _router;
}
