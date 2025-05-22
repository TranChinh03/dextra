import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DateTimePicker extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final DateTime? date;
  final TimeOfDay? time;
  final bool isDate;

  const DateTimePicker(
      {super.key,
      required this.label,
      required this.onPressed,
      this.time,
      this.date,
      required this.isDate});

  String _formatDate(DateTime? date) {
    return date == null
        ? tr('Common.select_date')
        : DateFormat('dd MMM yyyy').format(date);
  }

  String _formatTime(TimeOfDay? time) {
    if (time == null) return tr('Common.select_time');

    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    return DateFormat('HH:mm').format(dt);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: CommonText(
        isDate
            ? '$label: ${_formatDate(date)}'
            : '$label: ${_formatTime(time)}',
        style: TextStyle(fontSize: AppFontSize.xs),
      ),
    );
  }
}
