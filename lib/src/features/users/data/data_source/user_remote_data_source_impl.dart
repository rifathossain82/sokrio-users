import 'package:sokrio_users/src/core/core.dart';
import 'package:sokrio_users/src/core/network/constants/api_endpoints.dart';
import 'package:sokrio_users/src/features/users/data/models/user_model.dart';

import 'user_remote_data_source.dart';

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  @override
  Future<List<UserModel>> getUsers(int page) async {
    try {
      var response = await sl<ApiService>().get(
        ApiEndpoints.users,
        queryParameters: {
          'page': page,
          'per_page': ApiConstants.perPage,
        },
      );

      final data = response.data['data'] as List;
      return data.map((json) => UserModel.fromJson(json)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
