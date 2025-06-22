import 'package:collection/collection.dart';
import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_save_img_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/app_colors.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/shareds/utils/app_utils.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screenshot/screenshot.dart';

class _LineChart extends StatelessWidget {
  final List<ResultDetail> datas;
  final double maxY;
  final double intervalY;
  _LineChart({
    required this.datas,
    required this.maxY,
    required this.intervalY,
  });

  @override
  Widget build(BuildContext context) {
    return LineChart(
      trafficData,
      duration: const Duration(milliseconds: 250),
    );
  }

  List<FlSpot> getSpots(String field) {
    return datas.asMap().entries.map((entry) {
      final x = entry.key.toDouble();
      String? value;
      switch (field) {
        case "numberOfBicycle":
          value = entry.value.numberOfBicycle;
          break;
        case "numberOfMotorcycle":
          value = entry.value.numberOfMotorcycle;
          break;
        case "numberOfCar":
          value = entry.value.numberOfCar;
          break;
        case "numberOfVan":
          value = entry.value.numberOfVan;
          break;
        case "numberOfTruck":
          value = entry.value.numberOfTruck;
          break;
        case "numberOfBus":
          value = entry.value.numberOfBus;
          break;
        case "numberOfFireTruck":
          value = entry.value.numberOfFireTruck;
          break;
        case "numberOfContainer":
          value = entry.value.numberOfContainer;
          break;
        default:
          value = "0";
      }

      return FlSpot(x, double.tryParse(value ?? "0") ?? 0);
    }).toList();
  }

  List<FlSpot> get spots1 => getSpots("numberOfBicycle");
  List<FlSpot> get spots2 => getSpots("numberOfMotorcycle");
  List<FlSpot> get spots3 => getSpots("numberOfCar");
  List<FlSpot> get spots4 => getSpots("numberOfVan");
  List<FlSpot> get spots5 => getSpots("numberOfTruck");
  List<FlSpot> get spots6 => getSpots("numberOfBus");
  List<FlSpot> get spots7 => getSpots("numberOfFireTruck");
  List<FlSpot> get spots8 => getSpots("numberOfContainer");

  LineChartData get trafficData => LineChartData(
      lineTouchData: lineTouchData1,
      gridData: gridData,
      titlesData: titlesData1,
      borderData: borderData,
      lineBarsData: lineBarsData1,
      minX: 0,
      maxX: datas.length.toDouble(),
      maxY: maxY,
      minY: 0,
      clipData: FlClipData.vertical());

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (touchedSpot) =>
              Colors.blueGrey.withValues(alpha: 0.5),
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    final int index = value.toInt();
    final String label = index.toString();

    return SideTitleWidget(
      space: 25,
      meta: meta,
      child: Text(
        label,
        style: style,
        textAlign: TextAlign.center,
      ),
    );
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: intervalY,
        reservedSize: 100,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final style = TextStyle(
      fontWeight: AppFontWeight.bold,
      fontSize: AppFontSize.md,
    );
    final int index = value.toInt();
    final String? label = (index >= 0 && index < datas.length)
        ? datas[index].time?.substring(0, 5)
        : '';
    return SideTitleWidget(
      meta: meta,
      space: 10,
      child: Text(label ?? "", style: style),
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 40,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => const FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: Border(
          bottom: BorderSide(
              color: AppColors.primary.withValues(alpha: 0.2), width: 4),
          left: const BorderSide(color: Colors.transparent),
          right: const BorderSide(color: Colors.transparent),
          top: const BorderSide(color: Colors.transparent),
        ),
      );
  LineChartBarData buildLineChartBarData({
    required Color color,
    required List<FlSpot> spots,
    bool showBelowBar = false,
  }) {
    return LineChartBarData(
      isCurved: true,
      color: color,
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: const FlDotData(show: false),
      belowBarData: BarAreaData(
        show: showBelowBar,
        color: showBelowBar ? color.withAlpha(50) : null,
      ),
      spots: spots,
    );
  }

  List<List<FlSpot>> get allSpots => [
        spots1,
        spots2,
        spots3,
        spots4,
        spots5,
        spots6,
        spots7,
        spots8,
      ];

  List<LineChartBarData> get lineBarsData1 => List.generate(
        colors.length,
        (index) => buildLineChartBarData(
          color: colors[index],
          spots: allSpots[index],
        ),
      );
  final colors = [
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.green,
    Colors.orange,
    Colors.pink,
    Colors.red,
    Colors.cyan,
  ];
}

class StatisticLineChart extends StatefulWidget {
  final ScreenshotController controller;
  final String? filename;
  final bool isDownloadable;
  final List<ResultDetail> datas;
  final double maxY;
  final double intervalY;
  const StatisticLineChart(
      {super.key,
      required this.datas,
      required this.maxY,
      required this.intervalY,
      required this.controller,
      this.filename,
      required this.isDownloadable});

  @override
  State<StatefulWidget> createState() => StatisticLineChartState();
}

class StatisticLineChartState extends State<StatisticLineChart> {
  late bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    final appColors = IAppColor.watch(context);

    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Screenshot(
            controller: widget.controller,
            child: Container(
              color: appColors.backgroundApp,
              padding: EdgeInsets.symmetric(vertical: AppSpacing.rem600.h),
              child: Column(
                spacing: AppSpacing.rem600.h,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "${tr('Common.statistic_on')} ${widget.datas.first.date}",
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 16, left: 6),
                    child: _LineChart(
                      maxY: widget.maxY,
                      intervalY: widget.intervalY,
                      datas: widget.datas.length > 12
                          ? widget.datas
                              .whereIndexed((i, _) => i % 4 == 0)
                              .toList()
                          : widget.datas,
                    ),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: AppSpacing.rem250.w,
                    children: List.generate(
                        colors.length,
                        (index) => _buildLegend(
                              color: colors[index],
                              text: labels[index],
                            )),
                  ),
                ],
              ),
            ),
          ),
        ),
        widget.isDownloadable
            ? Align(
                alignment: Alignment.topRight,
                child: CommonSaveImgButton(
                  onPressed: () {
                    AppUtils.downloadWidgetAsImage(
                      controller: widget.controller,
                      filename: widget.filename ?? "chart.png",
                    );
                  },
                ),
              )
            : SizedBox()
      ],
    );
  }

  Widget _buildLegend({required Color color, required String text}) {
    return Row(
      spacing: AppSpacing.rem125.w,
      children: [
        Container(
          width: AppSpacing.rem300.w,
          height: AppSpacing.rem150.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppBorderRadius.spacing2xl),
            color: color,
          ),
        ),
        CommonText(text, style: TextStyle(fontSize: AppFontSize.sm)),
      ],
    );
  }

  final labels = [
    "Bicycle",
    "Motorcycle",
    "Car",
    "Van",
    "Truck",
    "Bus",
    "FireTruck",
    "Container"
  ];
  final colors = [
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.green,
    Colors.orange,
    Colors.pink,
    Colors.red,
    Colors.cyan,
  ];
}
