import 'package:flutter/material.dart';

@immutable
class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color shimmerBase;
  final Color shimmerHighlight;

  const ThemeColors({
    required this.shimmerBase,
    required this.shimmerHighlight,
  });

  @override
  ThemeColors copyWith({
    Color? shimmerBase,
    Color? shimmerHighlight,
  }) {
    return ThemeColors(
      shimmerBase: shimmerBase ?? this.shimmerBase,
      shimmerHighlight: shimmerHighlight ?? this.shimmerHighlight,
    );
  }

  @override
  ThemeColors lerp(ThemeExtension<ThemeColors>? other, double t) {
    if (other is! ThemeColors) return this;
    return ThemeColors(
      shimmerBase: Color.lerp(shimmerBase, other.shimmerBase, t)!,
      shimmerHighlight: Color.lerp(shimmerHighlight, other.shimmerHighlight, t)!,
    );
  }
}
