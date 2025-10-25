import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A utility class to manage system UI overlays like the status bar and navigation bar.
class SystemUiController {
  const SystemUiController._();

  /// Enable Android 15 compatible edge-to-edge mode
  static void enableEdgeToEdge() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    /// Transparent overlays → Let Flutter draw under them
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
  }


  /// Hides only the status bar. Keeps the navigation bar visible.
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom],
    );
  }

  /// Hides only the navigation bar. Keeps the status bar visible.
  static void hideNavigationBar() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.top],
    );
  }

  /// Hides both the status bar and navigation bar.
  static void hideStatusAndNavigationBar() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [],
    );
  }

  /// Restores both the status bar and navigation bar.
  static void resetSystemUI() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  /// Sets the status bar icon and background brightness (light/dark).
  ///
  /// Use [brightness] as Brightness.dark for light backgrounds (dark icons),
  /// and Brightness.light for dark backgrounds (light icons).
  static void setStatusBarIconBrightness(Brightness brightness) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: brightness, // Android
        statusBarBrightness: brightness,     // iOS
      ),
    );
  }
}
