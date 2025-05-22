import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ViewButton extends StatelessWidget {
  final Color? borderColor;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final bool isEnable;
  const ViewButton({
    super.key,
    this.borderColor,
    this.backgroundColor,
    this.onPressed,
    this.margin,
    this.padding,
    this.isEnable = true,
  });

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    final effectiveBorderColor =
        borderColor ?? colors.buttonSecondaryColorBorder;

    return IntrinsicWidth(
      child: InkWell(
        onTap: isEnable ? onPressed : null,
        borderRadius: BorderRadius.circular(AppBorderRadius.l),
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor ?? colors.primary,
            shape: BoxShape.circle,
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
                horizontal: AppSpacing.rem100.w,
                vertical: AppSpacing.rem100.h,
              ),
          child: Center(
            child: SvgPicture.asset(
              Assets.svg.eyeIcon,
              fit: BoxFit.scaleDown,
              width: AppSpacing.rem175.w,
            ),
          ),
        ),
      ),
    );
  }
}
