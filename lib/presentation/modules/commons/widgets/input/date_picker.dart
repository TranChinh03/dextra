import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PickDateButton extends StatefulWidget {
  final Function(DateTime) onDateSelected;

  const PickDateButton({super.key, required this.onDateSelected});

  @override
  State<PickDateButton> createState() => _PickDateButtonState();
}

class _PickDateButtonState extends State<PickDateButton> {
  DateTime? _selectedDate;

  Future<void> _pickDate() async {
    final DateTime now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? now,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),

      // selectableDayPredicate: (DateTime day) {
      //   return day.isAfter(now.subtract(Duration(days: 1)));
      // },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
      widget.onDateSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _pickDate,
      child: Text(
        _selectedDate == null
            ? "Pick a date"
            : DateFormat('yyyy-MM-dd').format(_selectedDate!),
      ),
    );
  }
}
