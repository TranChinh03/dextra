import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dextra/di/injectable.dart';
import 'package:dextra/presentation/app/blocs/authentication/authentication_bloc.dart';
import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/screen-container/screen_container.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/presentation/modules/commons/widgets/textInput/common_text_input.dart';
import 'package:dextra/presentation/router/router_config/router.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  String userName = '';
  String email = '';
  String password = '';
  bool isLogin = true;
  bool isVerified = true;
  final _authBloc = getIt.get<AuthenticationBloc>();

  @override
  void initState() {
    super.initState();
    // Check if the user is already logged in and navigate to the userPage
    if (_authBloc.state.isLoggedIn == true) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        DextraRouter.replace(DextraRouter.userHomePage);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final appColor = IAppColor.watch(context);

    void onUserNameChanged(String value) {
      setState(() {
        userName = value;
      });
    }

    void onEmailChanged(String value) {
      setState(() {
        email = value;
      });
    }

    void onPasswordChanged(String value) {
      setState(() {
        password = value;
      });
    }

    void onChangeState() {
      setState(() {
        isLogin = !isLogin;
        email = '';
        password = '';
        userName = '';
      });
    }

    void onButtonPressed() async {
      if (isLogin) {
        _authBloc.add(
          SignInWithEmailPasswordEvent(
            email: email,
            password: password,
          ),
        );
        // final user = FirebaseAuth.instance.currentUser;
        // await user?.reload();
        // if (user != null && !user.emailVerified) {
        //   _authBloc.add(SignOutEvent());
        //   AwesomeDialog(
        //           width: AppSpacing.rem6250.w,
        //           context: context,
        //           dialogType: DialogType.error,
        //           title: 'Email Not Verified',
        //           desc: 'Please verify your email before logging in.',
        //           btnOkOnPress: () {},
        //           btnOkColor: appColor.errorColor)
        //       .show();
        // }
      } else {
        // Handle sign-up logic here
        _authBloc.add(
          SignUpWithEmailPasswordEvent(
            userName: userName,
            email: email,
            password: password,
          ),
        );
      }
    }

    void onAuthStatusChanged() async {
      if (_authBloc.state.apiState?.status == ApiStatus.hasData) {
        if (_authBloc.state.isLoggedIn == true) {
          final user = FirebaseAuth.instance.currentUser;
          await user?.reload();
          if (user != null && user.emailVerified) {
            setState(() {
              isVerified = false;
            });
            DextraRouter.replace(DextraRouter.userHomePage);
          } else {
            if (!context.mounted) return;
            AwesomeDialog(
                    width: AppSpacing.rem6250.w,
                    context: context,
                    dialogType: DialogType.info,
                    title: 'Verified Your Email',
                    desc:
                        'We’ve sent a confirmation email to your inbox. Please check your email and click the link to verify your account.',
                    btnOkOnPress: () => _authBloc.add(SignOutEvent()),
                    btnOkColor: appColor.primary)
                .show();

            setState(() {
              isLogin = true;
              isVerified = false;
            });
            return;
          }
        } else {
          if (!isVerified) return;
          // Handle login failure
          AwesomeDialog(
                  width: AppSpacing.rem6250.w,
                  context: context,
                  dialogType: DialogType.error,
                  title: 'Login Failed',
                  desc:
                      'An unexpected error occurred. Please try again or contact support if the issue persists.',
                  btnOkOnPress: () {},
                  btnOkColor: appColor.errorColor)
              .show();
        }
      } else if (_authBloc.state.apiState?.status == ApiStatus.error) {
        // Handle error state
        if (_authBloc.state.apiState!.errorResponse?.code == 'invalid-email') {
          AwesomeDialog(
                  width: AppSpacing.rem6250.w,
                  context: context,
                  dialogType: DialogType.error,
                  title: 'Invalid email',
                  desc: 'The email format is invalid',
                  // btnCancelOnPress: () {},
                  btnOkOnPress: () {},
                  btnOkColor: appColor.errorColor)
              .show();
        } else if (_authBloc.state.apiState!.errorResponse?.code ==
            'invalid-credential') {
          AwesomeDialog(
                  width: AppSpacing.rem6250.w,
                  context: context,
                  dialogType: DialogType.error,
                  title: 'Invalid Credential',
                  desc:
                      'Incorrect email or password. Please check your credentials and try again.',
                  // btnCancelOnPress: () {},
                  btnOkOnPress: () {},
                  btnOkColor: appColor.errorColor)
              .show();
        } else {
          AwesomeDialog(
                  width: AppSpacing.rem6250.w,
                  context: context,
                  dialogType: DialogType.error,
                  title: 'Error',
                  desc: _authBloc.state.apiState!.errorResponse?.message ??
                      'Error',
                  // btnCancelOnPress: () {},
                  btnOkOnPress: () {},
                  btnOkColor: appColor.errorColor)
              .show();
        }
      }
    }

    void onGoogleSignIn() {
      _authBloc.add(SignInWithGoogleEvent());
    }

    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      bloc: _authBloc,
      listenWhen: (previous, current) => previous.apiState != current.apiState,
      listener: (context, state) {
        onAuthStatusChanged();
      },
      builder: (context, state) => ScreenContainer(
        isShowLoading: state.apiState?.status == ApiStatus.loading,
        child: Scaffold(
          backgroundColor: appColor.menuBackground,
          body: SingleChildScrollView(
            child: Row(
              children: [
                Expanded(
                  flex: 4, // 40% of the space
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.symmetric(
                      vertical: AppSpacing.rem600.h,
                      horizontal: AppSpacing.rem600.w,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonImage(
                              imagePath: Assets.png.logo.path,
                              width: AppSpacing.rem1925.w,
                            ),
                            SizedBox(height: AppSpacing.rem200.h),
                            CommonText(
                              tr('Auth.sub_slogan'),
                              style: TextStyle(
                                fontSize: AppFontSize.md,
                                fontWeight: AppFontWeight.regular,
                                color: appColor.white,
                              ),
                            )
                          ],
                        ),
                        CommonText(
                          tr('Auth.slogan'),
                          style: TextStyle(
                            fontSize: AppFontSize.displayMedium,
                            fontWeight: AppFontWeight.bold,
                            color: appColor.white,
                          ),
                        ),
                        CommonImage(
                          imagePath: Assets.png.authBackground.path,
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6, // 60% of the space
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: appColor.backgroundApp,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppBorderRadius.spacing2xl),
                        bottomLeft: Radius.circular(AppBorderRadius.spacing2xl),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppSpacing.rem1925.h,
                        horizontal: AppSpacing.rem1200.w,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: isLogin
                                  ? tr('Common.welcome_to')
                                  : tr('Auth.create_account'),
                              style: TextStyle(
                                fontSize: AppFontSize.lg,
                                fontWeight: AppFontWeight.bold,
                                color: appColor.black,
                              ),
                              children: [
                                if (isLogin) ...[
                                  TextSpan(text: " "),
                                  TextSpan(
                                    text: tr('Common.Dextra'),
                                    style: TextStyle(
                                      fontSize: AppFontSize.lg,
                                      fontWeight: AppFontWeight.bold,
                                      color: appColor.primary,
                                    ),
                                  ),
                                ]
                              ],
                            ),
                          ),
                          isLogin
                              ? Column(
                                  spacing: AppSpacing.rem500.h,
                                  children: [
                                    CommonTextInput(
                                      hintText: tr('Auth.email'),
                                      value: email,
                                      onChanged: (value) =>
                                          onEmailChanged(value),
                                    ),
                                    CommonTextInput(
                                      hintText: tr('Auth.password'),
                                      isPassword: true,
                                      value: password,
                                      onChanged: onPasswordChanged,
                                    ),
                                  ],
                                )
                              : Column(
                                  spacing: AppSpacing.rem500.h,
                                  children: [
                                    CommonTextInput(
                                      hintText: tr('Auth.user_name'),
                                      value: userName,
                                      onChanged: (value) =>
                                          onUserNameChanged(value),
                                    ),
                                    CommonTextInput(
                                      hintText: tr('Auth.email'),
                                      isPassword: false,
                                      value: email,
                                      onChanged: (value) =>
                                          onEmailChanged(value),
                                    ),
                                    CommonTextInput(
                                      hintText: tr('Auth.password'),
                                      isPassword: true,
                                      value: password,
                                      onChanged: onPasswordChanged,
                                    ),
                                  ],
                                ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSpacing.rem1400.w,
                            ),
                            child: CommonButton(
                              text: isLogin
                                  ? tr('Auth.sign_in')
                                  : tr('Auth.sign_up'),
                              onPressed: onButtonPressed,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSpacing.rem3875.w,
                            ),
                            child: Divider(
                              color: appColor.black.withOpacity(0.3),
                              height: AppSpacing.rem025.h,
                            ),
                          ),
                          CommonText(
                            isLogin
                                ? tr('Auth.or_continue_with')
                                : tr('Auth.or_sign_up_with'),
                            style: TextStyle(
                              fontSize: AppFontSize.xl,
                              fontWeight: AppFontWeight.regular,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: AppSpacing.rem500.w,
                            children: [
                              InkWell(
                                onTap: onGoogleSignIn,
                                child: CommonImage(
                                  imagePath: Assets.png.google.path,
                                  width: AppSpacing.rem600.w,
                                ),
                              ),
                              CommonImage(
                                imagePath: Assets.png.facebook.path,
                                width: AppSpacing.rem600.w,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CommonText(
                                "${isLogin ? tr('Auth.not_a_member') : tr('Auth.already_have_account')} ",
                                style: TextStyle(
                                  fontSize: AppFontSize.xl,
                                  fontWeight: AppFontWeight.regular,
                                ),
                              ),
                              InkWell(
                                onTap: onChangeState,
                                child: CommonText(
                                  isLogin
                                      ? tr('Auth.sign_up_now')
                                      : tr('Auth.sign_in'),
                                  style: TextStyle(
                                    fontSize: AppFontSize.xl,
                                    fontWeight: AppFontWeight.regular,
                                    color: appColor.primary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
