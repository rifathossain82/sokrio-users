import 'package:dartz/dartz.dart';
import 'package:sokrio_users/src/core/errors/errors.dart';
import '../entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, List<User>>> getUsers(int page);
  Future<Either<Failure, List<User>>> getCachedUsers();
}
