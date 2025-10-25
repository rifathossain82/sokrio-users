import 'package:flutter/material.dart';
import 'package:sokrio_users/src/core/core.dart';
import 'package:sokrio_users/src/features/users/domain/entities/user.dart';
import 'package:sokrio_users/src/features/users/presentation/widgets/details_info_list.dart';
import 'package:sokrio_users/src/features/users/presentation/widgets/details_user_header.dart';

class UserDetailsPage extends StatelessWidget {
  final User user;

  const UserDetailsPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
        elevation: 0,
        backgroundColor: context.colorScheme.primary,
        foregroundColor: context.colorScheme.onPrimary,
      ),
      body: SafeArea(
        child: StretchingOverscrollIndicator(
          axisDirection: AxisDirection.down,
          child: SingleChildScrollView(
            child: Column(
              children: [
                DetailsUserHeader(user: user),
                DetailsInfoList(user: user),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
