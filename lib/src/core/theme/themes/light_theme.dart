import 'package:flutter/material.dart';
import 'package:sokrio_users/src/core/theme/colors/theme_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme {
  const LightTheme._();

  static final seedColor = const Color(0xFF1565C0);

  static final colorScheme = ColorScheme.fromSeed(
    seedColor: seedColor,
    brightness: Brightness.light,
  );

  static final themeData = ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    scaffoldBackgroundColor: colorScheme.surface,
    appBarTheme: AppBarTheme(
      backgroundColor: colorScheme.surface,
      foregroundColor: colorScheme.onSurface,
      elevation: 0,
    ),
    cardColor: colorScheme.surface,
    dialogTheme: DialogThemeData(
      backgroundColor: colorScheme.surface,
    ),
    textTheme: GoogleFonts.robotoTextTheme(
      ThemeData.light().textTheme.apply(
        bodyColor: colorScheme.onSurface,
        displayColor: colorScheme.onSurface,
      ),
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: colorScheme.primary,
      unselectedLabelColor: colorScheme.onSurface.withValues(alpha: 0.6),
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: colorScheme.primary, width: 2),
      ),
    ),
    iconTheme: IconThemeData(color: colorScheme.onSurface),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: colorScheme.primary,
      unselectedItemColor: colorScheme.onSurface.withValues(alpha: 0.6),
      backgroundColor: colorScheme.surface,
    ),
    extensions: const [
      ThemeColors(
        shimmerBase: Color(0xFFE0E0E0),
        shimmerHighlight: Color(0xFFF5F5F5),
      ),
    ],
  );
}



// final lightColorScheme = const ColorScheme(
//   brightness: Brightness.light,
//   primary: Color(0xFF1565C0),       // Main brand color (e.g. buttons, active icons)
//   onPrimary: Color(0xFFFFFFFF),     // Text/icon color on primary backgrounds
//
//   secondary: Color(0xFF03A9F4),     // Accent color for secondary elements
//   onSecondary: Color(0xFFFFFFFF),   // Text/icon color on secondary backgrounds
//
//   background: Color(0xFFF5F5F5),    // Scaffold or general background
//   onBackground: Color(0xFF212121),  // Text/icon on background
//
//   surface: Color(0xFFFFFFFF),       // Cards, sheets, dialogs
//   onSurface: Color(0xFF212121),     // Text/icon on surfaces
//
//   error: Color(0xFFD32F2F),         // For validation or critical alerts
//   onError: Color(0xFFFFFFFF),       // Text/icon on error backgrounds
//
//   primaryContainer: Color(0xFF90CAF9), // Used for filled containers or elevated elements
//   onPrimaryContainer: Color(0xFF0D47A1), // Text/icon inside primary container
//
//   secondaryContainer: Color(0xFFB3E5FC),
//   onSecondaryContainer: Color(0xFF01579B),
//
//   surfaceVariant: Color(0xFFE0E0E0),  // For variant UI like elevated cards
//   onSurfaceVariant: Color(0xFF424242),// For text/icons on surfaceVariant
//
//   outline: Color(0xFFBDBDBD),       // Border colors
//   inverseSurface: Color(0xFF212121),// Used in dark overlays or bottom sheets
//   onInverseSurface: Color(0xFFFFFFFF),
//
//   shadow: Color(0x33000000),        // Default shadow color (20% black)
//   scrim: Color(0x66000000),         // For modal/dimming overlays
// );

