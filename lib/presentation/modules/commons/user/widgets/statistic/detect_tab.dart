import 'dart:typed_data';

import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/entities/image_detect_result.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/bloc/detection/detection_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/detection_pie_chart.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simple_dropdown.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class DetectTab extends StatefulWidget {
  const DetectTab({super.key});

  @override
  State<DetectTab> createState() => _DetectTabState();
}

class _DetectTabState extends State<DetectTab> {
  final _detectionBloc = getIt.get<DetectionBloc>();
  XFile? _pickedImage;
  final ImagePicker _picker = ImagePicker();
  String _threshold = '0.7';

  Future<void> _pickImage() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        setState(() {
          _pickedImage = image;
        });
      }
    } catch (e) {
      // print('Errors: $e');
    }
  }

  void _onDetectButtonPressed() {
    if (_pickedImage == null) {
      return;
    }
    _detectionBloc.add(ImageDetectEvent(_pickedImage!));
  }

  int sum(ImageDetectResult? detectResult) {
    if (detectResult == null || detectResult.detectAt == null) {
      return 0;
    }
    return detectResult.numberOfBicycle! +
        detectResult.numberOfMotorcycle! +
        detectResult.numberOfCar! +
        detectResult.numberOfVan! +
        detectResult.numberOfTruck! +
        detectResult.numberOfBus! +
        detectResult.numberOfFireTruck! +
        detectResult.numberOfContainer!;
  }

  void _updateThreshold(String? value) {
    if (value != null) {
      setState(() {
        _threshold = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _detectionBloc,
      child: BlocBuilder<DetectionBloc, DetectionState>(
        builder: (context, state) {
          if (state.detectionStatus == ApiStatus.loading) {
            return Center(child: CircularProgressIndicator());
          }
          // final totalVehicles = sum(state.detectResult);
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppSpacing.rem600.h,
              children: [
                Text(
                  tr('Common.upload_img'),
                  style: TextStyle(
                      fontSize: AppFontSize.lg, fontWeight: AppFontWeight.bold),
                ),
                Row(
                  spacing: AppSpacing.rem600.w,
                  children: [
                    CommonPrimaryButton(
                      text: tr('Common.select_img'),
                      onPressed: _pickImage,
                    ),
                    _pickedImage == null
                        ? SizedBox()
                        : CommonPrimaryButton(
                            text: tr('Common.detect'),
                            onPressed: _onDetectButtonPressed,
                          ),
                  ],
                ),
                Row(
                  spacing: AppSpacing.rem600.w,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CommonText(
                      tr('Common.threshold'),
                      style: TextStyle(
                          fontWeight: AppFontWeight.bold,
                          fontSize: AppFontSize.xxxl),
                    ),
                    SizedBox(
                      width: AppSpacing.rem2775.w,
                      child: SimpleDropdown(
                          value: _threshold,
                          itemsList: [
                            DropdownMenuItem(value: '0.5', child: Text('0.5')),
                            DropdownMenuItem(value: '0.7', child: Text('0.7')),
                            DropdownMenuItem(value: '0.9', child: Text('0.9')),
                          ],
                          onChanged: _updateThreshold),
                    ),
                  ],
                ),
                _pickedImage == null && state.detectedImage == null
                    ? Text(tr('Common.no_img'))
                    : FutureBuilder<Uint8List>(
                        future: _pickedImage!.readAsBytes(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return Text(tr('Common.err_loading'));
                          } else if (snapshot.hasData) {
                            return Center(
                              child: Image.memory(
                                snapshot.data!,
                                width: AppSpacing.rem9999.w,
                                fit: BoxFit.cover,
                              ),
                            );
                          } else {
                            return Text(tr('Common.no_img_date'));
                          }
                        },
                      ),
                if (state.detectedImage != null)
                  Center(
                    child: Image.memory(
                      state.detectedImage!,
                      width: AppSpacing.rem9999.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                Row(
                  children: [
                    DetectionPieChart(detectResult: state.detectResult),
                    // DataTable(
                    //   columns: const [
                    //     DataColumn(label: Text('Label')),
                    //     DataColumn(label: Text('Confidence')),
                    //     DataColumn(label: Text('BBox (x1, y1, x2, y2)')),
                    //   ],
                    //   rows: state.detectResult.d.map((item) {
                    //     return DataRow(cells: [
                    //       DataCell(Text(item['label'])),
                    //       DataCell(Text(
                    //           '${(item['confidence'] * 100).toStringAsFixed(1)}%')),
                    //       DataCell(Text(item['bbox'].join(', '))),
                    //     ]);
                    //   }).toList(),
                    // ),
                  ],
                ),
              ]);
        },
      ),
    );
  }
}
