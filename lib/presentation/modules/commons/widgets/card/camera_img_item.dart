import 'dart:async';

import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/service/firebase_db_service.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
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
  final String? cameraId;

  const CameraImgItem({
    super.key,
    this.name,
    this.time,
    this.img,
    this.onPressed,
    this.maxLines,
    this.overflow,
    required this.isSaved,
    this.cameraId,
  });

  @override
  State<CameraImgItem> createState() => _CameraImgItemState();
}

class _CameraImgItemState extends State<CameraImgItem> {
  late bool isFavorite;

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.isSaved;
    // print("CameraListItem initState");
    _timer = Timer.periodic(const Duration(seconds: 12), (timer) {
      if (mounted) setState(() {});
    });
  }

  _addCamera() async {
    final user = FirebaseAuth.instance.currentUser;
    var cameraIds = [];
    if (user != null) {
      DataSnapshot? userDataSnapshot = await FirebaseDbService()
          .read(path: 'users/${user.uid}/savedCameras');
      userDataSnapshot != null
          ? cameraIds = userDataSnapshot.value as List
          : null;
      if (!cameraIds.contains(widget.cameraId)) {
        await FirebaseDbService().update(path: 'users/${user.uid}', data: {
          "savedCameras": [...cameraIds, widget.cameraId]
        });
      }
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              duration: Duration(seconds: 1),
              content: CommonText(
                "Camera added to your favorites",
                style: TextStyle(color: Colors.cyan),
              )),
        );
      }
    }
  }

  _removeCam() async {
    final user = FirebaseAuth.instance.currentUser;
    var cameraIds = [];
    if (user != null) {
      DataSnapshot? userDataSnapshot = await FirebaseDbService()
          .read(path: 'users/${user.uid}/savedCameras');
      userDataSnapshot != null
          ? cameraIds = userDataSnapshot.value as List
          : null;
      cameraIds.remove(widget.cameraId);
      await FirebaseDbService()
          .update(path: 'users/${user.uid}', data: {"savedCameras": cameraIds});
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              duration: Duration(seconds: 1),
              content: CommonText(
                "Camera removed from your favorites.",
                style: TextStyle(color: Colors.cyan),
              )),
        );
      }
    }
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
        "http://localhost:8002/cameras/image/${widget.cameraId ?? ""}";
    return Container(
      decoration: BoxDecoration(
        color: colors.cardCameraBackground,
        borderRadius: BorderRadius.circular(AppBorderRadius.spacing3xl),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.rem200.w,
        vertical: AppSpacing.rem200.h,
      ),
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
                  imageUrl: imgLiveviewUrl,
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
                      isFavorite ? _addCamera() : _removeCam();
                    },
                    child: Container(
                      padding: EdgeInsetsDirectional.all(AppSpacing.rem100.w),
                      decoration: BoxDecoration(
                        color: colors.black.withValues(alpha: 0.3),
                        shape: BoxShape.circle,
                        // border: Border.all(color: colors.black),
                      ),
                      child: SvgPicture.asset(
                        widget.isSaved
                            ? Assets.svg.bookmarkFilledIcon
                            : Assets.svg.bookmarkOutlineIcon,
                        fit: BoxFit.scaleDown,
                      ),
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
              color: colors.textPrimary,
              fontWeight: AppFontWeight.semiBold,
              fontSize: AppFontSize.xxl,
            ),
            maxLines: widget.maxLines,
            overFlow: widget.overflow,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: AppSpacing.rem1600.w,
                child: CommonText(
                  widget.time ?? 'Time',
                  style: TextStyle(
                    color: colors.textMuted,
                    fontWeight: AppFontWeight.regular,
                    fontSize: AppFontSize.md,
                  ),
                  maxLines: 2,
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
