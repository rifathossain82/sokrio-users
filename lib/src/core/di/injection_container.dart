import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:sokrio_users/src/core/core.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// Register ApiClient && ApiService
  sl.registerLazySingleton<ApiClient>(() => ApiClient());
  sl.registerLazySingleton<ApiService>(() => ApiService(sl<ApiClient>().dio));

  /// External
  sl.registerLazySingleton(() => GlobalKey<ScaffoldMessengerState>());
}