import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_cam_custom/statistic_by_cam_custom_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_camera/statistic_by_camera_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_custom/statistic_by_custom_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_date/statistic_by_date_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_district/statistic_by_district_query.dart';
import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
import 'package:dextra/presentation/modules/commons/bloc/datetime/datetime_bloc.dart';
import 'package:dextra/presentation/modules/commons/bloc/statistic/statistic_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
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
  final _formKeyCam = GlobalKey<FormState>();
  final _cameraBloc = getIt.get<CameraBloc>();
  final _datetimeBloc = getIt.get<DateTimeBloc>();
  final _statisticBloc = getIt.get<StatisticBloc>();

  String? _startTime;
  String? _endTime;

  String? _selectedCam;
  String? _startTimeCam;
  String? _endTimeCam;

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
  final ScreenshotController cameraLineCtrl = ScreenshotController();
  @override
  void initState() {
    super.initState();
  }

  String findMax(List<ResultDetail> dataList) {
    if (dataList.isEmpty) return "0";
    final fields = [
      (ResultDetail e) => e.numberOfBicycle,
      (ResultDetail e) => e.numberOfMotorcycle,
      (ResultDetail e) => e.numberOfCar,
      (ResultDetail e) => e.numberOfVan,
      (ResultDetail e) => e.numberOfTruck,
      (ResultDetail e) => e.numberOfBus,
      (ResultDetail e) => e.numberOfFireTruck,
      (ResultDetail e) => e.numberOfContainer,
    ];

    int maxValue = 0;
    for (var field in fields) {
      final fieldMax = dataList
          .map((e) => int.tryParse(field(e) ?? "0") ?? 0)
          .fold<int>(0, (prev, curr) => curr > prev ? curr : prev);
      if (fieldMax > maxValue) maxValue = fieldMax;
    }
    return maxValue.toString();
  }

  void _onFetchCustom() {
    _statisticBloc.add(
      DetectByCustomEvent(
        query: DetectByCustomQuery(
          date: _selectedDate ?? latestDate,
          timeFrom: _startTime ?? latestStartTime,
          timeTo: _endTime ?? latestEndTime,
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
    _statisticBloc.add(DetectByCameraEvent(
        query: DetectByCameraQuery(camera: _selectedCam ?? firstCam)));
  }

  void _onFetchByCamCustom() {
    _statisticBloc.add(DetectByCameraCustomEvent(
        query: DetectByCameraCustomQuery(
            camera: _selectedCam ?? firstCam,
            date: _selectedDate ?? latestDate,
            timeFrom: _startTimeCam ?? latestStartTime,
            timeTo: _endTimeCam ?? latestEndTime)));
  }

  void _onFetchByDate() {
    _statisticBloc.add(
      DetectByDateEvent(
        query: DetectByDateQuery(date: _selectedDate ?? latestDate),
      ),
    );
  }

  void _onDateChanged(String? value) {
    if (value != null) {
      setState(() {
        _selectedDate = value;
        _startTime =
            _startTimeDist = _startTimeCam = _datetimeBloc.state.timestamps
                .firstWhere(
                  (item) => item.date == value,
                )
                .time;

        _endTime = _endTimeDist = _endTimeCam = _datetimeBloc.state.timestamps
            .lastWhere(
              (item) => item.date == value,
            )
            .time;
      });
      _onFetchByDate();
      _onFetchCustom();
      _onFetchByDist(_selectedDistrict ?? firstDistrict, _selectedDate,
          _startTimeDist, _endTimeDist);
      _onFetchCustom();
      _onFetchByCamCustom();
    }
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

  void _submitFormCam() {
    if (_formKeyCam.currentState!.validate()) {
      _onFetchByCamCustom();
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
      cameraLineCtrl.capture()
    ]);

    final Uint8List? trackingImageBytes = results[0];
    final Uint8List? datePieImageBytes = results[1];
    final Uint8List? timeLineImageBytes = results[2];
    final Uint8List? timePieImageBytes = results[3];
    final Uint8List? regionImageBytes = results[4];
    final Uint8List? cameraBarImageBytes = results[5];
    final Uint8List? cameraPieImageBytes = results[6];
    final Uint8List? cameraLineImageBytes = results[7];

    final trackingData = _statisticBloc.state.trackingByDate;
    // final statByDateData = _statisticBloc.state.resultByDate;
    final statByTimeData = _statisticBloc.state.resultByCustom.district == null
        ? _statisticBloc.state.resultByDate
        : _statisticBloc.state.resultByCustom;
    final statByRegionData = _statisticBloc.state.resultByDistrict;
    final statByCamData = _statisticBloc.state.resultByCamera;
    final statByCamCustomData = _statisticBloc.state.resultByCameraCustom;

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
    final startTimeCam = _startTimeCam ?? startTime;
    final endTimeCam = _endTimeCam ?? endTime;

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
                pw.SizedBox(height: AppSpacing.rem500.h),
                pw.Text(
                    "Statistics by Camera $camera, on $date, from $startTimeCam to $endTimeCam",
                    style: subHeadingStyle),
                pw.SizedBox(height: AppSpacing.rem500.h),
                pw.Image(pw.MemoryImage(cameraLineImageBytes!)),
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
                    ...statByCamCustomData.details!.map((e) => [
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
            latestStartTime = dateState.timestamps
                .firstWhere(
                  (item) => item.date == latestDate,
                )
                .time;

            latestEndTime = dateState.timestamps.last.time;
            firstDistrict = cameraState.districts.first;
            firstCam = cameraState.cameras.first.privateId ?? "";
            if (_selectedDate == null &&
                _statisticBloc.state.resultByDate.date == null) {
              _onFetchByDate();
              _onFetchByDist(
                  firstDistrict, latestDate, latestStartTime, latestEndTime);
              _onFetchByCam();
              _onFetchByCamCustom();
            }
          }

          return BlocBuilder<StatisticBloc, StatisticState>(
              builder: (context, statisticState) {
            final hasStatisticData = statisticState.resultByDate.date != null &&
                statisticState.resultByDistrict.date != null &&
                statisticState.resultByCamera.details != null &&
                statisticState.resultByCameraCustom.date != null;
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
              StatisticBarChart(
                  isDownloadable: true,
                  controller: trackingCtrl,
                  filename: "tracking.png",
                  data: _statisticBloc.state.trackingByDate,
                  maxY: double.parse(
                          findMax(_statisticBloc.state.trackingByDate)) +
                      10,
                  intervalY: ((double.parse(findMax(
                                  _statisticBloc.state.trackingByDate)) +
                              10) /
                          12)
                      .toPrecision(0)),
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
                  StatisticPieChart(
                    controller: datePieCtrl,
                    isDownloadable: true,
                    filename: "stat_by_date.png",
                    detectResult: _statisticBloc.state.resultByDate,
                    showTitle: true,
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
                    StatisticLineChart(
                      controller: timeLineCtrl,
                      isDownloadable: true,
                      filename: "stat_by_time(line).png",
                      maxY: double.parse(findMax(
                              _statisticBloc.state.resultByCustom.details ??
                                  _statisticBloc.state.resultByDate.details ??
                                  [])) +
                          10,
                      intervalY: ((double.parse(findMax(_statisticBloc
                                          .state.resultByCustom.details ??
                                      _statisticBloc
                                          .state.resultByDate.details ??
                                      [])) +
                                  10) /
                              12)
                          .toPrecision(0),
                      datas: _statisticBloc.state.resultByCustom.details ??
                          _statisticBloc.state.resultByDate.details ??
                          [],
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
                        child: StatisticPieChart(
                          isDownloadable: true,
                          controller: timePieCtrl,
                          filename: "stat_by_time(pie).png",
                          radius: 150,
                          showTitle: false,
                          detectResult:
                              _statisticBloc.state.resultByCustom.date == null
                                  ? _statisticBloc.state.resultByDate
                                  : _statisticBloc.state.resultByCustom,
                        ),
                      ),
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
                  StatisticLineChart(
                    controller: regionLineCtrl,
                    isDownloadable: true,
                    filename: "stat_by_region.png",
                    maxY: double.parse(findMax(
                            _statisticBloc.state.resultByDistrict.details ??
                                [])) +
                        10,
                    intervalY: ((double.parse(findMax(_statisticBloc
                                        .state.resultByDistrict.details ??
                                    [])) +
                                10) /
                            12)
                        .toPrecision(0),
                    datas: _statisticBloc.state.resultByDistrict.details ?? [],
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
                                  _onFetchByCam(),
                                  _onFetchByCamCustom()
                                })),
                  ],
                ),
                StatisticBarChartNoAnimation(
                  controller: cameraBarCtrl,
                  isDownloadable: true,
                  filename: "stat_by_cam(bar)",
                  data: _statisticBloc.state.resultByCamera.details,
                  maxY: double.parse(findMax(
                          _statisticBloc.state.resultByCamera.details ?? [])) +
                      10,
                  intervalY: 50,
                ),
                Row(
                  children: [
                    Expanded(
                      child: StatisticPieChart2(
                        controller: cameraPieCtrl,
                        isDownloadable: true,
                        filename: "stat_by_cam(pie).png",
                        data: _statisticBloc.state.resultByCamera,
                      ),
                    ),
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
                          "${tr('Common.max')}: ${_statisticBloc.state.resultByCamera.numberOfMotorcycle} ${tr('Common.motorcycles')}",
                      textColor: colors.buttonPrimaryBackground,
                    )
                  ],
                ),
                Form(
                  key: _formKeyCam,
                  child: Row(
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
                        value: _startTimeCam ?? latestStartTime,
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
                            _startTimeCam = value;
                          });
                        },
                        validator: (value) => TimeValidators.validateStart(
                          value,
                          _endTimeCam,
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
                            _startTimeCam,
                            value,
                            tr: tr,
                          ),
                          value: _endTimeCam ?? latestEndTime,
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
                              _endTimeCam = value;
                            });
                          },
                        ),
                      ),
                      CommonPrimaryButton(
                        text: tr('Common.ok'),
                        onPressed: _submitFormCam,
                      )
                    ],
                  ),
                ),
                StatisticLineChart(
                  controller: cameraLineCtrl,
                  isDownloadable: true,
                  filename: "stat_by_cam_in_day.png",
                  maxY: double.parse(findMax(
                          _statisticBloc.state.resultByCameraCustom.details ??
                              [])) +
                      10,
                  intervalY: ((double.parse(findMax(_statisticBloc
                                          .state.resultByCameraCustom.details ??
                                      [])) +
                                  10) /
                              12) >
                          1
                      ? ((double.parse(findMax(_statisticBloc
                                          .state.resultByCameraCustom.details ??
                                      [])) +
                                  10) /
                              12)
                          .toPrecision(0)
                      : 1,
                  datas:
                      _statisticBloc.state.resultByCameraCustom.details ?? [],
                ),
              ]),
              _isExporting
                  ? Center(
                      child: CommonText(tr('Common.exporting')),
                    )
                  : CommonPrimaryButton(
                      text: tr('Common.download_export'),
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
