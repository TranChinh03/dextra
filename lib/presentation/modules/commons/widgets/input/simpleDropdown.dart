import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimpleDropdown extends StatefulWidget {
  final List<DropdownMenuItem<String>> itemsList;
  final String? value;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;

  const SimpleDropdown(
      {super.key,
      required this.itemsList,
      required this.onChanged,
      this.value,
      this.validator});

  @override
  State<SimpleDropdown> createState() => _SimpleDropdownState();
}

class _SimpleDropdownState extends State<SimpleDropdown> {
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
      value: widget.value,
      items: widget.itemsList,
      onChanged: (value) {
        widget.onChanged!(value!);
      },
      validator: widget.validator,
    );
  }
}
