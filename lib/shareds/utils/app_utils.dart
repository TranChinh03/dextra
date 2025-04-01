import 'package:flutter/material.dart';

class AppUtils {
  static void showDialog(Widget widget, BuildContext context,
      {VoidCallback? onDismissed}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (context) {
          return widget;
        },
      ),
    ).then((value) {
      if (onDismissed != null) {
        onDismissed();
      }
    });
  }

  static void closeDialog(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }
}
