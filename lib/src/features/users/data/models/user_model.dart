import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sokrio_users/src/features/users/domain/entities/user.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
@JsonSerializable(createToJson: false)
class UserModel extends User {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String email;

  @HiveField(2)
  @JsonKey(name: 'first_name')
  final String firstName;

  @HiveField(3)
  @JsonKey(name: 'last_name')
  final String lastName;

  @HiveField(4)
  final String avatar;

  const UserModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  }) : super(
    id: id,
    email: email,
    firstName: firstName,
    lastName: lastName,
    avatar: avatar,
  );

  /// Factory for JSON serialization
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @override
  List<Object> get props => [id, email, firstName, lastName, avatar];

  User toEntity() => User(
    id: id,
    email: email,
    firstName: firstName,
    lastName: lastName,
    avatar: avatar,
  );
}
