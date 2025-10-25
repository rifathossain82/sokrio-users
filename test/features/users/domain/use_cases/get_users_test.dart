import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sokrio_users/src/features/users/domain/entities/user.dart';
import 'package:sokrio_users/src/features/users/domain/use_cases/get_users.dart';

import '../../../../mocks/use_cases/get_users_mock.mocks.dart';

void main() {
  late GetUsers useCase;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    useCase = GetUsers(mockUserRepository);
  });

  const testPage = 1;
  final testUserList = [
    User(
      id: 1,
      email: 'test@example.com',
      firstName: 'John',
      lastName: 'Doe',
      avatar: 'https://example.com/avatar.jpg',
    ),
  ];

  test('should get users from the repository', () async {
    when(
      mockUserRepository.getUsers(any),
    ).thenAnswer((_) async => Right(testUserList));

    final result = await useCase(testPage);

    /// Verify the result and interact with the repository
    expect(result, Right(testUserList));
    verify(mockUserRepository.getUsers(testPage));
    verifyNoMoreInteractions(mockUserRepository);
  });
}
