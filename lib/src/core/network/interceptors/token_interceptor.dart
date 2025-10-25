import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  // final TokenManager tokenManager;
  //
  // TokenInterceptor(this.tokenManager);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // final token = await tokenManager.getToken(); // async or sync depends on your implementation
    //
    // if (token != null && token.isNotEmpty) {
    //   options.headers['Authorization'] = 'Bearer $token';
    // }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      // Handle token expiration or refresh here if needed
      // For example:
      // tokenManager.clearToken();
      // Trigger logout or refresh token logic
    }
    handler.next(err);
  }
}
