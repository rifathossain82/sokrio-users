import 'package:hive/hive.dart';
import 'package:sokrio_users/src/core/core.dart';
import 'package:sokrio_users/src/features/users/data/models/user_model.dart';
import 'user_local_data_source.dart';

class UserLocalDataSourceImpl implements UserLocalDataSource {
  static const String userBoxName = AppConstants.packageName;

  @override
  Future<List<UserModel>> getCachedUsers() async {
    try {
      final box = await Hive.openBox<UserModel>(userBoxName);
      return box.values.toList();
    } catch (e) {
      throw CacheException('Failed to load cached users: $e');
    }
  }

  @override
  Future<void> cacheUsers(List<UserModel> users) async {
    try {
      final box = await Hive.openBox<UserModel>(userBoxName);
      await box.clear();
      for (var i = 0; i < users.length; i++) {
        await box.put(i, users[i]);
      }
    } catch (e) {
      throw CacheException('Failed to cache users: $e');
    }
  }
}
