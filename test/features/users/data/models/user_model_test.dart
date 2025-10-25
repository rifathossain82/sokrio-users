import 'package:flutter_test/flutter_test.dart';
import 'package:sokrio_users/src/features/users/data/models/user_model.dart';

void main() {
  late UserModel testUser;

  setUp(() {
    testUser = UserModel(
      id: 1,
      email: 'john@example.com',
      firstName: 'John',
      lastName: 'Doe',
      avatar: 'https://example.com/avatar.jpg',
    );
  });

  group('UserModel', () {
    test('should be a subclass of User entity', () {
      expect(testUser, isA<UserModel>());
    });

    test('should return a valid model from JSON', () {
      final Map<String, dynamic> json = {
        'id': 1,
        'email': 'john@example.com',
        'first_name': 'John',
        'last_name': 'Doe',
        'avatar': 'https://example.com/avatar.jpg',
      };

      final result = UserModel.fromJson(json);

      expect(result, equals(testUser));
    });

    test('should return a JSON map containing proper data', () {
      final result = testUser.toJson();

      final expectedMap = {
        'id': 1,
        'email': 'john@example.com',
        'first_name': 'John',
        'last_name': 'Doe',
        'avatar': 'https://example.com/avatar.jpg',
      };

      expect(result, equals(expectedMap));
    });

    test('should return full name correctly', () {
      expect(testUser.fullName, equals('John Doe'));
    });
  });
}
