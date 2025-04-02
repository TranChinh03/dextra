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

class CameraImgItem extends StatelessWidget {
  final String? name;
  final String? time;
  final String? img;
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
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSpacing.rem4150.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppBorderRadius.spacing3xl),
            child: CommonImage(
              imagePath: img ?? Assets.png.placeHolder.path,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: AppSpacing.rem250,
          ),
          CommonText(
            name ?? 'Camera 01',
            style: TextStyle(
              color: DarkGreyColors().grey950,
              fontWeight: AppFontWeight.semiBold,
              fontSize: AppFontSize.xxl,
            ),
            maxLines: maxLines,
            overFlow: overflow,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                time ?? 'Time',
                style: TextStyle(
                  color: DarkGreyColors().grey500,
                  fontWeight: AppFontWeight.regular,
                  fontSize: AppFontSize.md,
                ),
              ),
              CommonPrimaryButton(
                text: tr('Common.view'),
                onPressed: onPressed,
              )
            ],
          )
        ],
      ),
    );
  }
}
