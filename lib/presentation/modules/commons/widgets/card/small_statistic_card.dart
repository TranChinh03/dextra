import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallStatisticCard extends StatelessWidget {
  final String? title;
  final String? value;
  const SmallStatisticCard({super.key, this.title, this.value});

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return Card(
      color: colors.cardBackground,
      child: Padding(
        padding: EdgeInsets.all(AppSpacing.rem125.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CommonText(
              title ?? 'Statistic Title',
              style: TextStyle(
                  fontWeight: AppFontWeight.bold,
                  fontSize: AppFontSize.md,
                  color: colors.primary),
            ),
            SizedBox(height: 8),
            CommonText(value ?? "Statistic Value",
                style: TextStyle(fontSize: 14, color: colors.primary)),
          ],
        ),
      ),
    );
  }
}
