import 'package:dextra/presentation/modules/commons/widgets/appBar/common_app_bar.dart';
import 'package:dextra/presentation/modules/commons/widgets/menu/menu.dart';
import 'package:dextra/shareds/utils/app_utils.dart';
import 'package:flutter/material.dart';

class UserMasterPage extends StatefulWidget {
  final Widget child;
  const UserMasterPage({
    super.key,
    required this.child,
  });

  @override
  State<UserMasterPage> createState() => _UserMasterPageState();
}

class _UserMasterPageState extends State<UserMasterPage> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = AppUtils.isDesktopScreen(context);

    return Scaffold(
        drawer: isDesktop ? null : Menu(),
        body: Row(
          children: [
            if (isDesktop == true) ...[Menu()],
            Expanded(
              child: Column(
                children: [
                  CommonAppBar(),
                  Expanded(
                    child: widget.child,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
