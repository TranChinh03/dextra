import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dextra/di/injectable.dart';
import 'package:dextra/main.dart';
import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_back_to_to_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_camera_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_secondary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/camera_img_item.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/app_colors.dart';
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
import 'package:supabase_flutter/supabase_flutter.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  final _cameraBloc = getIt.get<CameraBloc>();

  StreamSubscription<DatabaseEvent>? _userSubscription;

  bool _isEditingDetail = false;
  bool _isEditingProfile = false;
  final _formKeyProfile = GlobalKey<FormState>();

  bool _isProfileLoading = false;
  bool _isDetailLoading = false;
  bool _isAvatarLoading = false;
  String? _displayName;
  String? _position;
  String? _location;

  String? _firstName;
  String? _lastName;
  String? _email;
  String? _phone;
  XFile? _avatar;
  String? _avatarUrl;
  List? _savedCams;

  final firestore = FirebaseFirestore.instance;
  get data => null;

  final _displayNameController = TextEditingController();
  final _positionController = TextEditingController();
  final _locationController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneControlller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _onGetUserProfile();
    _onGetSavedCam();
    super.initState();
  }

  Future<XFile?> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _avatar = image;
      });
    }
    return image;
  }

  Future<String?> _onUploadAvatar(String userId) async {
    if (_avatar == null) return _avatarUrl;
    setState(() => _isAvatarLoading = true);
    try {
      final bytes = await _avatar!.readAsBytes();
      final fileName = '$userId.jpg';
      await supabase.storage.from('avatars').uploadBinary(
            fileName,
            bytes,
            fileOptions: FileOptions(
              contentType: _avatar!.mimeType,
              upsert: true,
            ),
          );
      final imageUrl = await supabase.storage
          .from('avatars')
          .createSignedUrl(fileName, 60 * 60 * 24 * 365 * 10);
      setState(() => _isAvatarLoading = false);
      return imageUrl;
    } on StorageException catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: CommonText(
            error.message,
            style: TextStyle(color: AppColors.primary),
          )),
        );
      }
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: CommonText(
            tr(
              'Common.unexpected_err',
            ),
            style: TextStyle(color: AppColors.primary),
          )),
        );
      }
    }
    setState(() => _isAvatarLoading = false);
    return _avatarUrl;
  }

  void _onGetSavedCam() {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      // Listen to real-time changes in the database
      _userSubscription = FirebaseDbService()
          .getReference(path: 'users/${user.uid}')
          .onValue
          .listen((event) {
        final dataSnapshot = event.snapshot;
        final profileData = dataSnapshot.value as Map;
        if (mounted) {
          setState(() {
            _savedCams = profileData['savedCameras'] ?? [];
          });
        }
      });
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
        _avatarUrl = profileData['avatarUrl'] ?? "";
        _avatar = XFile(profileData['avatarUrl'] ?? "");
      });
    }
  }

  Future<void> _onUpdateProfile() async {
    final data = {
      "displayName": _displayNameController.text.trim(),
      "position": _positionController.text.trim(),
      "location": _locationController.text.trim(),
    };
    setState(() => _isProfileLoading = true);
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final avtUrl = await _onUploadAvatar(user.uid);
      await FirebaseDbService().update(
        path: 'users/${user.uid}',
        data: {
          ...data,
          "avatarUrl": avtUrl,
        },
      );
      _onGetUserProfile();
      setState(() {
        _isEditingProfile = false;
        _isProfileLoading = false;
      });
    } else {
      setState(() => _isProfileLoading = false);
    }
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
    _onGetUserProfile();
    setState(() {
      _isEditingDetail = false;
      _isDetailLoading = false;
    });
  }

  void _cancelEditProfile() {
    setState(() {
      _displayNameController.text = _displayName ?? tr('Auth.user_name');
      _positionController.text = _position ?? tr('Auth.position');
      _locationController.text = _location ?? tr('Auth.location');
      _avatar = XFile(_avatarUrl ?? "");
      _isEditingProfile = false;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: CommonText(
        tr('Common.change_cancel'),
        style: TextStyle(color: AppColors.primary),
      )),
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
      SnackBar(
          content: CommonText(
        tr('Common.change_cancel'),
        style: TextStyle(color: AppColors.primary),
      )),
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
    _userSubscription?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return BlocProvider.value(
        value: _cameraBloc,
        child: BlocBuilder<CameraBloc, CameraState>(builder: (context, state) {
          return ScreenContainer(
            isShowLoading:
                _isAvatarLoading || _isDetailLoading || _isProfileLoading,
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    controller: _scrollController,
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
                                          ? ClipOval(
                                              child: SizedBox(
                                                  width: AppSpacing.rem1925.w,
                                                  height: AppSpacing.rem1925.w,
                                                  child: CommonImage(
                                                    imageUrl: _avatar?.path,
                                                  )))
                                          : ClipOval(
                                              child: SizedBox(
                                                width: AppSpacing.rem1925.w,
                                                height: AppSpacing.rem1925.w,
                                                child: CommonImage(
                                                  imagePath: Assets
                                                      .png.placeHolder.path,
                                                ),
                                              ),
                                            ),
                                      _isEditingProfile
                                          ? CommonCameraButton(
                                              onPressed: _pickImage,
                                            )
                                          : SizedBox()
                                    ]),
                                    _isEditingProfile || _isAvatarLoading
                                        ? Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: AppSpacing.rem3375.w,
                                                padding: EdgeInsets.only(
                                                    bottom:
                                                        AppSpacing.rem300.h),
                                                child: CommonTextInput(
                                                    controller:
                                                        _displayNameController,
                                                    value: _displayName ??
                                                        tr('Auth.user_name'),
                                                    hintText:
                                                        tr('Auth.user_name'),
                                                    onChanged: (value) => ()),
                                              ),
                                              Container(
                                                width: AppSpacing.rem3375.w,
                                                padding: EdgeInsets.only(
                                                    bottom:
                                                        AppSpacing.rem300.h),
                                                child: CommonTextInput(
                                                    controller:
                                                        _positionController,
                                                    value: _position ??
                                                        tr('Auth.position'),
                                                    hintText:
                                                        tr('Auth.position'),
                                                    onChanged: (value) => ()),
                                              ),
                                              Container(
                                                width: AppSpacing.rem3375.w,
                                                padding: EdgeInsets.only(
                                                    bottom:
                                                        AppSpacing.rem300.h),
                                                child: CommonTextInput(
                                                    controller:
                                                        _locationController,
                                                    value: _location ??
                                                        tr('Auth.location'),
                                                    hintText:
                                                        tr('Auth.location'),
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
                                                    fontWeight:
                                                        AppFontWeight.bold,
                                                    fontSize: AppFontSize.xl),
                                              ),
                                              CommonText(_position ??
                                                  tr('Auth.position')),
                                              CommonText(_location ??
                                                  tr('Auth.location'))
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
                                                      text: tr('Common.save'),
                                                      onPressed: _isProfileLoading
                                                          ? null
                                                          : _onUpdateProfile),
                                                  CommonSecondaryButton(
                                                      text: tr('Common.cancel'),
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
                                                  fontWeight:
                                                      AppFontWeight.bold,
                                                  fontSize: AppFontSize.xl),
                                            ),
                                            SizedBox(
                                              width: AppSpacing.rem3375.w,
                                              child: CommonTextInput(
                                                  controller:
                                                      _firstNameController,
                                                  value: _firstName ??
                                                      tr(
                                                          'Common.first_name_title'),
                                                  hintText: tr(
                                                      'Common.first_name_title'),
                                                  onChanged: (value) => ()),
                                            ),
                                            SizedBox(
                                              height: AppSpacing.rem450.h,
                                            ),
                                            CommonText(
                                              tr('Common.last_name_title'),
                                              style: TextStyle(
                                                  fontWeight:
                                                      AppFontWeight.bold,
                                                  fontSize: AppFontSize.xl),
                                            ),
                                            SizedBox(
                                              width: AppSpacing.rem3375.w,
                                              child: CommonTextInput(
                                                  controller:
                                                      _lastNameController,
                                                  hintText: tr(
                                                      'Common.last_name_title'),
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
                                                  fontWeight:
                                                      AppFontWeight.bold,
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
                                                  fontWeight:
                                                      AppFontWeight.bold,
                                                  fontSize: AppFontSize.xl),
                                            ),
                                            SizedBox(
                                              width: AppSpacing.rem3375.w,
                                              child: CommonTextInput(
                                                  controller: _phoneControlller,
                                                  value: _phone ??
                                                      tr('Auth.phone'),
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
                                                text: tr('Common.save'),
                                                onPressed: _isDetailLoading
                                                    ? null
                                                    : _onUpdateDetail,
                                              ),
                                              CommonSecondaryButton(
                                                text: tr('Common.cancel'),
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
                                                  fontWeight:
                                                      AppFontWeight.bold,
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
                                                  fontWeight:
                                                      AppFontWeight.bold,
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
                                                  fontWeight:
                                                      AppFontWeight.bold,
                                                  fontSize: AppFontSize.xl),
                                            ),
                                            CommonText(_email ?? ""),
                                            SizedBox(
                                              height: AppSpacing.rem450.h,
                                            ),
                                            CommonText(
                                              tr('Auth.phone'),
                                              style: TextStyle(
                                                  fontWeight:
                                                      AppFontWeight.bold,
                                                  fontSize: AppFontSize.xl),
                                            ),
                                            CommonText(
                                                _phone ?? tr('Auth.phone')),
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
                              child: Wrap(
                                spacing: AppSpacing.rem100.w,
                                runSpacing:
                                    AppSpacing.rem100.h, // space between lines
                                children: _savedCams != null
                                    ? _cameraBloc.state.cameras
                                        .where((cam) =>
                                            _savedCams
                                                ?.contains(cam.privateId) ==
                                            true)
                                        .map((camera) => CameraImgItem(
                                              name: camera.name,
                                              cameraId: camera.privateId,
                                              time: camera.lastModified != null
                                                  ? DateFormat(
                                                          'dd MMMM yyyy',
                                                          context.locale
                                                              .toLanguageTag())
                                                      .format(
                                                          camera.lastModified!)
                                                  : '',
                                              isSaved: true,
                                              onPressed: () => showDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      ImageDialog(
                                                        selectedCam: camera,
                                                      )),
                                            ))
                                        .toList()
                                    : [],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: AppSpacing.rem800.h,
                      right: AppSpacing.rem800.h,
                      child: CommonBackToTopButton(
                          scrollController: _scrollController))
                ],
              ),
            ),
          );
        }));
  }
}
