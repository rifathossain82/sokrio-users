import 'package:flutter/material.dart';
import 'package:sokrio_users/src/core/core.dart';

class KCustomLoader extends StatefulWidget {
  final String? titleText;
  final double height;
  final double width;

  const KCustomLoader({
    super.key,
    this.titleText,
    this.height = 250.0,
    this.width = 250.0,
  });

  @override
  State<KCustomLoader> createState() => _KCustomLoaderState();
}

class _KCustomLoaderState extends State<KCustomLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _colorAnimation = ColorTween(
      begin: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
      end: Theme.of(context).colorScheme.primary,
    ).animate(_controller);
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 70,
                  width: 70,
                  child: CircularProgressIndicator(
                    strokeWidth: 4.0,
                    valueColor: _colorAnimation,
                  ),
                ),
                Positioned(
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Colors.transparent,
                    child: Image.asset(AssetPath.appLogo),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Text(
              widget.titleText ?? 'Please wait...',
              style: context.textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
