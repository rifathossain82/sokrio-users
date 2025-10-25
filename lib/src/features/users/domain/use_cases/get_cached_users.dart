import 'package:dartz/dartz.dart';
import 'package:sokrio_users/src/core/errors/errors.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class GetCachedUsers {
  final UserRepository repository;

  GetCachedUsers(this.repository);

  Future<Either<Failure, List<User>>> call() async {
    return await repository.getCachedUsers();
  }
}
