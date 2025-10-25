import 'package:hive/hive.dart';
import 'package:sokrio_users/src/features/users/domain/entities/user.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel extends User {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String email;

  @HiveField(2)
  final String firstName;

  @HiveField(3)
  final String lastName;

  @HiveField(4)
  final String avatar;

  UserModel({
    this.id = 0,
    this.email = '',
    this.firstName = '',
    this.lastName = '',
    this.avatar = '',
  }) : super(
    id: id,
    email: email,
    firstName: firstName,
    lastName: lastName,
    avatar: avatar,
  );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json['id'] as int,
    email: json['email'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    avatar: json['avatar'] as String,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'first_name': firstName,
    'last_name': lastName,
    'avatar': avatar,
  };
}

