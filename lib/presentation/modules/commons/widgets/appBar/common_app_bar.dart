import 'package:dextra/domain/enum/screen_path.dart';
import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/router/router_config/router.dart';
import 'package:dextra/shareds/utils/app_utils.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonAppBar extends StatefulWidget {
  const CommonAppBar({super.key});

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();
}

class _CommonAppBarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    final appColor = IAppColor.watch(context);
    final isDesktop = AppUtils.isDesktopScreen(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.rem600.w,
        vertical: AppSpacing.rem425.h,
      ),
      child: Row(
        children: [
          if (!isDesktop) ...[
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            )
          ],
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: tr('Common.welcome'),
                    style: TextStyle(
                      fontSize: AppFontSize.lg,
                      color: appColor.textPrimaryColor,
                    ),
                    children: [
                      TextSpan(text: ", "),
                      TextSpan(
                          text: "UserName",
                          style: TextStyle(
                            fontSize: AppFontSize.lg,
                            color: appColor.appBarTextHighlight,
                          ))
                    ],
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () => {DextraRouter.go(ScreenPath.profile.value)},
                      child: CommonImage(
                        imagePath: Assets.png.avatar.path,
                        width: AppSpacing.rem700.w,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
