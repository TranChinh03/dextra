import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
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
import 'package:flutter_svg/svg.dart';

class CameraImgItem extends StatefulWidget {
  final String? name;
  final String? time;
  final String? img;
  final bool isSaved;
  final VoidCallback? onPressed;
  final int? maxLines;
  final TextOverflow? overflow;

  const CameraImgItem({
    super.key,
    this.name,
    this.time,
    this.img,
    this.onPressed,
    this.maxLines,
    this.overflow,
    required this.isSaved,
  });

  @override
  State<CameraImgItem> createState() => _CameraImgItemState();
}

class _CameraImgItemState extends State<CameraImgItem> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.isSaved; // <-- local state from parent
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);
    return SizedBox(
      width: AppSpacing.rem4150.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppBorderRadius.spacing3xl),
            child: Stack(
              children: [
                CommonImage(
                  imagePath: widget.img ?? Assets.png.placeHolder.path,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: AppSpacing.rem300.h,
                  right: AppSpacing.rem300.h,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    child: SvgPicture.asset(
                      isFavorite
                          ? Assets.svg.bookmarkFilledIcon
                          : Assets.svg.bookmarkOutlineIcon,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: AppSpacing.rem250.h,
          ),
          CommonText(
            widget.name ?? tr('Common.cam_default_label'),
            style: TextStyle(
              color: colors.textPrimaryColor,
              fontWeight: AppFontWeight.semiBold,
              fontSize: AppFontSize.xxl,
            ),
            maxLines: widget.maxLines,
            overFlow: widget.overflow,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                widget.time ?? 'Time',
                style: TextStyle(
                  color: colors.textSecondaryColor,
                  fontWeight: AppFontWeight.regular,
                  fontSize: AppFontSize.md,
                ),
              ),
              CommonPrimaryButton(
                text: tr('Common.view'),
                onPressed: widget.onPressed,
              )
            ],
          )
        ],
      ),
    );
  }
}
