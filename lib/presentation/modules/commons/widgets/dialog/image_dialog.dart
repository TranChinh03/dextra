import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageDialog extends StatefulWidget {
  final Camera? selectedCam;
  const ImageDialog({super.key, this.selectedCam});

  @override
  State<ImageDialog> createState() => _ImageDialogState();
}

class _ImageDialogState extends State<ImageDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: CommonText(
        widget.selectedCam?.name ?? "",
        style: TextStyle(fontWeight: AppFontWeight.bold),
      ),
      content: CommonImage(
        width: AppSpacing.rem9999.w,
        imageUrl:
            "http://localhost:8002/cameras/image/${widget.selectedCam?.privateId ?? ""}",
        fit: BoxFit.contain,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(tr('Common.close')),
        ),
      ],
    );
  }
}
