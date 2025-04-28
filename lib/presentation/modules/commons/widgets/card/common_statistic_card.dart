import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/common_card_clipper.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/border/app_border_wh.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/color/colors_template.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonStatisticCard extends StatelessWidget {
  final String? label;
  final String? value;
  final String? info;
  final Color? background;
  final Color? decoration;
  final Color? textColor;
  final VoidCallback? onPressed;
  final int? maxLines;
  final TextOverflow? overflow;

  const CommonStatisticCard({
    super.key,
    this.label,
    this.value,
    this.info,
    this.textColor,
    this.background,
    this.decoration,
    this.onPressed,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);
    return Container(
      width: AppSpacing.rem6250.w,
      height: AppSpacing.rem4150.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppBorderRadius.spacing3xl),
          color: background ?? colors.cardBackground),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: ClipPath(
              clipper: BottomWaveClipper(),
              child: Container(
                height: AppSpacing.rem4150.h,
                width: AppSpacing.rem6250.w,
                color: decoration ?? colors.cardDecorate,
              ),
            ),
          ),
          SizedBox(
            width: AppSpacing.rem6250.w * 0.75,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.rem450.w,
                vertical: AppSpacing.rem450.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText(
                    label ?? '',
                    style: TextStyle(
                        fontSize: AppFontSize.xxl,
                        color: textColor ?? colors.textPrimary),
                  ),
                  SizedBox(height: AppSpacing.rem175),
                  CommonText(
                    value ?? '',
                    style: TextStyle(
                        fontSize: AppFontSize.lg,
                        fontWeight: AppFontWeight.bold,
                        color: textColor ?? colors.textPrimary),
                  ),
                  SizedBox(height: AppSpacing.rem175),
                  CommonText(
                    maxLines: 2,
                    overFlow: TextOverflow.ellipsis,
                    info ?? '',
                    style: TextStyle(
                        fontSize: AppFontSize.xxl,
                        color: textColor ?? colors.textPrimary),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
