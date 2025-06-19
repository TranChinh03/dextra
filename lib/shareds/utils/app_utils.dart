import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'dart:html' as html;

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

  static bool isDesktopScreen(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 1440) {
      return true;
    }
    return false;
  }

  static Future<void> downloadWidgetAsImage({
    required ScreenshotController controller,
    String filename = 'chart.png',
  }) async {
    try {
      final imageBytes = await controller.capture();

      if (imageBytes != null) {
        final blob = html.Blob([imageBytes]);
        final url = html.Url.createObjectUrlFromBlob(blob);

        final anchor = html.AnchorElement(href: url)
          ..setAttribute('download', filename)
          ..click();

        html.Url.revokeObjectUrl(url);
      } else {
        // print('Screenshot capture returned null.');
      }
    } catch (e) {
      // print('Error downloading widget as image: $e');
    }
  }
}
