import 'package:flutter/material.dart';
import 'package:sokrio_users/src/core/widgets/bottom_loader.dart';
import 'package:sokrio_users/src/features/users/domain/entities/user.dart';
import 'package:sokrio_users/src/features/users/presentation/widgets/user_item_widget.dart';

class UserListWidget extends StatelessWidget {
  final List<User> users;
  final ScrollController scrollController;
  final bool hasMore;

  const UserListWidget({
    super.key,
    required this.users,
    required this.scrollController,
    required this.hasMore,
  });

  @override
  Widget build(BuildContext context) {
    return StretchingOverscrollIndicator(
      axisDirection: AxisDirection.down,
      child: ListView.builder(
        controller: scrollController,
        itemCount: hasMore ? users.length + 1 : users.length,
        itemBuilder: (context, index) {
          if (index >= users.length) {
            return const BottomLoader();
          }

          final user = users[index];
          return UserItemWidget(user: user);
        },
      ),
    );
  }
}
