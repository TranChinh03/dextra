import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/app_colors.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/indicator.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatisticPieChart2 extends StatefulWidget {
  final StatisticResult data;
  const StatisticPieChart2({super.key, required this.data});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State<StatisticPieChart2> {
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
      'Bicycle': widget.data.numberOfBicycle ?? "0",
      'Motorcycle': widget.data.numberOfMotorcycle ?? "0",
      'Car': widget.data.numberOfCar ?? "0",
      'Van': widget.data.numberOfVan ?? "0",
      'Truck': widget.data.numberOfTruck ?? "0",
      'Bus': widget.data.numberOfBus ?? "0",
      'Fire Truck': widget.data.numberOfFireTruck ?? "0",
      'Container': widget.data.numberOfContainer ?? "0",
    };
    return AspectRatio(
      aspectRatio: 1,
      child: Column(
        children: <Widget>[
          Expanded(
            child: AspectRatio(
              aspectRatio: 16 / 9,
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
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 100,
                    sections: showingSections()),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...vehicleData.keys.take(4).map((key) {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ...vehicleData.keys.skip(4).map((key) {
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

  String calculate(String a, String b) {
    final double num1 = double.parse(a);
    final double num2 = double.parse(b);
    return "${((num1 / num2) * 100).toStringAsFixed(0)} %";
  }

  List<PieChartSectionData> showingSections() {
    final vehicleData = {
      'Bicycle': widget.data.numberOfBicycle ?? "0",
      'Motorcycle': widget.data.numberOfMotorcycle ?? "0",
      'Car': widget.data.numberOfCar ?? "0",
      'Van': widget.data.numberOfVan ?? "0",
      'Truck': widget.data.numberOfTruck ?? "0",
      'Bus': widget.data.numberOfBus ?? "0",
      'Fire Truck': widget.data.numberOfFireTruck ?? "0",
      'Container': widget.data.numberOfContainer ?? "0",
    };
    return List.generate(vehicleData.length, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 160.0 : 150.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      return PieChartSectionData(
        color: colorsChart[i],
        value: double.parse(vehicleData.values.elementAt(i)),
        title: calculate(vehicleData.values.elementAt(i),
            widget.data.totalVehicles.toString()),
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: AppColors.mainTextColor1,
          shadows: shadows,
        ),
      );
    });
  }
}
