import 'package:dextra/presentation/router/router_config/router.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MenuItem extends StatefulWidget {
  final String prefixIcon;
  final String title;
  final bool isActive;
  final String? navigateRoute;
  final Function()? onTap;

  const MenuItem({
    super.key,
    required this.prefixIcon,
    required this.title,
    this.isActive = false,
    this.navigateRoute,
    this.onTap,
  });

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final appColor = IAppColor.watch(context);

    return GestureDetector(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
          return;
        }
        if (widget.navigateRoute != null && !widget.isActive) {
          DextraRouter.go(widget.navigateRoute!);
        }
      },
      child: MouseRegion(
        cursor: widget.isActive
            ? SystemMouseCursors.basic
            : SystemMouseCursors.click,
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: Container(
          margin: EdgeInsets.only(right: AppSpacing.rem300.w),
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.rem350.w, vertical: AppSpacing.rem175.h),
            decoration: BoxDecoration(
              color: widget.isActive
                  ? appColor.backgroundApp // Active background color
                  : _isHovered
                      ? appColor.backgroundApp
                          .withOpacity(0.1) // Hover background color
                      : Colors.transparent, // Default background color
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(AppBorderRadius.spacing3xl),
                bottomRight: Radius.circular(AppBorderRadius.spacing3xl),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  widget.prefixIcon,
                  fit: BoxFit.scaleDown,
                  colorFilter: ColorFilter.mode(
                    widget.isActive
                        ? appColor.menuActiveTextColor // Active icon color
                        : appColor.menuTextColor, // Default icon color,
                    BlendMode.srcIn,
                  ),
                  width: AppSpacing.rem300.w,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: AppFontSize.xxl,
                        fontWeight: AppFontWeight.semiBold,
                        color: widget.isActive
                            ? appColor.menuActiveTextColor // Active text color
                            : appColor.menuTextColor, // Default text color
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
