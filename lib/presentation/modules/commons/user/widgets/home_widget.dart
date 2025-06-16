import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/enum/screen_path.dart';
import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
import 'package:dextra/presentation/modules/commons/bloc/statistic/statistic_bloc.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/sample_data.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_arrow_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_back_to_to_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_secondary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/cameraList/search_cam_list_home.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/common_statistic_card.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_bar_chart_3.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/screen-container/screen_container.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_heading.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/presentation/router/router_config/router.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final _cameraBloc = getIt.get<CameraBloc>();
  final _statisticBloc = getIt.get<StatisticBloc>();

  final ScrollController _scrollController = ScrollController();

  void _onFetchCamera() {
    if (_cameraBloc.state.cameras.isNotEmpty) {
      return;
    }
    _cameraBloc.add(FetchCamerasEvent());
  }

  void _onFetchByDate() {
    if (_statisticBloc.state.trackingByDate.isNotEmpty) {
      return;
    }
    _statisticBloc.add(TrackingByDateEvent());
  }

  @override
  void initState() {
    super.initState();
    _onFetchCamera();
    _onFetchByDate();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);
    return BlocBuilder<CameraBloc, CameraState>(builder: (context, state) {
      return BlocBuilder<StatisticBloc, StatisticState>(
          builder: (context, statisticState) {
        if (statisticState.trackingByDate.isEmpty) {
          return Center(child: CircularProgressIndicator());
        }
        List data = _statisticBloc.state.trackingByDate;
        int length = data.length;
        ResultDetail lastDay = data.last;
        ResultDetail beforeDay = data[length - 2];
        double rate = ((lastDay.totalVehicles ?? 0) *
                100 /
                (beforeDay.totalVehicles ?? 1))
            .toDouble();

        double rateMotor = int.parse(lastDay.numberOfMotorcycle ?? "0") /
            (lastDay.totalVehicles ?? 1);
        return ScreenContainer(
          // isShowLoading:
          //     // state.apiStatus == ApiStatus.loading ||
          //     statisticState.apiStatus == ApiStatus.loading,
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
                    spacing: AppSpacing.rem600.h,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                CommonText(
                                  tr('Common.home_sec_1_heading'),
                                  style: TextStyle(
                                      fontSize: AppFontSize.lg,
                                      fontWeight: AppFontWeight.bold),
                                ),
                                SizedBox(
                                  height: AppSpacing.rem250.h,
                                ),
                                CommonText(
                                  tr('Common.home_sec_1_subheading'),
                                  style: TextStyle(
                                      fontSize: AppFontSize.xxl,
                                      color: colors.textMuted),
                                ),
                                SizedBox(
                                  height: AppSpacing.rem1600.h,
                                ),
                                Row(
                                  children: [
                                    CommonPrimaryButton(
                                      text: tr('Common.explore_now'),
                                      onPressed: () => DextraRouter.go(
                                          ScreenPath.statistic.value),
                                    ),
                                    SizedBox(
                                      width: AppSpacing.rem250.w,
                                    ),
                                    CommonArrowButton(
                                      onPressed: () => DextraRouter.go(
                                          ScreenPath.statistic.value),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: AppSpacing.rem450),
                            child: Stack(children: [
                              Column(
                                children: [
                                  CommonImage(
                                    width: AppSpacing.rem8975.w,
                                    imagePath: Assets.png.homeSec1.path,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: AppSpacing.rem300.h,
                                  )
                                ],
                              ),
                              Positioned(
                                right: AppSpacing.rem2350.w,
                                bottom: 0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      AppBorderRadius.spacing3xl),
                                  child: CommonImage(
                                    width: AppSpacing.rem2775.w,
                                    imagePath: Assets.png.cam3.path,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: AppSpacing.rem1400.w,
                                bottom: 0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      AppBorderRadius.spacing3xl),
                                  child: CommonImage(
                                    width: AppSpacing.rem3375.w,
                                    imagePath: Assets.png.cam2.path,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: AppSpacing.rem175.h,
                                          horizontal: AppSpacing.rem400.w),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                  AppBorderRadius.spacing3xl),
                                              topRight: Radius.circular(
                                                  AppBorderRadius.spacing3xl)),
                                          color: colors.backgroundApp),
                                      child: CommonText(
                                        tr('Common.cam_default_label'),
                                        style: TextStyle(
                                            fontWeight: AppFontWeight.semiBold,
                                            fontSize: AppFontSize.sm,
                                            color:
                                                colors.buttonPrimaryBackground),
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.zero,
                                          topRight: Radius.circular(
                                              AppBorderRadius.spacing3xl),
                                          bottomLeft: Radius.circular(
                                              AppBorderRadius.spacing3xl),
                                          bottomRight: Radius.circular(
                                              AppBorderRadius.spacing3xl)),
                                      child: CommonImage(
                                        width: AppSpacing.rem4150.w,
                                        imagePath: Assets.png.cam1.path,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: AppSpacing.rem500.h,
                                right: AppSpacing.rem500.w,
                                child: CommonArrowButton(
                                    backgroundColor: colors.backgroundApp
                                        .withValues(alpha: 0.75)),
                              )
                            ]),
                          ),
                        ],
                      ),
                      CommonHeading(
                          heading: tr('Common.search_for_cam'),
                          subheading: tr('Common.search_home_hint')),
                      SearchCamListHome(),
                      Padding(
                        padding: const EdgeInsets.only(top: AppSpacing.rem600),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  AppBorderRadius.spacing3xl),
                              child: CommonImage(
                                imagePath: Assets.png.mapDemo.path,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned.fill(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    AppBorderRadius.spacing3xl),
                                child: Container(
                                    color:
                                        colors.primary.withValues(alpha: 0.5),
                                    child: Column(
                                      children: [
                                        CommonHeading(
                                          heading: tr('Common.access_map'),
                                          subheading:
                                              tr('Common.access_map_info'),
                                          headingStyle: TextStyle(
                                              color: colors.backgroundApp,
                                              fontSize: AppFontSize.lg,
                                              fontWeight: AppFontWeight.bold),
                                          subheadingStyle: TextStyle(
                                              color: colors.backgroundApp,
                                              fontSize: AppFontSize.xxl,
                                              fontWeight:
                                                  AppFontWeight.regular),
                                        ),
                                        CommonSecondaryButton(
                                          text: tr('Common.explore'),
                                          onPressed: () => DextraRouter.go(
                                              ScreenPath.mapCam.value),
                                        )
                                      ],
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                      CommonHeading(
                        heading: tr('Common.today_stats'),
                        subheading: tr('Common.today_stats_info'),
                      ),
                      _statisticBloc.state.trackingByDate.isNotEmpty
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CommonStatisticCard(
                                  label:
                                      "${tr('Common.vehicle_count_on')} ${lastDay.date}",
                                  value: lastDay.totalVehicles.toString(),
                                  info:
                                      "${tr('Common.compare_day_before')} ${rate.toStringAsFixed(2)}%",
                                  textColor: colors.buttonPrimaryBackground,
                                ),
                                CommonStatisticCard(
                                  label: tr('Common.most_is_motorcycle'),
                                  value: lastDay.numberOfMotorcycle,
                                  info:
                                      "${tr('Common.compare_total')} ${rateMotor.toStringAsFixed(2)}%",
                                  background: colors.cardBackground2,
                                  decoration: colors.cardDecorate2,
                                ),
                              ],
                            )
                          : CircularProgressIndicator(),
                      StatisticBarChart3(
                        maxY: double.parse(data.last.numberOfMotorcycle ?? "0"),
                        intervalY: 50000,
                        data: data.last,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: AppSpacing.rem6250.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  AppBorderRadius.spacing3xl),
                              color: colors.primaryBannerBg,
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: SvgPicture.asset(
                                Assets.svg.circleIcon,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: AppSpacing.rem600,
                            right: 0,
                            child: SvgPicture.asset(
                              Assets.svg.pdfIcon,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          Positioned(
                            top: AppSpacing.rem600,
                            left: AppSpacing.rem400,
                            child: SvgPicture.asset(
                              Assets.svg.notiIcon,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          Positioned.fill(
                              child: Center(
                                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CommonHeading(
                                heading: tr('Common.export_banner'),
                                subheading: tr('Common.export_banner_info'),
                              ),
                              CommonPrimaryButton(
                                text: tr('Common.explore'),
                                onPressed: () =>
                                    DextraRouter.go(ScreenPath.statistic.value),
                              )
                            ],
                          )))
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: AppSpacing.rem800.h,
                    right: AppSpacing.rem800.h,
                    child: CommonBackToToButton(
                        scrollController: _scrollController))
              ],
            ),
          ),
        );
      });
    });
  }
}
