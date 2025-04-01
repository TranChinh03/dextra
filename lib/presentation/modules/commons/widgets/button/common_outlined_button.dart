import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonOutlinedButton extends StatelessWidget {
  final String? text;
  final Color? textColor;
  final Color? borderColor;
  final VoidCallback? onPressed;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final bool isEnable;
  final int? maxLines;
  final TextOverflow? overflow;

  const CommonOutlinedButton({
    super.key,
    this.text,
    this.textColor,
    this.borderColor,
    this.onPressed,
    this.margin,
    this.padding,
    this.isEnable = true,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    final effectiveBorderColor =
        borderColor ?? colors.buttonSecondaryColorBorder;
    final effectiveTextColor =
        textColor ?? colors.buttonSecondaryColorForeground;

    return Container(
      margin: margin,
      child: InkWell(
        onTap: isEnable ? onPressed : null,
        borderRadius: BorderRadius.circular(AppBorderRadius.l),
        child: Container(
          decoration: BoxDecoration(
            color: colors.buttonSecondaryColorBackground,
            borderRadius: BorderRadius.circular(AppBorderRadius.l),
            border: Border.all(color: effectiveBorderColor),
            boxShadow: [
              BoxShadow(
                color: colors.shadowXs.withValues(alpha: 0.05),
                offset: Offset(0, 1),
                blurRadius: 2,
              ),
              if (isEnable) ...[
                BoxShadow(
                  color: colors.shadowXs.withValues(alpha: 0.05),
                  offset: Offset(0, -2),
                ),
                BoxShadow(
                  color: colors.shadowXs.withValues(alpha: 0.18),
                  spreadRadius: 1,
                ),
              ],
            ],
          ),
          padding: padding ??
              EdgeInsets.symmetric(
                horizontal: AppSpacing.rem450.w,
                vertical: AppSpacing.rem150.h,
              ),
          child: Center(
            child: CommonText(
              text ?? '',
              style: TextStyle(
                fontSize: AppFontSize.md,
                color: effectiveTextColor,
                fontWeight: AppFontWeight.semiBold,
              ),
              maxLines: maxLines,
              overFlow: overflow,
            ),
          ),
        ),
      ),
    );
  }
}
