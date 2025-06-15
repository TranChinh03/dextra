import 'dart:typed_data';

import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_camera/statistic_by_camera_querry.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_custom/statistic_by_custom_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_date/statistic_by_date_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_district/statistic_by_district_query.dart';
import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
import 'package:dextra/presentation/modules/commons/bloc/datetime/datetime_bloc.dart';
import 'package:dextra/presentation/modules/commons/bloc/statistic/statistic_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_save_img_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/common_statistic_card.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/small_statistic_card.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_bar_chart.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_bar_chart_no_animation.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_line_chart.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_pie_chart.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_pie_chart_2.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simple_dropdown.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_heading.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/shareds/utils/app_utils.dart';
import 'package:dextra/shareds/utils/time_validators.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:screenshot/screenshot.dart';
import 'package:pdf/widgets.dart' as pw;

class ExportTab extends StatefulWidget {
  const ExportTab({super.key});

  @override
  State<ExportTab> createState() => _ExportTabState();
}

class _ExportTabState extends State<ExportTab> {
  final _formKey = GlobalKey<FormState>();
  final _formKeyDist = GlobalKey<FormState>();
  final _cameraBloc = getIt.get<CameraBloc>();
  final _datetimeBloc = getIt.get<DateTimeBloc>();
  final _statisticBloc = getIt.get<StatisticBloc>();

  String? _selectedCam;
  String? _startTime;
  String? _endTime;

  String? _selectedDistrict;
  String? _startTimeDist;
  String? _endTimeDist;
  String? _selectedDate;

  String latestDate = "";
  String latestStartTime = "";
  String latestEndTime = "";
  String firstDistrict = "";
  String firstCam = "";

  bool _isExporting = false;

  final ScreenshotController trackingCtrl = ScreenshotController();
  final ScreenshotController datePieCtrl = ScreenshotController();
  final ScreenshotController timeLineCtrl = ScreenshotController();
  final ScreenshotController timePieCtrl = ScreenshotController();
  final ScreenshotController regionLineCtrl = ScreenshotController();
  final ScreenshotController cameraBarCtrl = ScreenshotController();
  final ScreenshotController cameraPieCtrl = ScreenshotController();
  @override
  void initState() {
    super.initState();
    _onFetchDistrict();
    _onFetchTimestamp();
    _onFetchDate();
    _onFetchCamera();
    _onFetchVehicle();
    _onTrackingByDate();
  }

  String findMaxMotorcycle(List<ResultDetail> dataList) {
    if (dataList.isEmpty) return "0";

    return dataList.map((e) => e.numberOfMotorcycle).reduce(
            (a, b) => int.parse(a ?? "0") > int.parse(b ?? "0") ? a : b) ??
        "";
  }

  void _onTrackingByDate() {
    if (_statisticBloc.state.trackingByDate.isNotEmpty) {
      return;
    }
    _statisticBloc.add(TrackingByDateEvent());
  }

  void _onFetchCamera() {
    if (_cameraBloc.state.cameras.isNotEmpty) {
      return;
    }
    _cameraBloc.add(FetchCamerasEvent());
  }

  void _onFetchDistrict() {
    if (_cameraBloc.state.districts.isNotEmpty) return;
    _cameraBloc.add(FetchDistrictsEvent());
  }

  void _onFetchVehicle() {
    if (_cameraBloc.state.vehicles.isNotEmpty) return;
    _cameraBloc.add(FetchVehiclesEvent());
  }

  void _onFetchTimestamp() {
    if (_datetimeBloc.state.timestamps.isNotEmpty) return;
    _datetimeBloc.add(FetchTimestampEvent());
  }

  void _onFetchDate() {
    if (_datetimeBloc.state.timestamps.isNotEmpty) return;
    _datetimeBloc.add(FetchDateEvent());
  }

  void _onFetchCustom() {
    _startTime ??= _datetimeBloc.state.timestamps
        .firstWhere(
          (item) => item.date == _datetimeBloc.state.dates.last.date,
        )
        .time;
    _endTime ??= _datetimeBloc.state.timestamps
        .lastWhere(
          (item) => item.date == _datetimeBloc.state.dates.last.date,
        )
        .time;
    ;
    _statisticBloc.add(
      DetectByCustomEvent(
        query: DetectByCustomQuery(
          date: _selectedDate ?? _datetimeBloc.state.dates.last.date,
          timeFrom: _startTime,
          timeTo: _endTime,
        ),
      ),
    );
  }

  void _onFetchByDist(String district, date, timeFrom, timeTo) {
    _statisticBloc.add(
      DetectByDistrictEvent(
        query: DetectByDistrictQuery(
          district: district,
          date: date,
          timeFrom: timeFrom,
          timeTo: timeTo,
        ),
      ),
    );
  }

  void _onFetchByCam() {
    _statisticBloc.add(DetectByCameratEvent(
        query: DetectByCameraQuery(
            camera: _selectedCam ?? _cameraBloc.state.cameras.last.privateId)));
  }

  void _onDateChanged(String? value) {
    if (value != null) {
      setState(() {
        _selectedDate = value;
        _startTime = _startTimeDist = _datetimeBloc.state.timestamps
            .firstWhere(
              (item) => item.date == value,
            )
            .time;

        _endTime = _endTimeDist = _datetimeBloc.state.timestamps
            .lastWhere(
              (item) => item.date == value,
            )
            .time;
      });
      _statisticBloc.add(
          DetectByDateEvent(query: DetectByDateQuery(date: _selectedDate)));
      _statisticBloc.add(DetectByCustomEvent(
          query: DetectByCustomQuery(
              date: _selectedDate, timeFrom: _startTime, timeTo: _endTime)));
      _onFetchByDist(_selectedDistrict ?? _cameraBloc.state.districts.first,
          _selectedDate, _startTimeDist, _endTimeDist);
    }
  }

  DateTime _parseTime(String timeString) {
    return DateFormat("HH:mm:ss").parse(timeString);
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _onFetchCustom();
    } else {
      // print('Form is not valid');
    }
  }

  void _submitFormDist(String district, date, timeFrom, timeTo) {
    // print(timeTo);
    if (_formKeyDist.currentState!.validate()) {
      _onFetchByDist(district, date, timeFrom, timeTo);
    } else {
      // print('Form is not valid');
    }
  }

  Future<void> generatePdfWithChart() async {
    setState(() => _isExporting = true);
    final results = await Future.wait([
      trackingCtrl.capture(),
      datePieCtrl.capture(),
      timeLineCtrl.capture(),
      timePieCtrl.capture(),
      regionLineCtrl.capture(),
      cameraBarCtrl.capture(),
      cameraPieCtrl.capture(),
    ]);

    final Uint8List? trackingImageBytes = results[0];
    final Uint8List? datePieImageBytes = results[1];
    final Uint8List? timeLineImageBytes = results[2];
    final Uint8List? timePieImageBytes = results[3];
    final Uint8List? regionImageBytes = results[4];
    final Uint8List? cameraBarImageBytes = results[5];
    final Uint8List? cameraPieImageBytes = results[6];

    final trackingData = _statisticBloc.state.trackingByDate;
    // final statByDateData = _statisticBloc.state.resultByDate;
    final statByTimeData = _statisticBloc.state.resultByCustom.district == null
        ? _statisticBloc.state.resultByDate
        : _statisticBloc.state.resultByCustom;
    final statByRegionData = _statisticBloc.state.resultByDistrict;
    final statByCamData = _statisticBloc.state.resultByCamera;

    // Check if any screenshot failed
    if (results.any((bytes) => bytes == null)) {
      return;
    }
    var titleFont =
        await rootBundle.load("assets/fonts/inter/Inter-ExtraBold.ttf");
    var headingFont =
        await rootBundle.load("assets/fonts/inter/Inter-Bold.ttf");
    var subHeadingFont =
        await rootBundle.load("assets/fonts/inter/Inter-Bold.ttf");
    var bodyFont =
        await rootBundle.load("assets/fonts/inter/Inter-Regular.ttf");
    final pdf = pw.Document();

    final date = _selectedDate ?? latestDate;
    final startTime = _startTime ?? latestStartTime;
    final endTime = _endTime ?? latestEndTime;
    final district = _selectedDistrict ?? firstDistrict;
    final startTimeDist = _startTimeDist ?? startTime;
    final endTimeDist = _endTimeDist ?? endTime;
    final camera = _selectedCam != null
        ? _cameraBloc.state.cameras
            .firstWhere((item) => item.privateId == _selectedCam)
            .name
        : _cameraBloc.state.cameras.first.name;

    final titleStyle = pw.TextStyle(
        fontSize: AppFontSize.xxxl,
        font: pw.Font.ttf(titleFont),
        color: PdfColor(117 / 255, 181 / 255, 251 / 255, 1));
    final headingStyle = pw.TextStyle(
        fontSize: AppFontSize.xxxl,
        font: pw.Font.ttf(headingFont),
        color: PdfColor(40 / 255, 40 / 255, 40 / 255));
    final subHeadingStyle = pw.TextStyle(
        fontSize: AppFontSize.xl,
        font: pw.Font.ttf(subHeadingFont),
        color: PdfColor(60 / 255, 60 / 255, 60 / 255));

    pdf.addPage(
      pw.MultiPage(
          maxPages: 100,
          build: (pw.Context context) => [
                pw.Text("Full Traffic Report", style: titleStyle),
                pw.SizedBox(height: AppSpacing.rem1000.h),
                pw.Text("Overview", style: headingStyle),
                pw.Text("Statistics in Ho Chi Minh City",
                    style: subHeadingStyle),
                pw.SizedBox(height: AppSpacing.rem500.h),
                pw.Image(pw.MemoryImage(trackingImageBytes!)),
                pw.SizedBox(height: AppSpacing.rem500.h),
                pw.TableHelper.fromTextArray(
                  context: context,
                  data: [
                    [
                      'Date',
                      'Bicycles',
                      'Motorcycles',
                      'Cars',
                      'Vans',
                      'Trucks',
                      'Buses',
                      'Fire Trucks',
                      'Containers'
                    ],
                    ...trackingData.map((e) => [
                          e.date ?? '',
                          e.numberOfBicycle ?? '',
                          e.numberOfMotorcycle ?? '',
                          e.numberOfCar ?? '',
                          e.numberOfVan ?? '',
                          e.numberOfTruck ?? '',
                          e.numberOfBus ?? '',
                          e.numberOfFireTruck ?? '',
                          e.numberOfContainer ?? '',
                        ]),
                  ],
                ),
                pw.SizedBox(height: AppSpacing.rem1000.h),
                pw.Text("Statistic", style: headingStyle),
                pw.Text("Statistics in Ho Chi Minh City on $date",
                    style: subHeadingStyle),
                pw.SizedBox(height: AppSpacing.rem500.h),
                pw.Image(pw.MemoryImage(datePieImageBytes!)),
                pw.SizedBox(height: AppSpacing.rem1000.h),
                pw.Text(
                    "Statistics in Ho Chi Minh City on $date, from $startTime to $endTime",
                    style: subHeadingStyle),
                pw.SizedBox(height: AppSpacing.rem500.h),
                pw.Image(pw.MemoryImage(timeLineImageBytes!)),
                pw.SizedBox(height: AppSpacing.rem500.h),
                pw.Text("Statistics in Ho Chi Minh City on $date",
                    style: subHeadingStyle),
                pw.SizedBox(height: AppSpacing.rem500.h),
                pw.TableHelper.fromTextArray(context: context, data: [
                  [
                    'Time',
                    'Bicycles',
                    'Motorcycles',
                    'Cars',
                    'Vans',
                    'Trucks',
                    'Buses',
                    'Fire Trucks',
                    'Containers'
                  ],
                  ...statByTimeData.details!.map((e) => [
                        e.time ?? '',
                        e.numberOfBicycle ?? '',
                        e.numberOfMotorcycle ?? '',
                        e.numberOfCar ?? '',
                        e.numberOfVan ?? '',
                        e.numberOfTruck ?? '',
                        e.numberOfBus ?? '',
                        e.numberOfFireTruck ?? '',
                        e.numberOfContainer ?? '',
                      ]),
                ]),
                pw.SizedBox(height: AppSpacing.rem500.h),
                pw.Image(pw.MemoryImage(timePieImageBytes!)),
                pw.SizedBox(height: AppSpacing.rem600.h),
                pw.TableHelper.fromTextArray(
                  context: context,
                  data: [
                    ['Total', statByTimeData.totalVehicles],
                    ['Bicycles', statByTimeData.numberOfBicycle],
                    ['Motorcycles', statByTimeData.numberOfMotorcycle],
                    ['Cars', statByTimeData.numberOfCar],
                    ['Vans', statByTimeData.numberOfVan],
                    ['Trucks', statByTimeData.numberOfTruck],
                    ['Buses', statByTimeData.numberOfBus],
                    ['Fire Trucks', statByTimeData.numberOfFireTruck],
                    ['Containers', statByTimeData.numberOfContainer]
                  ],
                ),
                pw.SizedBox(height: AppSpacing.rem1000.h),
                pw.Text("Statistic", style: headingStyle),
                pw.Text(
                    "Statistics in $district, on $date, from $startTimeDist to $endTimeDist",
                    style: subHeadingStyle),
                pw.SizedBox(height: AppSpacing.rem500.h),
                pw.Image(pw.MemoryImage(regionImageBytes!)),
                pw.SizedBox(height: AppSpacing.rem500.h),
                pw.TableHelper.fromTextArray(
                  context: context,
                  data: [
                    [
                      'Time',
                      'Bicycles',
                      'Motorcycles',
                      'Cars',
                      'Vans',
                      'Trucks',
                      'Buses',
                      'Fire Trucks',
                      'Containers',
                    ],
                    ...statByRegionData.details!.map((e) => [
                          e.time ?? '',
                          e.numberOfBicycle ?? '',
                          e.numberOfMotorcycle ?? '',
                          e.numberOfCar ?? '',
                          e.numberOfVan ?? '',
                          e.numberOfTruck ?? '',
                          e.numberOfBus ?? '',
                          e.numberOfFireTruck ?? '',
                          e.numberOfContainer ?? '',
                        ]),
                  ],
                ),
                pw.SizedBox(height: AppSpacing.rem500.h),
                pw.TableHelper.fromTextArray(
                  context: context,
                  data: [
                    ['Total', statByRegionData.totalVehicles],
                    ['Bicycles', statByRegionData.numberOfBicycle],
                    ['Motorcycles', statByRegionData.numberOfMotorcycle],
                    ['Cars', statByRegionData.numberOfCar],
                    ['Vans', statByRegionData.numberOfVan],
                    ['Trucks', statByRegionData.numberOfTruck],
                    ['Buses', statByRegionData.numberOfBus],
                    ['Fire Trucks', statByRegionData.numberOfFireTruck],
                    ['Containers', statByRegionData.numberOfContainer]
                  ],
                ),
                pw.SizedBox(height: AppSpacing.rem1000.h),
                pw.Text("Statistic", style: headingStyle),
                pw.Text("Statistics by Camera $camera", style: subHeadingStyle),
                pw.SizedBox(height: AppSpacing.rem500.h),
                pw.Image(pw.MemoryImage(cameraBarImageBytes!)),
                pw.SizedBox(height: AppSpacing.rem500.h),
                pw.Image(pw.MemoryImage(cameraPieImageBytes!)),
                pw.SizedBox(height: AppSpacing.rem500.h),
                pw.TableHelper.fromTextArray(context: context, data: [
                  [
                    'Date',
                    'Bicycles',
                    'Motorcycles',
                    'Cars',
                    'Vans',
                    'Trucks',
                    'Buses',
                    'Fire Trucks',
                    'Containers',
                  ],
                  ...statByCamData.details!.map((e) => [
                        e.date ?? '',
                        e.numberOfBicycle ?? '',
                        e.numberOfMotorcycle ?? '',
                        e.numberOfCar ?? '',
                        e.numberOfVan ?? '',
                        e.numberOfTruck ?? '',
                        e.numberOfBus ?? '',
                        e.numberOfFireTruck ?? '',
                        e.numberOfContainer ?? '',
                      ]),
                ]),
                pw.SizedBox(height: AppSpacing.rem500.h),
                pw.TableHelper.fromTextArray(
                  context: context,
                  data: [
                    ['Total', statByCamData.totalVehicles],
                    ['Bicycles', statByCamData.numberOfBicycle],
                    ['Motorcycles', statByCamData.numberOfMotorcycle],
                    ['Cars', statByCamData.numberOfCar],
                    ['Vans', statByCamData.numberOfVan],
                    ['Trucks', statByCamData.numberOfTruck],
                    ['Buses', statByCamData.numberOfBus],
                    ['Fire Trucks', statByCamData.numberOfFireTruck],
                    ['Containers', statByCamData.numberOfContainer]
                  ],
                ),
              ]),
    );

    await Printing.sharePdf(
        bytes: await pdf.save(), filename: 'full_report.pdf');
    setState(() => _isExporting = false);
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return BlocBuilder<CameraBloc, CameraState>(
      builder: (context, cameraState) {
        return BlocBuilder<DateTimeBloc, DateTimeState>(
            builder: (context, dateState) {
          final hasDateData =
              dateState.dates.isNotEmpty && dateState.timestamps.isNotEmpty;
          final hasCameraData = cameraState.districts.isNotEmpty &&
              cameraState.cameras.isNotEmpty &&
              cameraState.vehicles.isNotEmpty;

          if (hasDateData && hasCameraData) {
            latestDate = dateState.dates.last.date;
            latestStartTime = dateState.timestamps.first.time;
            latestEndTime = dateState.timestamps
                .lastWhere(
                  (item) => item.date == latestDate,
                )
                .time;
            firstDistrict = cameraState.districts.first;
            firstCam = cameraState.cameras.first.privateId ?? "";
            if (_selectedDate == null &&
                _statisticBloc.state.resultByDate.date == null) {
              //Fetch by date
              _statisticBloc.add(
                DetectByDateEvent(
                  query: DetectByDateQuery(date: latestDate),
                ),
              );
              //Fetch by District
              _onFetchByDist(
                  firstDistrict, latestDate, latestStartTime, latestEndTime);
              _onFetchByCam();
            }
          }

          return BlocBuilder<StatisticBloc, StatisticState>(
              builder: (context, statisticState) {
            final hasStatisticData = statisticState.resultByDate.date != null &&
                statisticState.resultByDistrict.date != null &&
                statisticState.resultByCamera.details!.isNotEmpty;
            if (!hasDateData || !hasCameraData || !hasStatisticData) {
              return const Center(child: CircularProgressIndicator());
            }

            return Column(spacing: AppSpacing.rem1000.h, children: [
              CommonHeading(
                heading: tr('Common.overview'),
                subheading: tr('Common.statistic_hcm'),
                headingStyle: TextStyle(
                    fontSize: AppFontSize.xlg,
                    fontWeight: AppFontWeight.bold,
                    color: colors.primary),
              ),
              Stack(
                children: [
                  Screenshot(
                    controller: trackingCtrl,
                    child: Container(
                      color: colors.white,
                      child: StatisticBarChart(
                          data: _statisticBloc.state.trackingByDate,
                          maxY: double.parse(findMaxMotorcycle(
                              _statisticBloc.state.trackingByDate)),
                          intervalY: 50000),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: CommonSaveImgButton(
                      onPressed: () {
                        AppUtils.downloadWidgetAsImage(
                          controller: trackingCtrl,
                          filename: "tracking_by_day.png",
                        );
                      },
                    ),
                  ),
                ],
              ),
              CommonHeading(
                heading: tr('Common.statistic'),
                subheading: tr('Common.statistic_by_date'),
                headingStyle: TextStyle(
                    fontSize: AppFontSize.xlg,
                    fontWeight: AppFontWeight.bold,
                    color: colors.primary),
              ),
              Column(
                children: [
                  Row(
                    spacing: AppSpacing.rem600.w,
                    children: [
                      CommonText(
                        tr('Common.date'),
                        style: TextStyle(
                            fontSize: AppFontSize.xxxl,
                            fontWeight: AppFontWeight.semiBold),
                      ),
                      SizedBox(
                        width: AppSpacing.rem4150.w,
                        child: SimpleDropdown(
                            value: _selectedDate ?? latestDate,
                            itemsList: _datetimeBloc.state.dates.map((option) {
                              return DropdownMenuItem<String>(
                                value: option.date,
                                child: Text(option.date),
                              );
                            }).toList(),
                            onChanged: _onDateChanged),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "${tr('Common.total_vehicle')}: ",
                          style: TextStyle(
                            fontSize: AppFontSize.xxxl,
                            fontWeight: AppFontWeight.semiBold,
                          ),
                          children: [
                            TextSpan(
                                text: _statisticBloc
                                    .state.resultByDate.totalVehicles
                                    .toString(),
                                style: TextStyle(
                                  fontSize: AppFontSize.xxxl,
                                  color: colors.primary,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Screenshot(
                        controller: datePieCtrl,
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(
                              vertical: AppSpacing.rem600.h),
                          child: StatisticPieChart(
                            detectResult: _statisticBloc.state.resultByDate,
                            showTitle: true,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: CommonSaveImgButton(
                          onPressed: () {
                            AppUtils.downloadWidgetAsImage(
                              controller: datePieCtrl,
                              filename: "stat_by_date.png",
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Form(
                key: _formKey,
                child: Column(
                  spacing: AppSpacing.rem300.h,
                  children: [
                    Row(
                      spacing: AppSpacing.rem600,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonText(
                          tr('Common.time_range'),
                          style: TextStyle(
                              fontSize: AppFontSize.xxxl,
                              fontWeight: AppFontWeight.semiBold),
                        ),
                        Expanded(
                            child: SimpleDropdown(
                          value: _startTime ?? latestStartTime,
                          itemsList: _datetimeBloc.state.timestamps
                              .where((option) =>
                                  option.date == (_selectedDate ?? latestDate))
                              .map((option) => DropdownMenuItem<String>(
                                    value: option.time,
                                    child: Text(option.time),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              _startTime = value;
                            });
                          },
                          validator: (value) => TimeValidators.validateStart(
                            value,
                            _endTime,
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
                              _startTime,
                              value,
                              tr: tr,
                            ),
                            value: _endTime ?? latestEndTime,
                            itemsList: _datetimeBloc.state.timestamps
                                .where((option) =>
                                    option.date ==
                                    (_selectedDate ?? latestDate))
                                .map((option) => DropdownMenuItem<String>(
                                      value: option.time,
                                      child: Text(option.time),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                _endTime = value;
                              });
                            },
                          ),
                        ),
                        CommonPrimaryButton(
                          text: tr('Common.ok'),
                          onPressed: _submitForm,
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Screenshot(
                          controller: timeLineCtrl,
                          child: Container(
                            color: colors.white,
                            padding: EdgeInsets.symmetric(
                                vertical: AppSpacing.rem600.h),
                            child: StatisticLineChart(
                              maxY: double.parse(findMaxMotorcycle(
                                  _statisticBloc.state.resultByCustom.details ??
                                      _statisticBloc
                                          .state.resultByDate.details ??
                                      [])),
                              intervalY: (double.parse(findMaxMotorcycle(
                                          _statisticBloc.state.resultByCustom
                                                  .details ??
                                              _statisticBloc
                                                  .state.resultByDate.details ??
                                              [])) /
                                      12)
                                  .toPrecision(0),
                              datas: _statisticBloc
                                      .state.resultByCustom.details ??
                                  _statisticBloc.state.resultByDate.details ??
                                  [],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: CommonSaveImgButton(
                            onPressed: () {
                              AppUtils.downloadWidgetAsImage(
                                controller: timeLineCtrl,
                                filename: "stat_by_time(line).png",
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(children: [
                      SizedBox(
                        width: AppSpacing.rem5000.w,
                        child: CommonStatisticCard(
                          label: tr('Common.vehicles_count_label'),
                          value: _statisticBloc
                                      .state.resultByCustom.totalVehicles !=
                                  null
                              ? _statisticBloc
                                  .state.resultByCustom.totalVehicles
                                  .toString()
                              : _statisticBloc.state.resultByDate.totalVehicles
                                  .toString(),
                          info:
                              "${tr('Common.motorcycles')}: ${_statisticBloc.state.resultByCustom.numberOfMotorcycle ?? _statisticBloc.state.resultByDate.numberOfMotorcycle}",
                          textColor: colors.buttonPrimaryBackground,
                        ),
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          Screenshot(
                            controller: timePieCtrl,
                            child: StatisticPieChart(
                              radius: 150,
                              showTitle: false,
                              detectResult:
                                  _statisticBloc.state.resultByCustom.date ==
                                          null
                                      ? _statisticBloc.state.resultByDate
                                      : _statisticBloc.state.resultByCustom,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: CommonSaveImgButton(
                              onPressed: () {
                                AppUtils.downloadWidgetAsImage(
                                  controller: timePieCtrl,
                                  filename: "stat_by_time(pie).png",
                                );
                              },
                            ),
                          ),
                        ],
                      ))
                    ])
                  ],
                ),
              ),
              Divider(
                color: colors.dividerColor,
              ),
              CommonHeading(
                padding: EdgeInsets.symmetric(
                  vertical: AppSpacing.rem100.h,
                  horizontal: AppSpacing.rem100.w,
                ),
                heading: tr('Common.statistic'),
                subheading: tr('Common.statistic_by_region'),
                headingStyle: TextStyle(
                    fontSize: AppFontSize.xlg,
                    fontWeight: AppFontWeight.bold,
                    color: colors.primary),
              ),
              Column(
                spacing: AppSpacing.rem600.h,
                children: [
                  Row(
                    spacing: AppSpacing.rem600.w,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonText(
                        tr('Common.region'),
                        style: TextStyle(
                            fontSize: AppFontSize.xxxl,
                            fontWeight: AppFontWeight.semiBold),
                      ),
                      SizedBox(
                        width: AppSpacing.rem4150.w,
                        child: SimpleDropdown(
                          value: _selectedDistrict ?? firstDistrict,
                          itemsList: _cameraBloc.state.districts.map((option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _selectedDistrict = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Form(
                    key: _formKeyDist,
                    child: Row(
                      spacing: AppSpacing.rem600.w,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonText(
                          "${tr('Common.time')}: ${_selectedDate ?? latestDate}",
                          style: TextStyle(
                              fontSize: AppFontSize.xxxl,
                              fontWeight: AppFontWeight.semiBold),
                        ),
                        CommonText(
                          tr('Common.time_range'),
                          style: TextStyle(
                              fontSize: AppFontSize.xxxl,
                              fontWeight: AppFontWeight.semiBold),
                        ),
                        Expanded(
                            child: SimpleDropdown(
                          value: _startTimeDist ?? latestStartTime,
                          itemsList: _datetimeBloc.state.timestamps
                              .where((option) =>
                                  option.date == (_selectedDate ?? latestDate))
                              .map((option) => DropdownMenuItem<String>(
                                    value: option.time,
                                    child: Text(option.time),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              _startTimeDist = value;
                            });
                          },
                          validator: (value) => TimeValidators.validateStart(
                            value,
                            _endTimeDist,
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
                              _startTimeDist,
                              value,
                              tr: tr,
                            ),
                            value: _endTimeDist ?? latestEndTime,
                            itemsList: _datetimeBloc.state.timestamps
                                .where((option) =>
                                    option.date ==
                                    (_selectedDate ?? latestDate))
                                .map((option) => DropdownMenuItem<String>(
                                      value: option.time,
                                      child: Text(option.time),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                _endTimeDist = value;
                              });
                            },
                          ),
                        ),
                        CommonPrimaryButton(
                          text: tr('Common.ok'),
                          onPressed: () => _submitFormDist(
                              _selectedDistrict ?? firstDistrict,
                              _selectedDate ?? latestDate,
                              _startTimeDist ?? latestStartTime,
                              _endTimeDist ?? latestEndTime),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SmallStatisticCard(
                          title: tr('Common.bicycles'),
                          value:
                              statisticState.resultByDistrict.numberOfBicycle,
                        ),
                      ),
                      Expanded(
                        child: SmallStatisticCard(
                          title: tr('Common.motorcycles'),
                          value: statisticState
                              .resultByDistrict.numberOfMotorcycle,
                        ),
                      ),
                      Expanded(
                        child: SmallStatisticCard(
                          title: tr('Common.cars'),
                          value: statisticState.resultByDistrict.numberOfCar
                              .toString(),
                        ),
                      ),
                      Expanded(
                        child: SmallStatisticCard(
                          title: tr('Common.vans'),
                          value: statisticState.resultByDistrict.numberOfVan
                              .toString(),
                        ),
                      ),
                      Expanded(
                        child: SmallStatisticCard(
                          title: tr('Common.trucks'),
                          value: statisticState.resultByDistrict.numberOfTruck
                              .toString(),
                        ),
                      ),
                      Expanded(
                        child: SmallStatisticCard(
                          title: tr('Common.buses'),
                          value: statisticState.resultByDistrict.numberOfBus
                              .toString(),
                        ),
                      ),
                      Expanded(
                        child: SmallStatisticCard(
                          title: tr('Common.fire_trucks'),
                          value: statisticState
                              .resultByDistrict.numberOfFireTruck
                              .toString(),
                        ),
                      ),
                      Expanded(
                        child: SmallStatisticCard(
                          title: tr('Common.containers'),
                          value: statisticState
                              .resultByDistrict.numberOfContainer
                              .toString(),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Screenshot(
                        controller: regionLineCtrl,
                        child: Container(
                          color: colors.white,
                          padding: EdgeInsets.symmetric(
                              vertical: AppSpacing.rem600.h),
                          child: StatisticLineChart(
                            maxY: double.parse(findMaxMotorcycle(
                                _statisticBloc.state.resultByDistrict.details ??
                                    [])),
                            intervalY: (double.parse(findMaxMotorcycle(
                                        _statisticBloc.state.resultByDistrict
                                                .details ??
                                            [])) /
                                    12)
                                .toPrecision(0),
                            datas:
                                _statisticBloc.state.resultByDistrict.details ??
                                    [],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: CommonSaveImgButton(
                          onPressed: () {
                            AppUtils.downloadWidgetAsImage(
                              controller: regionLineCtrl,
                              filename: "stat_by_region.png",
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(spacing: AppSpacing.rem300.h, children: [
                Row(
                  spacing: AppSpacing.rem600,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonText(
                      tr('Common.camera'),
                      style: TextStyle(
                          fontSize: AppFontSize.xxxl,
                          fontWeight: AppFontWeight.semiBold),
                    ),
                    Expanded(
                        child: SimpleDropdown(
                            value: _selectedCam ?? firstCam,
                            itemsList: _cameraBloc.state.cameras
                                .map((option) => DropdownMenuItem<String>(
                                      value: option.privateId,
                                      child: Text(option.name ?? ""),
                                    ))
                                .toList(),
                            onChanged: (value) => {
                                  setState(() {
                                    _selectedCam = value;
                                  }),
                                  _onFetchByCam()
                                })),
                  ],
                ),
                Stack(
                  children: [
                    Screenshot(
                      controller: cameraBarCtrl,
                      child: Container(
                        color: colors.white,
                        child: StatisticBarChartNoAnimation(
                          data: _statisticBloc.state.resultByCamera.details,
                          maxY: double.parse(findMaxMotorcycle(
                              _statisticBloc.state.resultByCamera.details ??
                                  [])),
                          intervalY: 50,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: CommonSaveImgButton(
                        onPressed: () {
                          AppUtils.downloadWidgetAsImage(
                            controller: cameraBarCtrl,
                            filename: "stat_by_cam(bar).png",
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Stack(
                      children: [
                        Screenshot(
                          controller: cameraPieCtrl,
                          child: StatisticPieChart2(
                            data: _statisticBloc.state.resultByCamera,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: CommonSaveImgButton(
                            onPressed: () {
                              AppUtils.downloadWidgetAsImage(
                                controller: cameraPieCtrl,
                                filename: "stat_by_cam(pie).png",
                              );
                            },
                          ),
                        ),
                      ],
                    )),
                    CommonStatisticCard(
                      label: _selectedCam != null
                          ? _cameraBloc.state.cameras
                              .firstWhere(
                                  (item) => item.privateId == _selectedCam)
                              .name
                          : _cameraBloc.state.cameras.first.name,
                      value: _statisticBloc.state.resultByCamera.totalVehicles
                          .toString(),
                      info:
                          "${tr('Common.max')}: ${_statisticBloc.state.resultByCamera.numberOfMotorcycle} motorcycles",
                      textColor: colors.buttonPrimaryBackground,
                    )
                  ],
                ),
              ]),
              _isExporting
                  ? Center(
                      child: CommonText("Exporting..."),
                    )
                  : CommonPrimaryButton(
                      text: "Download full report",
                      onPressed: () async {
                        await generatePdfWithChart();
                      }),
            ]);
          });
        });
      },
    );
  }
}
