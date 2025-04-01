import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String? text;
  final InlineSpan? textSpan;
  final TextAlign? align;
  final TextStyle? style;
  final TextOverflow? overFlow;
  final int? maxLines;

  const CommonText(
    this.text, {
    super.key,
    this.align,
    this.style,
    this.overFlow,
    this.maxLines,
  }) : textSpan = null;

  const CommonText.rich(
    this.textSpan, {
    super.key,
    this.align,
    this.style,
    this.overFlow,
    this.maxLines,
  }) : text = null;

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);
    final defaultStyle = TextStyle(
      fontSize: AppFontSize.md,
      color: colors.textPrimaryColor,
      fontWeight: AppFontWeight.regular,
    );

    return Text.rich(
      textSpan ?? TextSpan(text: text, style: style ?? defaultStyle),
      textAlign: align,
      overflow: overFlow,
      maxLines: maxLines,
      style: style ?? defaultStyle,
    );
  }
}
