import 'package:flutter/material.dart';
import 'package:sokrio_users/src/core/core.dart';
import 'package:lottie/lottie.dart';

class FailureWidgetBuilder extends StatelessWidget {
  final String? lottiePath;
  final String? title;
  final double? height;
  final double? width;
  final VoidCallback? onRetry;

  const FailureWidgetBuilder({
    super.key,
    this.lottiePath,
    this.title,
    this.height,
    this.width,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Lottie.asset(
                  lottiePath ?? AssetPath.noDataLottie,
                  height: context.screenHeight * 0.27,
                  width: context.screenWidth,
                  alignment: Alignment.center,
                ),
                Text(
                  title ?? 'Sorry! No data available.',
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodySmall,
                ),
                if (onRetry != null) ...[
                  const SizedBox(height: 24),
                  _RetryButton(onRetry: onRetry!),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RetryButton extends StatelessWidget {
  final VoidCallback onRetry;

  const _RetryButton({required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onRetry,
      icon: const Icon(Icons.refresh),
      label: const Text('Retry'),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
