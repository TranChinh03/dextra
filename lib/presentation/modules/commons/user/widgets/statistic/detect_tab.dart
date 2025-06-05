import 'dart:typed_data';

import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/entities/image_detect_result.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/bloc/detection/detection_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/detection_pie_chart.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
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

  // final TextStyle _normalText = TextStyle(
  //   fontSize: AppFontSize.xl,
  //   fontWeight: AppFontWeight.semiBold,
  // );

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
                  "Upload an image",
                  style: TextStyle(
                      fontSize: AppFontSize.lg, fontWeight: AppFontWeight.bold),
                ),
                Row(
                  spacing: AppSpacing.rem600.w,
                  children: [
                    CommonPrimaryButton(
                      text: "Select Image from Device",
                      onPressed: _pickImage,
                    ),
                    _pickedImage == null
                        ? SizedBox()
                        : CommonPrimaryButton(
                            text: "Detect",
                            onPressed: _onDetectButtonPressed,
                          ),
                  ],
                ),
                _pickedImage == null
                    ? Text('No image selected.')
                    : FutureBuilder<Uint8List>(
                        future: _pickedImage!.readAsBytes(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return Text('Error loading image');
                          } else if (snapshot.hasData) {
                            return Center(
                              child: Image.memory(
                                snapshot.data!,
                                width: AppSpacing.rem9999.w,
                                fit: BoxFit.cover,
                              ),
                            );
                          } else {
                            return Text('No image data');
                          }
                        },
                      ),
                DetectionPieChart(detectResult: state.detectResult),
                if (state.detectedImage != null)
                  Center(
                    child: Image.memory(
                      state.detectedImage!,
                      width: AppSpacing.rem9999.w,
                      fit: BoxFit.cover,
                    ),
                  ),
              ]);
        },
      ),
    );
  }
}
