import 'package:dextra/theme/color/app_color.dart';
import 'package:flutter/material.dart';

class ScreenContainer extends StatelessWidget {
  final Widget child;
  final bool isShowLoading;
  final PreferredSizeWidget? appBar;

  const ScreenContainer({
    super.key,
    required this.child,
    this.isShowLoading = false,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    final appColor = IAppColor.watch(context);
    return Stack(children: [
      Scaffold(
        appBar: appBar,
        backgroundColor: appColor.backgroundApp,
        body: child,
      ),
      if (isShowLoading)
        AbsorbPointer(
          absorbing: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.transparent,
            alignment: Alignment.center,
            child: CircularProgressIndicator(),
          ),
        ),
    ]);
  }
}
