import 'package:flutter/material.dart';
import 'package:sokrio_users/src/core/core.dart';

class OfflineModeBanner extends StatelessWidget {
  const OfflineModeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      color: AppColors.error.withValues(alpha: 0.10),
      child: Text(
        'Offline mode — showing cached data',
        textAlign: TextAlign.center,
        style: context.textTheme.titleSmall?.copyWith(color: AppColors.error),
      ),
    );
  }
}
