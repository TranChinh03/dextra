import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CommonBackToToButton extends StatelessWidget {
  final ScrollController scrollController;
  final String? text;
  final Color? textColor;
  final Color? borderColor;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final bool isEnable;
  final int? maxLines;
  final TextOverflow? overflow;
  final String? direction;

  const CommonBackToToButton({
    super.key,
    this.text,
    this.textColor,
    this.borderColor,
    this.backgroundColor,
    this.onPressed,
    this.margin,
    this.padding,
    this.isEnable = true,
    this.maxLines,
    this.overflow,
    this.direction,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    void scrollToTop() {
      // print("Scrolling to top");

      scrollController.animateTo(
        0.0,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }

    final colors = IAppColor.watch(context);

    final effectiveBorderColor =
        borderColor ?? colors.buttonSecondaryColorBorder;

    return IntrinsicWidth(
      child: InkWell(
        onTap: isEnable ? scrollToTop : null,
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
                horizontal: AppSpacing.rem125.w,
                vertical: AppSpacing.rem125.h,
              ),
          child: SvgPicture.asset(
            Assets.svg.whiteTopArrowIcon,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
