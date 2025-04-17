import 'package:dextra/domain/entities/camera_settings.dart';
import 'package:dextra/domain/entities/models.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/configtabs/general.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simpleDropdown.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CameraConfiguration extends StatefulWidget {
  const CameraConfiguration({super.key});

  @override
  State<CameraConfiguration> createState() => _CameraConfigurationState();
}

class _CameraConfigurationState extends State<CameraConfiguration> {
  final List<Models> _models = [
    Models(value: 'v7', name: "Yolo v7"),
    Models(value: 'v8', name: "Yolo v8"),
    Models(value: 'v9', name: "Yolo v9"),
    Models(value: 'v10', name: "Yolo v10"),
  ];
  Future<CameraSettings> loadUserSettings() async {
    await Future.delayed(Duration(milliseconds: 500));
    return CameraSettings(
      interval: '7',
      model: "yolov10",
      threshold: '7',
    );
  }

  late CameraSettings _settings;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _initializeSettings();
  }

  Future<void> _initializeSettings() async {
    final settings = await loadUserSettings();
    setState(() {
      _settings = settings;
      _isLoading = false;
    });
  }

  void _updateInterval(String? value) {
    if (value != null) {
      setState(() {
        _settings.interval = value;
      });
    }
  }

  void _updatModel(String? value) {
    if (value != null) {
      setState(() {
        _settings.interval = value;
      });
    }
  }

  void _updateThreshold(String? value) {
    if (value != null) {
      setState(() {
        _settings.interval = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    if (_isLoading) return Center(child: CircularProgressIndicator());
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.rem600.w),
      child: Column(
        spacing: AppSpacing.rem600.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                "Image Retrieval Interval",
                style: TextStyle(
                    fontWeight: AppFontWeight.bold, fontSize: AppFontSize.xxxl),
              ),
              SizedBox(
                width: AppSpacing.rem4150.w,
                child: SimpleDropdown(itemsList: [
                  DropdownMenuItem(
                      value: '12', child: Text('Every 12 seconds')),
                  DropdownMenuItem(
                      value: '24', child: Text('Every 24 seconds')),
                  DropdownMenuItem(
                      value: '30', child: Text('Every 30 seconds')),
                  DropdownMenuItem(
                      value: '48', child: Text('Every 48 seconds')),
                  DropdownMenuItem(value: '1', child: Text('Every 1 minute')),
                ], onChanged: _updateInterval),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                "Model",
                style: TextStyle(
                    fontWeight: AppFontWeight.bold, fontSize: AppFontSize.xxxl),
              ),
              SizedBox(
                width: AppSpacing.rem5000.w,
                child: SimpleDropdown(
                    itemsList: _models.map((option) {
                      return DropdownMenuItem<String>(
                        value: option.value,
                        child: Text(option.name),
                      );
                    }).toList(),
                    onChanged: _updatModel),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                "Threshold",
                style: TextStyle(
                    fontWeight: AppFontWeight.bold, fontSize: AppFontSize.xxxl),
              ),
              SizedBox(
                width: AppSpacing.rem2775.w,
                child: SimpleDropdown(itemsList: [
                  DropdownMenuItem(value: '0.5', child: Text('0.5')),
                  DropdownMenuItem(value: '0.7', child: Text('0.7')),
                  DropdownMenuItem(value: '0.9', child: Text('0.9')),
                ], onChanged: _updateThreshold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
