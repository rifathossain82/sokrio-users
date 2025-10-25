import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sokrio_users/src/core/core.dart';
import 'package:sokrio_users/src/features/users/domain/entities/user.dart';

class UserItemWidget extends StatelessWidget {
  final User user;

  const UserItemWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: ValueKey(user.id),
      leading: ExtendedImageBuilder(
        height: 50,
        width: 50,
        imgURL: user.avatar,
        borderRadius: BorderRadius.circular(100),
        fit: BoxFit.cover,
      ),
      title: Text(user.fullName),
      subtitle: Text(user.email),
      onTap: () {
        context.pushNamed(
          AppRoutes.userDetails,
          pathParameters: {'id': user.id.toString()},
          extra: user,
        );
      },
    );
  }
}
