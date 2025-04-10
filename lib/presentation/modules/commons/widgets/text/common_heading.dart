import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonHeading extends StatelessWidget {
  final String? heading;
  final String? subheading;
  final TextStyle? headingStyle;
  final TextStyle? subheadingStyle;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final int? maxLines;
  final TextOverflow? overflow;

  const CommonHeading({
    super.key,
    this.heading,
    this.subheading,
    this.headingStyle,
    this.subheadingStyle,
    this.margin,
    this.padding,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return Container(
      margin: margin,
      padding: padding ?? EdgeInsets.all(AppSpacing.rem600.w),
      child: Column(
        children: [
          CommonText(
            heading ?? '',
            style: headingStyle ??
                TextStyle(
                    fontWeight: AppFontWeight.bold,
                    fontSize: AppFontSize.lg,
                    color: colors.textPrimaryColor),
          ),
          CommonText(
            align: TextAlign.center,
            subheading ?? '',
            style: subheadingStyle ??
                TextStyle(
                    fontWeight: AppFontWeight.regular,
                    fontSize: AppFontSize.xxl,
                    color: colors.textSecondaryColor),
          )
        ],
      ),
    );
  }
}
