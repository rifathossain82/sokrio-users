import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sokrio_users/src/core/core.dart';

class ApiHelper {
  static Future<Either<Failure, T>> safeApiCall<T>(
    Future<T> Function() request,
  ) async {
    if (!await ConnectivityService.hasInternet) {
      return left(NetworkFailure('No internet connection'));
    }

    try {
      final result = await request();
      return right(result);
    } on DioException catch (dioEx) {
      final customError = dioEx.error;
      if (customError is AppException) {
        return left(customError.toFailure);
      } else {
        return left(UnknownFailure(dioEx.message ?? 'Unknown Dio error'));
      }
    } catch (e) {
      return left(UnknownFailure(e.toString()));
    }
  }
}
