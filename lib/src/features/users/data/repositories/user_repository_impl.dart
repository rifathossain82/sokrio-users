import 'package:dartz/dartz.dart';
import 'package:sokrio_users/src/features/users/data/data_source/user_local_data_source.dart';
import 'package:sokrio_users/src/features/users/data/data_source/user_remote_data_source.dart';
import 'package:sokrio_users/src/features/users/domain/entities/user.dart';
import 'package:sokrio_users/src/features/users/domain/repositories/user_repository.dart';
import 'package:sokrio_users/src/core/core.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;
  final UserLocalDataSource localDataSource;

  UserRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<User>>> getUsers(int page) async {
    return ApiHelper.safeApiCall(() async {
      final response = await remoteDataSource.getUsers(page);
      if (page == 1) {
        await localDataSource.cacheUsers(response);
      }
      return response;
    });
  }

  @override
  Future<Either<Failure, List<User>>> getCachedUsers() async {
    try {
      final users = await localDataSource.getCachedUsers();
      return Right(users);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }
}
