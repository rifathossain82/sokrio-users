import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';

class NetworkRetryInterceptor extends RetryInterceptor {
  NetworkRetryInterceptor({required super.dio})
    : super(
        logPrint: print,
        retries: 3,
        retryDelays: const [
          Duration(seconds: 1),
          Duration(seconds: 2),
          Duration(seconds: 3),
        ],
        retryEvaluator: (error, attempt) {
          return error.type != DioExceptionType.cancel &&
              error.type != DioExceptionType.badResponse;
        },
      );
}
