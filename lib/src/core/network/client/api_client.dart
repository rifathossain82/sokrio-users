import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:sokrio_users/src/core/network/network.dart';

class ApiClient {
  static final ApiClient _instance = ApiClient._internal();

  factory ApiClient() => _instance;

  late final Dio dio;

  ApiClient._internal() {
    final baseOptions = BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 15),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'x-api-key' : 'reqres-free-v1',
      },
    );

    /// Set sendTimeout when platform is not web
    if (!kIsWeb) {
      baseOptions.sendTimeout = const Duration(seconds: 10);
    }

    dio = Dio(baseOptions);

    _setupInterceptors();
  }

  void _setupInterceptors() {
    dio.interceptors.addAll([
      NetworkRetryInterceptor(dio: dio),
      NetworkLoggerInterceptor(),
      ErrorInterceptor(),
      // TokenInterceptor(tokenManager: TokenManager()),
    ]);
  }
}
