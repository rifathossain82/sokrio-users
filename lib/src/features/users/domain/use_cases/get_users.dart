import 'package:dartz/dartz.dart';
import 'package:sokrio_users/src/core/errors/errors.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class GetUsers {
  final UserRepository repository;

  GetUsers(this.repository);

  Future<Either<Failure, List<User>>> call(int page) async {
    return await repository.getUsers(page);
  }
}
