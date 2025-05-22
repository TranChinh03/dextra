import 'dart:async';
import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/view_button.dart';
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

class CameraListItem extends StatefulWidget {
  final VoidCallback onTap;
  final VoidCallback onPressed;
  final String? cammeName;
  final String? dist;
  final String? imgUrl;
  final String? cameraId;
  const CameraListItem({
    super.key,
    required this.onTap,
    required this.cammeName,
    required this.imgUrl,
    this.dist,
    this.cameraId,
    required this.onPressed,
  });

  @override
  State<CameraListItem> createState() => _CameraListItemState();
}

class _CameraListItemState extends State<CameraListItem> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    print("CameraListItem initState");
    _timer = Timer.periodic(const Duration(seconds: 12), (timer) {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    final imgLiveviewUrl =
        "http://localhost:8002/cameras/image/" + (widget.cameraId ?? "");

    return ListTile(
      leading: CommonImage(
        width: AppSpacing.rem1000.w,
        imageUrl: imgLiveviewUrl ?? Assets.png.placeHolder.path,
        fit: BoxFit.cover,
      ),
      title: CommonText(
        widget.cammeName ?? tr('Common.cam_default_label'),
        style: TextStyle(
          color: colors.textPrimary,
          fontWeight: AppFontWeight.semiBold,
          fontSize: AppFontSize.xxl,
        ),
      ),
      subtitle: CommonText(
        widget.dist,
        style: TextStyle(
          color: colors.textMuted,
          fontWeight: AppFontWeight.regular,
          fontSize: AppFontSize.xl,
        ),
      ),
      trailing: ViewButton(
        onPressed: widget.onPressed,
      ),
      onTap: widget.onTap,
    );
  }
}
