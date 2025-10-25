import 'package:flutter/material.dart';
import 'package:sokrio_users/src/features/users/domain/entities/user.dart';

class UserDetailsPage extends StatelessWidget {
  final User user;

  const UserDetailsPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.fullName),
      ),
    );
  }
}
