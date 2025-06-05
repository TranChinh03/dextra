import 'dart:typed_data';

import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/camera_img_item.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/screen-container/screen_container.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/presentation/modules/commons/widgets/textInput/common_text_input.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  bool _isEditingDetail = false;
  bool _isEditingProfile = false;
  final _formKey = GlobalKey<FormState>();
  final _formKeyProfile = GlobalKey<FormState>();
  final ImagePicker _picker = ImagePicker();

  String _userName = "";
  String _firstName = "";
  String _lastName = "";
  String _email = "";
  String _phone = "";
  XFile? _avatar;

  Future<void> _pickImage() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        setState(() {
          _avatar = image;
        });
      }
    } catch (e) {
      // print('Errors: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return ScreenContainer(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.rem600.w,
            vertical: AppSpacing.rem600.h,
          ),
          child: Column(
            spacing: AppSpacing.rem1000.h,
            children: [
              Form(
                key: _formKeyProfile,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: AppSpacing.rem200.h,
                  children: [
                    CommonText(
                      "My profile",
                      style: TextStyle(
                          fontWeight: AppFontWeight.bold,
                          fontSize: AppFontSize.xxxl),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: AppSpacing.rem650.h,
                          horizontal: AppSpacing.rem650.w),
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: colors.dividerColor),
                          borderRadius: BorderRadius.circular(
                              AppBorderRadius.spacing4xl)),
                      child: Row(
                        spacing: AppSpacing.rem600.w,
                        children: [
                          Stack(children: [
                            _avatar != null
                                ? FutureBuilder<Uint8List>(
                                    future: _avatar!.readAsBytes(),
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState ==
                                          ConnectionState.waiting) {
                                        return Center(
                                            child: CircularProgressIndicator());
                                      } else if (snapshot.hasError) {
                                        return Text('Error loading image');
                                      } else if (snapshot.hasData) {
                                        return Center(
                                          child: Image.memory(
                                            snapshot.data!,
                                            width: AppSpacing.rem9999.w,
                                            fit: BoxFit.cover,
                                          ),
                                        );
                                      } else {
                                        return Text('No image data');
                                      }
                                    },
                                  )
                                : CommonImage(
                                    imagePath: Assets.png.avatar.path,
                                    width: AppSpacing.rem1925.w,
                                  ),
                            _isEditingProfile
                                ? CommonButton(
                                    text: "Change img",
                                    onPressed: _pickImage,
                                  )
                                : SizedBox()
                          ]),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _isEditingProfile
                                  ? Container(
                                      width: AppSpacing.rem3375.w,
                                      padding: EdgeInsets.only(
                                          bottom: AppSpacing.rem300.h),
                                      child: CommonTextInput(
                                          hintText: "User name",
                                          value: _userName,
                                          onChanged: (value) => setState(() {
                                                _userName = value;
                                              })),
                                    )
                                  : CommonText(
                                      "User name",
                                      style: TextStyle(
                                          fontWeight: AppFontWeight.bold,
                                          fontSize: AppFontSize.xl),
                                    ),
                              CommonText("Position"),
                              CommonText("Location")
                            ],
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _isEditingProfile = !_isEditingProfile;
                                  });
                                },
                                child: SvgPicture.asset(
                                  _isEditingProfile
                                      ? Assets.svg.editIcon
                                      : Assets.svg.editIcon,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: AppSpacing.rem200.h,
                  children: [
                    CommonText(
                      "Personal Information",
                      style: TextStyle(
                          fontWeight: AppFontWeight.bold,
                          fontSize: AppFontSize.xxxl),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: AppSpacing.rem650.h,
                          horizontal: AppSpacing.rem650.w),
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: colors.dividerColor),
                          borderRadius: BorderRadius.circular(
                              AppBorderRadius.spacing4xl)),
                      child: Row(
                        spacing: AppSpacing.rem1200.w,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonText(
                                "First name",
                                style: TextStyle(
                                    fontWeight: AppFontWeight.bold,
                                    fontSize: AppFontSize.xl),
                              ),
                              _isEditingDetail
                                  ? SizedBox(
                                      width: AppSpacing.rem3375.w,
                                      child: CommonTextInput(
                                          hintText: "First name",
                                          value: _firstName,
                                          onChanged: (value) => setState(() {
                                                _firstName = value;
                                              })),
                                    )
                                  : CommonText("First name"),
                              SizedBox(
                                height: AppSpacing.rem450.h,
                              ),
                              CommonText(
                                "Last name",
                                style: TextStyle(
                                    fontWeight: AppFontWeight.bold,
                                    fontSize: AppFontSize.xl),
                              ),
                              _isEditingDetail
                                  ? SizedBox(
                                      width: AppSpacing.rem3375.w,
                                      child: CommonTextInput(
                                          hintText: "Last name",
                                          value: _lastName,
                                          onChanged: (value) => setState(() {
                                                _lastName = value;
                                              })),
                                    )
                                  : CommonText("Last name"),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonText(
                                "Email",
                                style: TextStyle(
                                    fontWeight: AppFontWeight.bold,
                                    fontSize: AppFontSize.xl),
                              ),
                              _isEditingDetail
                                  ? SizedBox(
                                      width: AppSpacing.rem3375.w,
                                      child: CommonTextInput(
                                          hintText: "Email name",
                                          value: _email,
                                          onChanged: (value) => setState(() {
                                                _email = value;
                                              })),
                                    )
                                  : CommonText("email@gmail.com"),
                              SizedBox(
                                height: AppSpacing.rem450.h,
                              ),
                              CommonText(
                                "Phone",
                                style: TextStyle(
                                    fontWeight: AppFontWeight.bold,
                                    fontSize: AppFontSize.xl),
                              ),
                              _isEditingDetail
                                  ? SizedBox(
                                      width: AppSpacing.rem3375.w,
                                      child: CommonTextInput(
                                          hintText: "Phone",
                                          value: _phone,
                                          onChanged: (value) => setState(() {
                                                _phone = value;
                                              })),
                                    )
                                  : CommonText("0123456789"),
                            ],
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _isEditingDetail = !_isEditingDetail;
                                  });
                                },
                                child: SvgPicture.asset(
                                  _isEditingDetail
                                      ? Assets.svg.editIcon
                                      : Assets.svg.editIcon,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  CommonText(
                    "Saved Cameras",
                    style: TextStyle(
                        fontWeight: AppFontWeight.bold,
                        fontSize: AppFontSize.xxxl),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: AppSpacing.rem600),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CameraImgItem(
                          isSaved: true,
                        ),
                        CameraImgItem(
                          isSaved: true,
                        ),
                        CameraImgItem(
                          isSaved: true,
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
