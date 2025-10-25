import 'package:flutter/material.dart';
import 'package:sokrio_users/src/core/di/injection_container.dart';

enum SnackBarType { success, error, warning, info }

class SnackBarService {
  static void show({
    required String message,
    SnackBarType type = SnackBarType.info,
    String? actionLabel,
    VoidCallback? onAction,
    int durationInSeconds = 2,
  }) {
    final color = switch (type) {
      SnackBarType.success => Colors.green,
      SnackBarType.error => Colors.red,
      SnackBarType.warning => Colors.orange,
      SnackBarType.info => Colors.blueGrey,
    };

    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: color,
      duration: Duration(seconds: durationInSeconds),
      behavior: SnackBarBehavior.floating,
      action: (actionLabel != null && onAction != null)
          ? SnackBarAction(
        label: actionLabel,
        textColor: Colors.white,
        onPressed: onAction,
      )
          : null,
    );

    sl.get<GlobalKey<ScaffoldMessengerState>>().currentState
      ?..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
