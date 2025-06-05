import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/app_colors.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/legend_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatisticBarChart2 extends StatelessWidget {
  final List<ResultDetail> data;
  final double maxY;

  StatisticBarChart2({super.key, required this.data, required this.maxY});

  final pilateColor = AppColors.contentColorPurple;
  final cyclingColor = AppColors.contentColorCyan;
  final quickWorkoutColor = AppColors.contentColorBlue;
  final betweenSpace = 0.2;
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

  BarChartGroupData generateGroupData(
    int x,
    ResultDetail detail,
  ) {
    final vehicleData = [
      detail.numberOfBicycle,
      detail.numberOfMotorcycle,
      detail.numberOfCar,
      detail.numberOfVan,
      detail.numberOfTruck,
      detail.numberOfBus,
      detail.numberOfFireTruck,
      detail.numberOfContainer,
    ].map((e) => double.tryParse(e ?? "0") ?? 0).toList();

    double start = 0;
    final rods = List.generate(vehicleData.length, (i) {
      final to = start + vehicleData[i];
      final rod = BarChartRodData(
        fromY: start,
        toY: to,
        color: colors[i % colors.length],
        width: 5,
      );
      start = to;
      return rod;
    });

    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barRods: rods,
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    String text = data[value.toInt()].date ?? "";

    return SideTitleWidget(
      meta: meta,
      child: Text(text, style: style),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Statistic from ${data.first.date} to ${data.last.date}',
            style: TextStyle(
              color: AppColors.contentColorBlue,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          LegendsListWidget(
            legends: List.generate(data.length, (i) {
              return Legend(labels[i], colors[i]);
            }),
          ),
          const SizedBox(height: 14),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceBetween,
                titlesData: FlTitlesData(
                  leftTitles: const AxisTitles(),
                  rightTitles: const AxisTitles(),
                  topTitles: const AxisTitles(),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: bottomTitles,
                      reservedSize: 20,
                    ),
                  ),
                ),
                barTouchData: BarTouchData(enabled: false),
                borderData: FlBorderData(show: false),
                gridData: const FlGridData(show: false),
                barGroups: List.generate(
                  data.length,
                  (index) => generateGroupData(index, data[index]),
                ),
                maxY: maxY + (betweenSpace * 3),
                extraLinesData: ExtraLinesData(
                  horizontalLines: [
                    HorizontalLine(
                      y: 3.3,
                      color: pilateColor,
                      strokeWidth: 1,
                      dashArray: [20, 4],
                    ),
                    HorizontalLine(
                      y: 8,
                      color: quickWorkoutColor,
                      strokeWidth: 1,
                      dashArray: [20, 4],
                    ),
                    HorizontalLine(
                      y: 11,
                      color: cyclingColor,
                      strokeWidth: 1,
                      dashArray: [20, 4],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
