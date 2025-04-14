import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Simpledropdown extends StatefulWidget {
  final List<String> itemsList;
  final ValueChanged<String>? onChanged;
  const Simpledropdown(
      {super.key, required this.itemsList, required this.onChanged});

  @override
  State<Simpledropdown> createState() => _SimpledropdownState();
}

class _SimpledropdownState extends State<Simpledropdown> {
  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return DropdownButtonFormField<String>(
      iconEnabledColor: colors.menuActiveTextColor,
      style: TextStyle(
          color: colors.menuActiveTextColor,
          fontWeight: AppFontWeight.regular,
          fontSize: AppFontSize.xxl,
          overflow: TextOverflow.ellipsis),
      decoration: InputDecoration(
        fillColor: colors.primaryBannerBg,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.rem500, vertical: AppSpacing.rem250),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.rem350.w),
          borderSide: BorderSide.none,
        ),
      ),
      value: widget.itemsList.first,
      items: widget.itemsList.map((option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(option),
        );
      }).toList(),
      onChanged: (value) {
        widget.onChanged!(value!);
      },
    );
  }
}
