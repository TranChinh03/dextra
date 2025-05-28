import 'dart:io';
import 'dart:typed_data';

import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class DetectTab extends StatefulWidget {
  const DetectTab({super.key});

  @override
  State<DetectTab> createState() => _DetectTabState();
}

class _DetectTabState extends State<DetectTab> {
  Uint8List? _imageBytes;
  final ImagePicker _picker = ImagePicker();

  // Hàm chọn ảnh từ thiết bị
  Future<void> _pickImage() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        final bytes = await image.readAsBytes();
        setState(() {
          _imageBytes = bytes;
        });
      }
    } catch (e) {
      print('Lỗi khi chọn ảnh: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppSpacing.rem600.h,
        children: [
          Text(
            "Upload an image",
            style: TextStyle(
                fontSize: AppFontSize.lg, fontWeight: AppFontWeight.bold),
          ),
          Row(
            spacing: AppSpacing.rem600.w,
            children: [
              CommonPrimaryButton(
                text: "Select Image from Device",
                onPressed: _pickImage,
              ),
              _imageBytes == null
                  ? SizedBox()
                  : CommonPrimaryButton(
                      text: "Detect",
                      onPressed: () {},
                    ),
            ],
          ),
          _imageBytes == null
              ? Text('No image selected.')
              : Center(
                  child: Image.memory(
                    _imageBytes!,
                    width: AppSpacing.rem9999.w,
                    fit: BoxFit.cover,
                  ),
                ),
          CommonText("Total: 0",
              style: TextStyle(
                fontSize: AppFontSize.xl,
                fontWeight: AppFontWeight.semiBold,
              )),
          CommonText("Number of cars detected: 0",
              style: TextStyle(
                fontSize: AppFontSize.xl,
                fontWeight: AppFontWeight.semiBold,
              )),
          CommonText("Number of bikes detected: 0",
              style: TextStyle(
                fontSize: AppFontSize.xl,
                fontWeight: AppFontWeight.semiBold,
              )),
        ]);
  }
}
