import 'dart:async';

import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/entities/heatmap_result.dart';
import 'package:dextra/domain/usecases/heatmap/queries/fetch_heat_map_in_day/fetch_heatmap_in_day_query.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
import 'package:dextra/presentation/modules/commons/bloc/datetime/datetime_bloc.dart';
import 'package:dextra/presentation/modules/commons/bloc/heatmap/heatmap_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_secondary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simple_dropdown.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_heading.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/shareds/utils/time_validators.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrafficHeatmap extends StatefulWidget {
  const TrafficHeatmap({
    super.key,
  });

  @override
  State<TrafficHeatmap> createState() => _TrafficHeatmapState();
}

class _TrafficHeatmapState extends State<TrafficHeatmap> {
  final _heatmapBloc = getIt.get<HeatmapBloc>();
  final _datetimeBloc = getIt.get<DateTimeBloc>();
  final _cameraBloc = getIt.get<CameraBloc>();
  late String latestDate;
  late String latestStartHmTime;
  late String latestEndHmTime;

  late List<HeatmapDetail> heatmapData;
  final _controller = Completer<GoogleMapController>();
  final Set<Heatmap> _heatmaps = {};
  bool isProcessing = false;
  bool isStarted = false;

  String currentTime = "";
  List<WeightedLatLng> currentData = [];
  Timer? heatmapTimer;
  int currentIndex = 0;

  final GlobalKey<FormState> _formKeyHeatmap = GlobalKey<FormState>();

  String? _selectedDayHeatmap;
  String? _startTimeHeatmap;
  String? _endTimeHeatmap;
  String? _selectedVehicle;

  @override
  void initState() {
    super.initState();
    latestDate = _datetimeBloc.state.dates.first.date;
    latestStartHmTime = _datetimeBloc.state.timestamps.first.time;
    latestEndHmTime = _datetimeBloc.state.timestamps
        .lastWhere((time) => time.date == latestDate)
        .time;
    _onFetchHeatmapInDay(latestDate, latestStartHmTime, latestEndHmTime);
  }

  @override
  void dispose() {
    super.dispose();
    // heatmapTimer!.cancel();
  }

  // void _onFetchHeatmap(String date) {
  //   _heatmapBloc.add(FetchHeatmapEvent(query: FetchHeatmapQuery(date: date)));
  // }

  void _onFetchHeatmapInDay(String date, String timeFrom, String timeTo) {
    _heatmapBloc.add(FetchHeatmapInDayEvent(
        query: FetchHeatmapInDayQuery(
            date: date, timeFrom: timeFrom, timeTo: timeTo)));
  }

  void _onDateHmChange(String? value) {
    setState(() {
      _selectedDayHeatmap = value;
      _startTimeHeatmap = _datetimeBloc.state.timestamps
          .firstWhere((time) => time.date == _selectedDayHeatmap)
          .time;

      _endTimeHeatmap = _datetimeBloc.state.timestamps
          .lastWhere((time) => time.date == _selectedDayHeatmap)
          .time;
    });
  }

  void _submitFormHeatmap() {
    if (_formKeyHeatmap.currentState!.validate()) {
      _selectedDayHeatmap == null
          ? setState(() {
              _selectedDayHeatmap = _datetimeBloc.state.dates.first.date;
            })
          : null;
      _onFetchHeatmapInDay(_selectedDayHeatmap ?? "", _startTimeHeatmap ?? "",
          _endTimeHeatmap ?? "");
      setState(() {
        isProcessing = false;
        isStarted = false;
        currentIndex = 0;
        _heatmaps.clear();
        currentTime = _datetimeBloc.state.timestamps
            .firstWhere((date) => date.date == _selectedDayHeatmap)
            .time;
      });
    } else {
      debugPrint('Form is not valid');
    }
  }

  List<WeightedLatLng> _createPoints(List data, String vehicle) {
    num Function(dynamic camera) getValue;
    switch (vehicle) {
      case "All vehicles":
        getValue = (camera) => camera.totalVehicles ?? 0;
        break;
      case "Tất cả phương tiện":
        getValue = (camera) => camera.totalVehicles ?? 0;
        break;
      case "Bicycle":
        getValue = (camera) => int.tryParse(camera.numberOfBicycle ?? "0") ?? 0;
        break;
      case "Motorcycle":
        getValue =
            (camera) => int.tryParse(camera.numberOfMotorcycle ?? "0") ?? 0;
        break;
      case "Car":
        getValue = (camera) => int.tryParse(camera.numberOfCar ?? "0") ?? 0;
        break;
      case "Van":
        getValue = (camera) => int.tryParse(camera.numberOfVan ?? "0") ?? 0;
        break;
      case "Truck":
        getValue = (camera) => int.tryParse(camera.numberOfTruck ?? "0") ?? 0;
        break;
      case "Bus":
        getValue = (camera) => int.tryParse(camera.numberOfBus ?? "0") ?? 0;
        break;
      case "Fire truck":
        getValue =
            (camera) => int.tryParse(camera.numberOfFireTruck ?? "0") ?? 0;
        break;
      case "Container":
        getValue =
            (camera) => int.tryParse(camera.numberOfContainer ?? "0") ?? 0;
        break;
      default:
        throw Error();
    }

    final values = data.map(getValue).toList();
    final min = values.reduce((a, b) => a < b ? a : b);
    final max = values.reduce((a, b) => a > b ? a : b);

    final denominator = (max - min) == 0 ? 1 : (max - min);

    return data
        .where((camera) => camera.loc != null)
        .map(
          (camera) => WeightedLatLng(
            LatLng(camera.loc!.coordinates![1], camera.loc!.coordinates![0]),
            weight: ((getValue(camera) - min) / denominator),
          ),
        )
        .toList();
  }

  void startHeatmapAnimation() {
    _heatmaps.clear();
    heatmapTimer?.cancel();
    currentIndex = 0;
    setState(() {
      isProcessing = true;
      isStarted = true;
      currentTime = heatmapData.first.time ?? "";
    });

    final totalFrames = heatmapData.length;

    if (totalFrames <= 1) {
      setState(() {
        isProcessing = false;
        isStarted = false;
      });
      heatmapTimer?.cancel();
      return;
    }

    heatmapTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      currentIndex++;
      final currentTimestamp = heatmapData[currentIndex];
      if (!isProcessing) {
        setState(() {
          isProcessing = false;

          currentIndex--;
        });
        return;
      }

      setState(() {
        currentTime = currentTimestamp.time ?? "";
        currentData = _createPoints(currentTimestamp.data ?? [],
            _selectedVehicle ?? tr('Common.all_vehicles'));
      });
      if (currentIndex == totalFrames - 1) {
        setState(() {
          isProcessing = false;
          isStarted = false;
        });
        heatmapTimer?.cancel();
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    _heatmaps.add(Heatmap(
      heatmapId: HeatmapId('traffic_heatmap'),
      data: currentData,
      radius: HeatmapRadius.fromPixels(20),
      gradient: const HeatmapGradient(
        <HeatmapGradientColor>[
          HeatmapGradientColor(Color(0xFF00FF00), 0.2),
          HeatmapGradientColor(Color(0xFFADFF2F), 0.4),
          HeatmapGradientColor(Color(0xFFFFFF00), 0.6),
          HeatmapGradientColor(Color(0xFFFFA500), 0.8),
          HeatmapGradientColor(Color(0xFFFF0000), 1.0),
        ],
      ),
    ));
    return BlocBuilder<HeatmapBloc, HeatmapState>(
        builder: (context, heatmapState) {
      if (heatmapState.resultHeatmapInDay.date == null ||
          heatmapState.apiStatus == ApiStatus.loading) {
        return Center(
            child: SizedBox(
                height: AppSpacing.rem3875.h,
                child: Center(child: CircularProgressIndicator())));
      }
      heatmapData = _heatmapBloc.state.resultHeatmapInDay.details ?? [];
      currentData = _createPoints(heatmapData.first.data ?? [],
          _selectedVehicle ?? tr('Common.all_vehicles'));

      return Column(
        spacing: AppSpacing.rem600.h,
        children: [
          CommonHeading(
            heading: tr('Common.heatmap_overview'),
            subheading: tr('Common.visualize'),
            headingStyle: TextStyle(
                fontSize: AppFontSize.xlg,
                fontWeight: AppFontWeight.bold,
                color: colors.primary),
          ),
          Form(
            key: _formKeyHeatmap,
            child: IgnorePointer(
              ignoring: isProcessing,
              child: Row(
                spacing: AppSpacing.rem600.w,
                children: [
                  Expanded(
                    child: SimpleDropdown(
                        value: _selectedDayHeatmap ?? latestDate,
                        itemsList: _datetimeBloc.state.dates.map((option) {
                          return DropdownMenuItem<String>(
                            value: option.date,
                            child: Text(option.date),
                          );
                        }).toList(),
                        onChanged: _onDateHmChange),
                  ),
                  Expanded(
                      child: SimpleDropdown(
                    value: _startTimeHeatmap ?? latestStartHmTime,
                    itemsList: _datetimeBloc.state.timestamps
                        .where((option) =>
                            option.date == (_selectedDayHeatmap ?? latestDate))
                        .map((option) => DropdownMenuItem<String>(
                              value: option.time,
                              child: Text(option.time),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _startTimeHeatmap = value;
                      });
                    },
                    validator: (value) => TimeValidators.validateStart(
                      value,
                      _endTimeHeatmap,
                      tr: tr,
                    ),
                  )),
                  CommonText(
                    tr('Common.to'),
                    style: TextStyle(
                        fontSize: AppFontSize.xxl,
                        fontWeight: AppFontWeight.semiBold),
                  ),
                  Expanded(
                    child: SimpleDropdown(
                      validator: (value) => TimeValidators.validateEnd(
                        _startTimeHeatmap,
                        value,
                        tr: tr,
                      ),
                      value: _endTimeHeatmap ?? latestEndHmTime,
                      itemsList: _datetimeBloc.state.timestamps
                          .where((option) =>
                              option.date ==
                              (_selectedDayHeatmap ?? latestDate))
                          .map((option) => DropdownMenuItem<String>(
                                value: option.time,
                                child: Text(option.time),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _endTimeHeatmap = value;
                        });
                      },
                    ),
                  ),
                  CommonPrimaryButton(
                    text: tr('Common.ok'),
                    onPressed: _submitFormHeatmap,
                  )
                ],
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              text: tr('Common.heatmap_on'),
              style:
                  TextStyle(fontSize: AppFontSize.md, color: colors.textMuted),
              children: [
                TextSpan(
                    text:
                        " ${_heatmapBloc.state.resultHeatmapInDay.date ?? latestDate}, ",
                    style: TextStyle(
                      fontSize: AppFontSize.md,
                      color: colors.primary,
                      fontWeight: AppFontWeight.semiBold,
                    )),
                TextSpan(
                    text: _heatmapBloc.state.resultHeatmapInDay.timeFrom ??
                        latestStartHmTime,
                    style: TextStyle(
                      fontSize: AppFontSize.md,
                      color: colors.primary,
                      fontWeight: AppFontWeight.semiBold,
                    )),
                TextSpan(
                  text: " ${tr('Common.to')} ",
                  style: TextStyle(
                      fontSize: AppFontSize.md, color: colors.textMuted),
                ),
                TextSpan(
                    text:
                        "${_heatmapBloc.state.resultHeatmapInDay.timeTo ?? latestEndHmTime}. ",
                    style: TextStyle(
                      fontSize: AppFontSize.md,
                      color: colors.primary,
                      fontWeight: AppFontWeight.semiBold,
                    )),
                TextSpan(
                  text: "${tr('Common.vehicle')}: ",
                  style: TextStyle(
                      fontSize: AppFontSize.md, color: colors.textMuted),
                ),
                TextSpan(
                    text: _selectedVehicle ?? tr("Common.all_vehicles"),
                    style: TextStyle(
                      fontSize: AppFontSize.md,
                      color: colors.primary,
                      fontWeight: AppFontWeight.semiBold,
                    )),
              ],
            ),
          ),
          isProcessing
              ? CommonText(
                  "Heatmap is playing. Please stop the animation to make changes!",
                  style: TextStyle(
                      fontSize: AppFontSize.sm, color: colors.textMuted),
                )
              : SizedBox(),
          Row(
            spacing: AppSpacing.rem600.w,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              currentTime != ""
                  ? CommonText(
                      currentTime,
                      style: TextStyle(
                          fontWeight: AppFontWeight.semiBold,
                          color: colors.textMuted),
                    )
                  : SizedBox(),
              !isStarted
                  ? CommonPrimaryButton(
                      text: tr('Common.start'),
                      onPressed: startHeatmapAnimation)
                  : isProcessing
                      ? CommonSecondaryButton(
                          text: tr('Common.stop'),
                          onPressed: () => setState(() {
                            isProcessing = false;
                          }),
                        )
                      : CommonPrimaryButton(
                          text: tr('Common.continue'),
                          onPressed: () => setState(() {
                                isProcessing = true;
                              })),
              CommonSecondaryButton(
                text: tr('Common.reset'),
                onPressed: () => setState(() {
                  currentData = _createPoints(heatmapData.first.data ?? [],
                      _selectedVehicle ?? tr('Common.all_vehicles'));
                  currentTime = heatmapData.first.time ?? "";
                  currentIndex = 0;
                  _heatmaps.clear();
                  isStarted = false;
                }),
              ),
              IgnorePointer(
                ignoring: isProcessing,
                child: SizedBox(
                  width: AppSpacing.rem4150.w,
                  child: SimpleDropdown(
                      value: _selectedVehicle ?? tr('Common.all_vehicles'),
                      itemsList: [
                        DropdownMenuItem<String>(
                          value: tr('Common.all_vehicles'),
                          child: Text(tr('Common.all_vehicles')),
                        ),
                        ..._cameraBloc.state.vehicles.map((option) {
                          return DropdownMenuItem<String>(
                            value: option,
                            child: Text(option),
                          );
                        })
                      ],
                      onChanged: (value) => setState(() {
                            _selectedVehicle = value;
                          })),
                ),
              ),
            ],
          ),
          heatmapData.length > 1
              ? IgnorePointer(
                  ignoring: isProcessing,
                  child: Slider(
                    label: heatmapData[currentIndex].time ?? "",
                    value: currentIndex.toDouble(),
                    min: 0,
                    max: (heatmapData.length - 1).toDouble(),
                    divisions: heatmapData.length - 1,
                    onChanged: (value) {
                      setState(() {
                        currentIndex = value.toInt();
                        currentTime = heatmapData[currentIndex].time ?? "";
                        _heatmaps.clear();
                      });
                    },
                  ),
                )
              : SizedBox(),
          Container(
            height: AppSpacing.rem8975.h,
            width: double.infinity,
            color: colors.primaryBannerBg,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(10.7769, 106.7009),
                zoom: 12,
              ),
              heatmaps: _heatmaps,
              onMapCreated: (GoogleMapController controller) {
                if (!_controller.isCompleted) {
                  _controller.complete(controller);
                }
              },
            ),
          ),
        ],
      );
    });
  }
}
