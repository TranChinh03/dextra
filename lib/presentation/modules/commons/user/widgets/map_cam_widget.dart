import 'dart:async';
import 'dart:typed_data';

import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/enum/screen_path.dart';
import 'package:dextra/domain/interfaces/api_client.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:dextra/infrastructure/base_api/dio_client/api_path.dart';
import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/statistic/charts/pie_chart_sample.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/statistic/date_time_picker.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_arrow_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/camera_img_item.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/camera_list_item.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/common_statistic_card.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/search_box.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simpleDropdown.dart';
import 'package:dextra/presentation/modules/commons/widgets/map/map.dart';
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
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapCamWidget extends StatefulWidget {
  const MapCamWidget({super.key});

  @override
  State<MapCamWidget> createState() => _MapCamWidgetState();
}

class _MapCamWidgetState extends State<MapCamWidget> {
  final ScrollController _scrollController = ScrollController();

  final _cameraBloc = getIt.get<CameraBloc>();
  late Timer _timer;
  String _currentTime = '';
  int currentPage = 1;
  int currentSegment = 1;
  int pagesPerSeg = 5;
  LatLng? currentPos;

  final List<String> _districts = [
    'District 1',
    'District 3',
    'District 4',
    'District 5',
    'District 6',
    'District 7',
    'District 8',
    'District 10',
    'District 11',
    'District 12',
    'Binh Thanh District',
    'Go Vap District',
    'Phu Nhuan District',
    'Tan Binh District',
    'Tan Phu District',
    'Thu Duc District',
    'Binh Chanh District',
    'Cu Chi District',
    'Hoc Mon District',
    'Nha Be District',
    'Can Gio District',
    'Thu Duc City',
  ];

  @override
  void initState() {
    super.initState();
    _onFetchCamera();

    _updateTime();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _updateTime());
  }

  void _onFetchCamera() {
    if (_cameraBloc.state.cameras.isNotEmpty) {
      return;
    }
    _cameraBloc.add(FetchCamerasEvent());
  }

  void _updateTime() {
    final now = DateTime.now();
    final formatted = DateFormat('dd MMMM yyyy hh:mm:ss a').format(now);
    setState(() {
      _currentTime = formatted;
    });
  }

  Widget _createButton() {
    int totalPages = _cameraBloc.state.cameras.length % 20 == 0
        ? _cameraBloc.state.cameras.length ~/ 20
        : (_cameraBloc.state.cameras.length ~/ 20) + 1;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommonArrowButton(
          direction: 'left',
          isEnable: currentSegment > 1,
          onPressed: () {
            setState(() {
              currentSegment--;
            });
          },
        ),
        ...List.generate(
            (totalPages ~/ (currentSegment * pagesPerSeg) > 0
                ? pagesPerSeg
                : (totalPages % ((currentSegment - 1) * pagesPerSeg))),
            (index) {
          return Padding(
            padding: EdgeInsets.all(AppSpacing.rem125.w),
            child: CommonButton(
              text:
                  (index + 1 + ((currentSegment - 1) * pagesPerSeg)).toString(),
              onPressed: () => setState(() {
                currentPage = index + 1 + ((currentSegment - 1) * pagesPerSeg);
              }),
            ),
          );
        }),
        CommonArrowButton(
          isEnable: totalPages % pagesPerSeg == 0
              ? currentSegment <= totalPages / pagesPerSeg - 1
              : currentSegment < totalPages / pagesPerSeg,
          onPressed: () {
            setState(() {
              currentSegment++;
              print(currentSegment);
            });
          },
        ),
      ],
    );
  }
  // void _setupScrollListener() {
  //   _scrollController.addListener(() {
  //     if (_scrollController.position.pixels >=
  //             _scrollController.position.maxScrollExtent * 0.8 &&
  //         !context.read<CameraBloc>().state.hasMore) {
  //       // Already loading or no more data
  //       return;
  //     }
  //     if (_scrollController.position.pixels >=
  //         _scrollController.position.maxScrollExtent * 0.8) {
  //       // Load more when 80% scrolled
  //       final currentPage = context.read<CameraBloc>().state.currentPage;
  //       context.read<CameraBloc>().add(FetchMoreCamerasEvent(currentPage + 1));
  //     }
  //   });
  // }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);
    List<Widget> imageList = List.generate(
      9,
      (_) => InkWell(
        onTap: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('VoChiCong - CauPhuHuu2'),
            content: CommonImage(
              imagePath: Assets.png.placeHolder.path,
              width: AppSpacing.rem9999.w,
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Close'),
              ),
            ],
          ),
        ),
        child: CommonImage(
          imagePath: Assets.png.placeHolder.path,
          width: AppSpacing.rem600.w,
        ),
      ),
    );

    return BlocBuilder<CameraBloc, CameraState>(
      builder: (context, state) {
        return ScreenContainer(
          isShowLoading: state.apiStatus == ApiStatus.loading,
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.rem600.w,
                vertical: AppSpacing.rem600.h,
              ),
              child: Column(
                children: [
                  // ListView.builder(
                  //   shrinkWrap: true,
                  //   physics: NeverScrollableScrollPhysics(),
                  //   itemCount: _cameraBloc.state.cameras.length > 10
                  //       ? 10
                  //       : _cameraBloc.state.cameras.length,
                  //   itemBuilder: (context, index) {
                  //     final camera = _cameraBloc.state.cameras[index];
                  //     return ListTile(
                  //       leading: Icon(Icons.camera_alt),
                  //       title: Text(camera.name ?? 'Unknown Camera'),
                  //       subtitle: Text(camera.loc?.coordinates.toString() ??
                  //           'Unknown Location'),
                  //       onTap: () {
                  //         // Handle camera item tap
                  //       },
                  //     );
                  //   },
                  // ),
                  Row(
                    children: [
                      Container(
                        height: AppSpacing.rem200.h,
                        width: AppSpacing.rem200.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: colors.liveBadgeTextColor),
                      ),
                      SizedBox(
                        width: AppSpacing.rem300.w,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: AppSpacing.rem125.h,
                            horizontal: AppSpacing.rem700.w),
                        decoration: BoxDecoration(
                            color: colors.liveBadgeBgColor,
                            borderRadius: BorderRadius.circular(
                                AppBorderRadius.spacing3xl)),
                        child: CommonText(
                          "Live",
                          style: TextStyle(
                              color: colors.liveBadgeTextColor,
                              fontWeight: AppFontWeight.semiBold),
                        ),
                      ),
                      SizedBox(
                        width: AppSpacing.rem400.w,
                      ),
                      CommonText(
                        _currentTime,
                        style: TextStyle(
                            fontWeight: AppFontWeight.bold,
                            fontSize: AppFontSize.xxl),
                      )
                    ],
                  ),
                  SizedBox(
                    height: AppSpacing.rem600.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: AppSpacing.rem600.h),
                    height: AppSpacing.rem8975.h,
                    width: double.infinity,
                    color: colors.primaryBannerBg,
                    child: MapSample(
                      cameraList: _cameraBloc.state.cameras,
                      location: currentPos,
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     SearchBox(),
                  //     SizedBox(
                  //       width: AppSpacing.rem300.w,
                  //     ),
                  //     Expanded(
                  //       child: SimpleDropdown(
                  //         itemsList: _districts.map((option) {
                  //           return DropdownMenuItem<String>(
                  //             value: option,
                  //             child: CommonText(option),
                  //           );
                  //         }).toList(),
                  //         onChanged: (value) => setState(() {}),
                  //       ),
                  //     )
                  //   ],
                  // ),
                  _cameraBloc.state.cameras.isEmpty
                      ? CircularProgressIndicator()
                      : Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: AppSpacing.rem600),
                          child: ListView.builder(
                              shrinkWrap: true,
                              controller: _scrollController,
                              itemCount: 20,
                              itemBuilder: (context, index) {
                                final camera = _cameraBloc.state
                                    .cameras[index + (currentPage - 1) * 20];

                                return Padding(
                                  padding: EdgeInsets.all(AppSpacing.rem350.h),
                                  child: CameraListItem(
                                    cameraId: camera.privateId,
                                    onTap: () => {
                                      setState(() {
                                        currentPos = LatLng(
                                            camera.loc?.coordinates[1] ?? 0,
                                            camera.loc?.coordinates[0] ?? 0);
                                      }),
                                      print(currentPos),
                                    },
                                    cammeName: camera.name,
                                    dist: camera.dist,
                                    imgUrl: camera.liveviewUrl,
                                  ),
                                );
                              }),
                        ),
                  _cameraBloc.state.cameras.isEmpty
                      ? CircularProgressIndicator()
                      : _createButton(),
                  CommonHeading(
                    heading: "Analyze Traffic",
                    subheading:
                        "Gain deeper insights into traffic flow patterns through visualized results, detection snapshots, and vehicle density analysis across surveillance points",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SearchBox(),
                      CommonText(
                        "Time: ",
                        style: TextStyle(fontWeight: AppFontWeight.bold),
                      ),
                      // DateTimePicker(label: '', onPressed: () {}, isDate: true)
                    ],
                  ),
                  GridView.count(
                    padding:
                        EdgeInsets.symmetric(vertical: AppSpacing.rem600.h),
                    crossAxisCount: 3,
                    crossAxisSpacing: AppSpacing.rem300.w,
                    mainAxisSpacing: AppSpacing.rem300.h,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: imageList,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: AppSpacing.rem5000.h,
                          width: AppSpacing.rem6250.w,
                          child: PieChartSample2()),
                      CommonStatisticCard(
                        label: tr('Common.avg_congestion_label'),
                        value: tr('Common.default_avg_congestion'),
                        info: tr('Common.peak_congestion_label') +
                            tr('Common.default_peak_congestion_value'),
                        background: colors.cardBackground2,
                        decoration: colors.cardDecorate2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Future<void> _goToCameraPos(pos) async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(target: pos, zoom: 15),
    ));
  }
}
