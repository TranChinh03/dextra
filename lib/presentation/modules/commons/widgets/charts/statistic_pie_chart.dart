import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/app_colors.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/indicator.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatisticPieChart extends StatefulWidget {
  final double? radius;
  final bool showTitle;
  final StatisticResult? detectResult;

  const StatisticPieChart(
      {super.key, this.detectResult, this.radius, required this.showTitle});

  @override
  State<StatefulWidget> createState() => StatisticPieChartState();
}

class StatisticPieChartState extends State<StatisticPieChart> {
  int touchedIndex = -1;
  final colorsChart = [
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.green,
    Colors.orange,
    Colors.pink,
    Colors.red,
    Colors.cyan,
  ];
  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);
    final vehicleData = {
      'Bicycle': widget.detectResult?.numberOfBicycle ?? "0",
      'Motorcycle': widget.detectResult?.numberOfMotorcycle ?? "0",
      'Car': widget.detectResult?.numberOfCar ?? "0",
      'Van': widget.detectResult?.numberOfVan ?? "0",
      'Truck': widget.detectResult?.numberOfTruck ?? "0",
      'Bus': widget.detectResult?.numberOfBus ?? "0",
      'Fire Truck': widget.detectResult?.numberOfFireTruck ?? "0",
      'Container': widget.detectResult?.numberOfContainer ?? "0",
    };
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Column(
        children: <Widget>[
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  startDegreeOffset: 180,
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 1,
                  centerSpaceRadius: 0,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...vehicleData.keys.map((key) {
                final index = vehicleData.keys.toList().indexOf(key);
                return Indicator(
                  color: colorsChart[index % colorsChart.length],
                  text: key,
                  isSquare: false,
                  size: touchedIndex == index ? 18 : 16,
                  textColor:
                      touchedIndex == index ? colors.primary : colors.textMuted,
                );
              }),
            ],
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    final vehicleData = {
      'Bicycle': widget.detectResult!.numberOfBicycle ?? "0",
      'Motorcycle': widget.detectResult?.numberOfMotorcycle ?? "0",
      'Car': widget.detectResult?.numberOfCar ?? "0",
      'Van': widget.detectResult?.numberOfVan ?? "0",
      'Truck': widget.detectResult?.numberOfTruck ?? "0",
      'Bus': widget.detectResult?.numberOfBus ?? "0",
      'Fire Truck': widget.detectResult?.numberOfFireTruck ?? "0",
      'Container': widget.detectResult?.numberOfContainer ?? "0",
    };

    return List.generate(vehicleData.length, (i) {
      final isTouched = i == touchedIndex;
      return PieChartSectionData(
        badgeWidget: isTouched && !widget.showTitle
            ? CommonText(
                vehicleData.values.elementAt(i),
                style: TextStyle(
                  fontSize: AppFontSize.sm,
                  color: AppColors.contentColorWhite,
                  background: Paint()
                    ..color =
                        AppColors.contentColorBlack.withValues(alpha: 0.3),
                ),
              )
            : null,
        showTitle: widget.showTitle,
        color: colorsChart[i % colorsChart.length],
        value: double.parse(vehicleData.values.elementAt(i)),
        title: vehicleData.values.elementAt(i),
        radius: widget.radius ?? 250 + i * 5,
        titlePositionPercentageOffset: 0.55,
        borderSide: isTouched
            ? const BorderSide(color: AppColors.contentColorWhite, width: 6)
            : BorderSide(
                color: AppColors.contentColorWhite.withValues(alpha: 0)),
      );
    });
  }
}
