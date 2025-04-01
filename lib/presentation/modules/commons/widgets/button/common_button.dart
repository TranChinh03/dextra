import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/border/app_border_wh.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final bool isEnable;
  final int? maxLines;
  final TextOverflow? overflow;

  const CommonButton({
    super.key,
    this.text,
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

    final buttonColor =
        isEnable ? colors.buttonPrimaryBackground : colors.backgroundDisable;

    final borderColor =
        isEnable ? colors.borderSubtle : colors.borderDisabledSubtle;

    final borderWidth = isEnable ? AppBorderWH.s : AppBorderWH.xs;

    return Container(
      margin: margin,
      child: InkWell(
        onTap: isEnable ? onPressed : null,
        borderRadius: BorderRadius.circular(AppBorderRadius.l),
        child: Container(
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(AppBorderRadius.l),
            border: Border.all(
              width: borderWidth,
              color: borderColor,
            ),
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
                color: isEnable
                    ? colors.buttonPrimaryForeground
                    : colors.foregroundDisabled,
                fontWeight: AppFontWeight.semiBold,
                fontSize: AppFontSize.md,
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
