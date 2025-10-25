import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:sokrio_users/src/core/core.dart';
import 'package:sokrio_users/src/features/users/data/models/user_model.dart';
import 'package:sokrio_users/src/features/users/presentation/bloc/user_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize Navigation Manager
  NavigationManager.instance;

  /// Initialize dependency injection container
  await init();

  /// Initialize Hive
  await Hive.initFlutter();
  Hive.registerAdapter(UserModelAdapter());

  /// Enable edge-to-edge mode
  SystemUiController.enableEdgeToEdge();

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

    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => sl<UserBloc>())],
      child: MaterialApp.router(
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
        routeInformationProvider:
            NavigationManager.router.routeInformationProvider,
        scaffoldMessengerKey: sl.get<GlobalKey<ScaffoldMessengerState>>(),
      ),
    );
  }
}