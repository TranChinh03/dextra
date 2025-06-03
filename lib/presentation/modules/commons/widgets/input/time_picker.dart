import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PickTimeButton extends StatefulWidget {
  final Function(TimeOfDay) onTimeSelected;

  const PickTimeButton({super.key, required this.onTimeSelected});

  @override
  State<PickTimeButton> createState() => _PickTimeButtonState();
}

class _PickTimeButtonState extends State<PickTimeButton> {
  TimeOfDay? _selectedTime;

  String _formatTime(TimeOfDay? time) {
    if (time == null) return tr('Common.select_time');

    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    return DateFormat('HH:mm:ss').format(dt);
  }

  Future<void> _pickTime() async {
    final TimeOfDay now = TimeOfDay.now();
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? now,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
      widget.onTimeSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _pickTime,
      child: Text(
        _selectedTime == null ? "Pick a time" : _formatTime(_selectedTime!),
      ),
    );
  }
}
