import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabButton extends StatelessWidget {
  final String? label;
  final bool isActive;
  final VoidCallback? onPressed;
  const TabButton(
      {super.key, this.label, this.onPressed, required this.isActive});

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppSpacing.rem175.h, horizontal: AppSpacing.rem500.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppBorderRadius.spacing4xl),
          color: isActive ? colors.primaryBannerBg : Colors.transparent),
      child: InkWell(
        onTap: onPressed,
        child: CommonText(
          label,
          style: TextStyle(
              fontWeight: AppFontWeight.bold,
              color: colors.buttonSecondaryColorForeground),
        ),
      ),
    );
  }
}
