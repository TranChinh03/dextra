import 'package:dextra/presentation/modules/commons/user/widgets/home_widget.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserMasterPage extends StatefulWidget {
  const UserMasterPage({super.key});

  @override
  State<UserMasterPage> createState() => _UserMasterPageState();
}

class _UserMasterPageState extends State<UserMasterPage> {
  @override
  Widget build(BuildContext context) {
    final appColor = IAppColor.watch(context);

    return Scaffold(
        body: Row(
      children: [
        Container(
          width: AppSpacing.rem3375.w,
          height: double.infinity,
          decoration: BoxDecoration(
            color: appColor.cardBackground,
          ),
          child: Text("Menu"),
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: AppSpacing.rem1400.h,
                color: appColor.buttonPrimaryBackground,
                child: Text("App bar"),
              ),
              Expanded(
                child: HomeWidget(),
              )
            ],
          ),
        )
      ],
    ));
  }
}
