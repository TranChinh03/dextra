import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CameraListItem extends StatelessWidget {
  final VoidCallback onTap;
  final String? cammeName;
  final String? dist;
  final String? imgUrl;
  const CameraListItem(
      {super.key,
      required this.onTap,
      required this.cammeName,
      required this.imgUrl,
      this.dist});

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return ListTile(
      // leading: const Icon(Icons.camera_alt),
      leading: CommonImage(
        width: AppSpacing.rem1000.w,
        imageUrl: imgUrl ?? Assets.png.placeHolder.path,
        fit: BoxFit.cover,
      ),
      title: CommonText(
        cammeName ?? tr('Common.cam_default_label'),
        style: TextStyle(
          color: colors.textPrimary,
          fontWeight: AppFontWeight.semiBold,
          fontSize: AppFontSize.xxl,
        ),
      ),
      subtitle: CommonText(
        dist,
        style: TextStyle(
          color: colors.textMuted,
          fontWeight: AppFontWeight.regular,
          fontSize: AppFontSize.xl,
        ),
      ),
      trailing: SvgPicture.asset(
        Assets.svg.forwardArrow,
        fit: BoxFit.scaleDown,
      ),
      onTap: onTap,
    );
  }
}
