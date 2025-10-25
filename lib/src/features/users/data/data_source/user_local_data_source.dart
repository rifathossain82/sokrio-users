import 'package:sokrio_users/src/features/users/data/models/user_model.dart';

abstract class UserLocalDataSource {
  Future<List<UserModel>> getCachedUsers();
  Future<void> cacheUsers(List<UserModel> users);
}
