import 'dart:typed_data';

import 'package:dextra/di/injectable.dart';
import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_camera_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_secondary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/camera_img_item.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/dialog/image_dialog.dart';
import 'package:dextra/presentation/modules/commons/widgets/screen-container/screen_container.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/presentation/modules/commons/widgets/textInput/common_text_input.dart';
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
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  final _cameraBloc = getIt.get<CameraBloc>();

  bool _isEditingDetail = false;
  bool _isEditingProfile = false;
  final _formKey = GlobalKey<FormState>();
  final _formKeyProfile = GlobalKey<FormState>();
  final ImagePicker _picker = ImagePicker();

  bool _isProfileLoading = false;
  bool _isDetailLoading = false;
  String? _displayName;
  String? _position;
  String? _location;

  String? _firstName;
  String? _lastName;
  String? _email;
  String? _phone;
  XFile? _avatar;

  final _displayNameController = TextEditingController();
  final _positionController = TextEditingController();
  final _locationController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneControlller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _onGetUserProfile();
  }

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

  _onGetUserProfile() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      DataSnapshot? userDataSnapshot =
          await FirebaseDbService().read(path: 'users/${user.uid}');

      final profileData = userDataSnapshot?.value as Map;

      setState(() {
        _displayName = _displayNameController.text =
            profileData['displayName'] ?? tr('Auth.user_name');
        _position = _positionController.text =
            profileData['position'] ?? tr('Auth.position');
        _location = _locationController.text =
            profileData['location'] ?? tr('Auth.location');
        _firstName = _firstNameController.text =
            profileData['firstName'] ?? tr('Common.first_name_title');
        _lastName = _lastNameController.text =
            profileData['lastName'] ?? tr('Common.last_name_title');
        _phone =
            _phoneControlller.text = profileData['phone'] ?? tr('Auth.phone');
        _email = profileData['email'] ?? tr('Auth.email');
      });
    }
  }

  _onUpdateProfile() async {
    setState(() => _isProfileLoading = true);
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await FirebaseDbService().update(path: 'users/${user.uid}', data: {
        "displayName": _displayNameController.text.trim(),
        "position": _positionController.text.trim(),
        "location": _locationController.text.trim()
      });
    }
    setState(() {
      _isEditingProfile = false;
      _isProfileLoading = false;
    });
    _onGetUserProfile();
  }

  _onUpdateDetail() async {
    setState(() => _isDetailLoading = true);
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await FirebaseDbService().update(path: 'users/${user.uid}', data: {
        "firstName": _firstNameController.text.trim(),
        "lastName": _lastNameController.text.trim(),
        "phone": _phoneControlller.text.trim()
      });
    }
    setState(() {
      _isEditingDetail = false;
      _isDetailLoading = false;
    });
    _onGetUserProfile();
  }

  void _cancelEditProfile() {
    setState(() {
      _displayNameController.text = _displayName ?? tr('Auth.user_name');
      _positionController.text = _position ?? tr('Auth.position');
      _locationController.text = _location ?? tr('Auth.location');
      _isEditingProfile = false;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(tr('Common.change_cancel'))),
    );
  }

  void _cancelEditDetail() {
    setState(() {
      _firstNameController.text = _firstName ?? tr('Common.first_name_title');
      _lastNameController.text = _lastName ?? tr('Common.first_name_title');
      // _emailController.text = _email ?? tr('Auth.email');
      _phoneControlller.text = _phone ?? tr('Auth.phone');
      _isEditingDetail = false;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(tr('Common.change_cancel'))),
    );
  }

  @override
  void dispose() {
    _displayNameController.dispose();
    _positionController.dispose();
    _locationController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneControlller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return BlocProvider.value(
        value: _cameraBloc,
        child: BlocBuilder<CameraBloc, CameraState>(builder: (context, state) {
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
                            tr('Common.my_profile'),
                            style: TextStyle(
                                fontWeight: AppFontWeight.bold,
                                fontSize: AppFontSize.xxxl),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: AppSpacing.rem650.h,
                                horizontal: AppSpacing.rem650.w),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: colors.dividerColor),
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
                                                  child:
                                                      CircularProgressIndicator());
                                            } else if (snapshot.hasError) {
                                              return Text(
                                                  tr('Common.err_loading'));
                                            } else if (snapshot.hasData) {
                                              return Center(
                                                child: Image.memory(
                                                  snapshot.data!,
                                                  width: AppSpacing.rem9999.w,
                                                  fit: BoxFit.cover,
                                                ),
                                              );
                                            } else {
                                              return Text(
                                                  tr('Common.no_img_date'));
                                            }
                                          },
                                        )
                                      : CommonImage(
                                          imagePath: Assets.png.avatar.path,
                                          width: AppSpacing.rem1925.w,
                                        ),
                                  _isEditingProfile
                                      ? CommonCameraButton()
                                      : SizedBox()
                                ]),
                                _isEditingProfile
                                    ? Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: AppSpacing.rem3375.w,
                                            padding: EdgeInsets.only(
                                                bottom: AppSpacing.rem300.h),
                                            child: CommonTextInput(
                                                controller:
                                                    _displayNameController,
                                                value: _displayName ??
                                                    tr('Auth.user_name'),
                                                hintText: tr('Auth.user_name'),
                                                onChanged: (value) => ()),
                                          ),
                                          Container(
                                            width: AppSpacing.rem3375.w,
                                            padding: EdgeInsets.only(
                                                bottom: AppSpacing.rem300.h),
                                            child: CommonTextInput(
                                                controller: _positionController,
                                                value: _position ??
                                                    tr('Auth.position'),
                                                hintText: tr('Auth.position'),
                                                onChanged: (value) => ()),
                                          ),
                                          Container(
                                            width: AppSpacing.rem3375.w,
                                            padding: EdgeInsets.only(
                                                bottom: AppSpacing.rem300.h),
                                            child: CommonTextInput(
                                                controller: _locationController,
                                                value: _location ??
                                                    tr('Auth.location'),
                                                hintText: tr('Auth.location'),
                                                onChanged: (value) => ()),
                                          )
                                        ],
                                      )
                                    : Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CommonText(
                                            _displayName ??
                                                tr('Auth.user_name'),
                                            style: TextStyle(
                                                fontWeight: AppFontWeight.bold,
                                                fontSize: AppFontSize.xl),
                                          ),
                                          CommonText(
                                              _position ?? tr('Auth.position')),
                                          CommonText(
                                              _location ?? tr('Auth.location'))
                                        ],
                                      ),
                                _isEditingProfile
                                    ? Expanded(
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Row(
                                            spacing: AppSpacing.rem300.w,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CommonPrimaryButton(
                                                  text: "Save",
                                                  onPressed: _isProfileLoading
                                                      ? null
                                                      : _onUpdateProfile),
                                              CommonSecondaryButton(
                                                  text: "Cancel",
                                                  onPressed:
                                                      _cancelEditProfile),
                                            ],
                                          ),
                                        ),
                                      )
                                    : Expanded(
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                _isEditingProfile = true;
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: AppSpacing.rem200.h,
                      children: [
                        CommonText(
                          tr('Auth.personal_info'),
                          style: TextStyle(
                              fontWeight: AppFontWeight.bold,
                              fontSize: AppFontSize.xxxl),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: AppSpacing.rem650.h,
                              horizontal: AppSpacing.rem650.w),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: colors.dividerColor),
                              borderRadius: BorderRadius.circular(
                                  AppBorderRadius.spacing4xl)),
                          child: _isEditingDetail
                              ? Row(
                                  spacing: AppSpacing.rem600.w,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CommonText(
                                          tr('Common.first_name_title'),
                                          style: TextStyle(
                                              fontWeight: AppFontWeight.bold,
                                              fontSize: AppFontSize.xl),
                                        ),
                                        SizedBox(
                                          width: AppSpacing.rem3375.w,
                                          child: CommonTextInput(
                                              controller: _firstNameController,
                                              value: _firstName ??
                                                  tr('Common.first_name_title'),
                                              hintText:
                                                  tr('Common.first_name_title'),
                                              onChanged: (value) => ()),
                                        ),
                                        SizedBox(
                                          height: AppSpacing.rem450.h,
                                        ),
                                        CommonText(
                                          tr('Common.last_name_title'),
                                          style: TextStyle(
                                              fontWeight: AppFontWeight.bold,
                                              fontSize: AppFontSize.xl),
                                        ),
                                        SizedBox(
                                          width: AppSpacing.rem3375.w,
                                          child: CommonTextInput(
                                              controller: _lastNameController,
                                              hintText:
                                                  tr('Common.last_name_title'),
                                              value: _lastName ??
                                                  tr('Common.last_name_title'),
                                              onChanged: (value) => ()),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CommonText(
                                          tr('Auth.email'),
                                          style: TextStyle(
                                              fontWeight: AppFontWeight.bold,
                                              fontSize: AppFontSize.xl),
                                        ),
                                        CommonText(
                                            tr('Auth.email_placeholder')),
                                        SizedBox(
                                          height: AppSpacing.rem450.h,
                                        ),
                                        CommonText(
                                          tr('Auth.phone'),
                                          style: TextStyle(
                                              fontWeight: AppFontWeight.bold,
                                              fontSize: AppFontSize.xl),
                                        ),
                                        SizedBox(
                                          width: AppSpacing.rem3375.w,
                                          child: CommonTextInput(
                                              controller: _phoneControlller,
                                              value: _phone ?? tr('Auth.phone'),
                                              hintText: tr('Auth.phone'),
                                              onChanged: (value) => ()),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Row(
                                        spacing: AppSpacing.rem300.w,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CommonPrimaryButton(
                                            text: "Save",
                                            onPressed: _isDetailLoading
                                                ? null
                                                : _onUpdateDetail,
                                          ),
                                          CommonSecondaryButton(
                                            text: "Cancel",
                                            onPressed: _cancelEditDetail,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              : Row(
                                  spacing: AppSpacing.rem600.w,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CommonText(
                                          tr('Common.first_name_title'),
                                          style: TextStyle(
                                              fontWeight: AppFontWeight.bold,
                                              fontSize: AppFontSize.xl),
                                        ),
                                        CommonText(_firstName ??
                                            tr('Common.first_name_title')),
                                        SizedBox(
                                          height: AppSpacing.rem450.h,
                                        ),
                                        CommonText(
                                          tr('Common.last_name_title'),
                                          style: TextStyle(
                                              fontWeight: AppFontWeight.bold,
                                              fontSize: AppFontSize.xl),
                                        ),
                                        CommonText(_lastName ??
                                            tr('Common.last_name_title')),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CommonText(
                                          tr('Auth.email'),
                                          style: TextStyle(
                                              fontWeight: AppFontWeight.bold,
                                              fontSize: AppFontSize.xl),
                                        ),
                                        CommonText(_email ?? ""),
                                        SizedBox(
                                          height: AppSpacing.rem450.h,
                                        ),
                                        CommonText(
                                          tr('Auth.phone'),
                                          style: TextStyle(
                                              fontWeight: AppFontWeight.bold,
                                              fontSize: AppFontSize.xl),
                                        ),
                                        CommonText(_phone ?? tr('Auth.phone')),
                                      ],
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              _isEditingDetail = true;
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
                    Column(
                      children: [
                        CommonText(
                          tr('Common.saved_cam'),
                          style: TextStyle(
                              fontWeight: AppFontWeight.bold,
                              fontSize: AppFontSize.xxxl),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: AppSpacing.rem600),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: _cameraBloc.state.cameras
                                .take(3)
                                .map((camera) => CameraImgItem(
                                      name: camera.name,
                                      cameraId: camera.privateId,
                                      time: camera.lastModified != null
                                          ? DateFormat('dd MMMM yyyy')
                                              .format(camera.lastModified!)
                                          : '',
                                      isSaved: true,
                                      onPressed: () => showDialog(
                                          context: context,
                                          builder: (context) => ImageDialog(
                                                selectedCam: camera,
                                              )),
                                    ))
                                .toList(),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
