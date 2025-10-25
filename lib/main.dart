import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sokrio_users/src/core/core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();

  /// Initialize Navigation Manager
  NavigationManager.instance;

  /// Initialize dependency injection container
  await init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Dismiss the soft keyboard if it's active.
    /// This ensures that the keyboard doesn't remain open unnecessarily
    /// when the app is first launched, which can obstruct the initial view.
    KeyboardUtils.hideKeyboard();

    return MaterialApp.router(
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: KScrollBehavior(),
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      theme: LightTheme.themeData,
      routerDelegate: NavigationManager.router.routerDelegate,
      routeInformationParser: NavigationManager.router.routeInformationParser,
      routeInformationProvider: NavigationManager.router.routeInformationProvider,
      scaffoldMessengerKey: sl.get<GlobalKey<ScaffoldMessengerState>>(),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
