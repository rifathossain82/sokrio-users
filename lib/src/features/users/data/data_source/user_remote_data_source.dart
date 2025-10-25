import 'package:sokrio_users/src/features/users/data/models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<List<UserModel>> getUsers(int page);
}