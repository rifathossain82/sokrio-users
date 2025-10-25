import 'package:flutter/material.dart';
import 'package:sokrio_users/src/features/users/domain/entities/user.dart';
import 'package:sokrio_users/src/features/users/presentation/widgets/details_info_card.dart';

class DetailsInfoList extends StatelessWidget {
  final User user;

  const DetailsInfoList({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          DetailsInfoCard(
            icon: Icons.email,
            title: 'Email',
            value: user.email,
            color: Colors.blue,
          ),
          const SizedBox(height: 16),
          DetailsInfoCard(
            icon: Icons.person,
            title: 'First Name',
            value: user.firstName,
            color: Colors.green,
          ),
          const SizedBox(height: 16),
          DetailsInfoCard(
            icon: Icons.person_outline,
            title: 'Last Name',
            value: user.lastName,
            color: Colors.orange,
          ),
          const SizedBox(height: 16),
          DetailsInfoCard(
            icon: Icons.badge,
            title: 'User ID',
            value: '#${user.id}',
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
