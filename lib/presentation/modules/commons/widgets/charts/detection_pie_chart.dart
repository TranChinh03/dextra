import 'package:dextra/domain/entities/image_detect_result.dart';
import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetectionPieChart extends StatefulWidget {
  final ImageDetectResult? detectResult;
  const DetectionPieChart({super.key, this.detectResult});

  @override
  State<StatefulWidget> createState() => DetectionPieChartState();
}

class DetectionPieChartState extends State<DetectionPieChart> {
  int touchedIndex = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.detectResult == null) {
      return const SizedBox.shrink();
    }
    return AspectRatio(
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
                touchedIndex =
                    pieTouchResponse.touchedSection!.touchedSectionIndex;
              });
            },
          ),
          borderData: FlBorderData(
            show: false,
          ),
          sectionsSpace: 0,
          centerSpaceRadius: 0,
          sections: showingSections(),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    final vehicleData = {
      'Motorcycle': widget.detectResult?.numberOfMotorcycle ?? 0,
      'Bicycle': widget.detectResult?.numberOfBicycle ?? 0,
      'Car': widget.detectResult?.numberOfCar ?? 0,
      'Van': widget.detectResult?.numberOfVan ?? 0,
      'Truck': widget.detectResult?.numberOfTruck ?? 0,
      'Bus': widget.detectResult?.numberOfBus ?? 0,
      'Fire Truck': widget.detectResult?.numberOfFireTruck ?? 0,
      'Container': widget.detectResult?.numberOfContainer ?? 0,
    };

    final iconMap = {
      'Motorcycle': Assets.svg.motorcycleIcon,
      'Bicycle': Assets.svg.bicycleIcon,
      'Car': Assets.svg.carIcon,
      'Van': Assets.svg.vanIcon,
      'Truck': Assets.svg.truckIcon,
      'Bus': Assets.svg.busIcon,
      'Fire Truck': Assets.svg.firetruckIcon,
      'Container': Assets.svg.containerIcon,
    };

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

    final List<PieChartSectionData> sections = [];
    int index = 0;

    vehicleData.forEach((type, count) {
      if (count == 0) return;

      final isTouched = index == touchedIndex;
      final fontSize = isTouched ? AppFontSize.md : AppFontSize.sm;
      final radius = isTouched ? AppSpacing.rem2775 : AppSpacing.rem2350;
      final widgetSize = isTouched ? AppSpacing.rem600 : AppSpacing.rem500;
      final value = count.toDouble();

      sections.add(PieChartSectionData(
        color: colors[index % colors.length],
        value: value,
        title: '${(value).toInt()}',
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          shadows: const [Shadow(color: Colors.black, blurRadius: 2)],
        ),
        badgeWidget: _Badge(
          iconMap[type]!,
          size: widgetSize,
          borderColor: Colors.black,
        ),
        badgePositionPercentageOffset: .98,
      ));

      index++;
    });

    return sections;
  }
}

class _Badge extends StatelessWidget {
  const _Badge(
    this.svgAsset, {
    required this.size,
    required this.borderColor,
  });
  final String svgAsset;
  final double size;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withValues(alpha: .5),
            offset: const Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      ),
      padding: EdgeInsets.all(size * .15),
      child: Center(
        child: SvgPicture.asset(
          svgAsset,
        ),
      ),
    );
  }
}
