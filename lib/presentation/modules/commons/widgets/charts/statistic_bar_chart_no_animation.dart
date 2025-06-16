import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_save_img_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/shareds/utils/app_utils.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screenshot/screenshot.dart';

class StatisticBarChartNoAnimation extends StatefulWidget {
  final ScreenshotController controller;
  final String? filename;
  final bool isDownloadable;
  final List<ResultDetail>? data;
  final double maxY;
  final double intervalY;
  const StatisticBarChartNoAnimation(
      {super.key,
      required this.data,
      required this.maxY,
      required this.intervalY,
      required this.controller,
      required this.isDownloadable,
      this.filename});

  @override
  State<StatefulWidget> createState() => StatisticBarChartNoAnimationState();
}

class StatisticBarChartNoAnimationState
    extends State<StatisticBarChartNoAnimation> {
  final double width = 7;
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
  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
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

  @override
  Widget build(BuildContext context) {
    final appColors = IAppColor.watch(context);
    final barGroups = List<BarChartGroupData>.generate(
      widget.data!.length,
      (index) => makeGroupData(index),
    );

    final items = barGroups;

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;

    return Stack(
      children: [
        Screenshot(
          controller: widget.controller,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: appColors.backgroundApp,
              child: Column(
                spacing: AppSpacing.rem600.h,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
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
                  Expanded(
                    child: BarChart(
                      BarChartData(
                        maxY: widget.maxY,
                        barTouchData: BarTouchData(
                          touchTooltipData: BarTouchTooltipData(
                            getTooltipColor: ((group) {
                              return Colors.grey.withValues(alpha: 0.5);
                            }),
                            getTooltipItem: (group, groupIndex, rod, rodIndex) {
                              String label =
                                  widget.data![groupIndex].date ?? "";

                              return BarTooltipItem(
                                '$label\n',
                                const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: (rod.toY).toString(),
                                    style: const TextStyle(
                                      color: Colors
                                          .white, //widget.touchedBarColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          touchCallback: (FlTouchEvent event, response) {
                            if (response == null || response.spot == null) {
                              setState(() {
                                touchedGroupIndex = -1;
                                showingBarGroups = List.of(rawBarGroups);
                              });
                              return;
                            }

                            touchedGroupIndex =
                                response.spot!.touchedBarGroupIndex;

                            setState(() {
                              if (!event.isInterestedForInteractions) {
                                touchedGroupIndex = -1;
                                showingBarGroups = List.of(rawBarGroups);
                                return;
                              }
                              showingBarGroups = List.of(rawBarGroups);
                              if (touchedGroupIndex != -1) {
                                var sum = 0.0;
                                for (final rod
                                    in showingBarGroups[touchedGroupIndex]
                                        .barRods) {
                                  sum += rod.toY;
                                }
                                final avg = sum /
                                    showingBarGroups[touchedGroupIndex]
                                        .barRods
                                        .length;

                                showingBarGroups[touchedGroupIndex] =
                                    showingBarGroups[touchedGroupIndex]
                                        .copyWith(
                                  barRods: showingBarGroups[touchedGroupIndex]
                                      .barRods
                                      .map((rod) {
                                    return rod.copyWith(
                                        toY: avg,
                                        color: appColors.menuBackground);
                                  }).toList(),
                                );
                              }
                            });
                          },
                        ),
                        titlesData: FlTitlesData(
                          show: true,
                          rightTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          topTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: bottomTitles,
                              reservedSize: 50,
                            ),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 100,
                              interval: widget.intervalY,
                              getTitlesWidget: leftTitles,
                            ),
                          ),
                        ),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        barGroups: showingBarGroups,
                        gridData: const FlGridData(show: false),
                      ),
                    ),
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

  Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff7589a2),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );

    return SideTitleWidget(
      meta: meta,
      space: 0,
      child: Text(value.toString(), style: style),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final Widget text = Text(
      widget.data![value.toInt()].date ?? "Date",
      style: const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );

    return SideTitleWidget(
      meta: meta,
      space: 16, //margin top
      child: text,
    );
  }

  BarChartGroupData makeGroupData(int x) {
    const keys = [
      "numberOfBicycle",
      "numberOfMotorcycle",
      "numberOfCar",
      "numberOfVan",
      "numberOfTruck",
      "numberOfBus",
      "numberOfFireTruck",
      "numberOfContainer"
    ];
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: keys.map((key) {
        String? value;
        Color? colorBar;
        switch (key) {
          case "numberOfBicycle":
            value = widget.data![x].numberOfBicycle;
            colorBar = colors[0];
            break;
          case "numberOfMotorcycle":
            value = widget.data![x].numberOfMotorcycle;
            colorBar = colors[1];
            break;
          case "numberOfCar":
            value = widget.data![x].numberOfCar;
            colorBar = colors[2];
            break;
          case "numberOfVan":
            value = widget.data![x].numberOfVan;
            colorBar = colors[3];
            break;
          case "numberOfTruck":
            value = widget.data![x].numberOfTruck;
            colorBar = colors[4];
            break;
          case "numberOfBus":
            value = widget.data![x].numberOfBus;
            colorBar = colors[5];
            break;
          case "numberOfFireTruck":
            value = widget.data![x].numberOfFireTruck;
            colorBar = colors[6];
            break;
          case "numberOfContainer":
            value = widget.data![x].numberOfContainer;
            colorBar = colors[7];
            break;
          default:
            value = "0";
        }

        return BarChartRodData(
          toY: double.parse(value ?? "0"),
          color: colorBar,
          width: width,
        );
      }).toList(),
    );
  }

  // BarChartGroupData makeGroupData(int x, double y1, double y2) {
  //   return BarChartGroupData(
  //     barsSpace: 4,
  //     x: x,
  //     barRods: [
  //       BarChartRodData(
  //         toY: y1,
  //         color: widget.leftBarColor,
  //         width: width,
  //       ),
  //       BarChartRodData(
  //         toY: y2,
  //         color: widget.rightBarColor,
  //         width: width,
  //       ),
  //     ],
  //   );
  // }

  Widget makeTransactionsIcon() {
    const width = 4.5;
    const space = 3.5;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: width,
          height: 10,
          color: Colors.white.withValues(alpha: 0.4),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withValues(alpha: 0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 42,
          color: Colors.white.withValues(alpha: 1),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withValues(alpha: 0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 10,
          color: Colors.white.withValues(alpha: 0.4),
        ),
      ],
    );
  }
}
