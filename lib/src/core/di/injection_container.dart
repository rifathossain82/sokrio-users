import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:sokrio_users/src/core/core.dart';
import 'package:sokrio_users/src/features/users/data/data_source/user_local_data_source.dart';
import 'package:sokrio_users/src/features/users/data/data_source/user_local_data_source_impl.dart';
import 'package:sokrio_users/src/features/users/data/data_source/user_remote_data_source.dart';
import 'package:sokrio_users/src/features/users/data/data_source/user_remote_data_source_impl.dart';
import 'package:sokrio_users/src/features/users/data/repositories/user_repository_impl.dart';
import 'package:sokrio_users/src/features/users/domain/repositories/user_repository.dart';
import 'package:sokrio_users/src/features/users/domain/use_cases/get_cached_users.dart';
import 'package:sokrio_users/src/features/users/domain/use_cases/get_users.dart';
import 'package:sokrio_users/src/features/users/presentation/bloc/user_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// Register ApiClient && ApiService
  sl.registerLazySingleton<ApiClient>(() => ApiClient());
  sl.registerLazySingleton<ApiService>(() => ApiService(sl<ApiClient>().dio));

  /// BLoC
  sl.registerFactory(() => UserBloc(getUsers: sl(), getCachedUsers: sl()));

  /// Use Cases
  sl.registerLazySingleton(() => GetUsers(sl()));
  sl.registerLazySingleton(() => GetCachedUsers(sl()));

  /// Repository
  sl.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(remoteDataSource: sl(), localDataSource: sl()),
  );

  /// Data Sources
  sl.registerLazySingleton<UserRemoteDataSource>(
    () => UserRemoteDataSourceImpl(),
  );

  sl.registerLazySingleton<UserLocalDataSource>(
    () => UserLocalDataSourceImpl(),
  );

  /// External
  sl.registerLazySingleton(() => GlobalKey<ScaffoldMessengerState>());
}
